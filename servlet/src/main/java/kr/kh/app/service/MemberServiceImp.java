package kr.kh.app.service;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.kh.app.dao.MemberDAO;
import kr.kh.app.model.vo.DiscussionRoomVO;
import kr.kh.app.model.vo.MemberVO;
import kr.kh.app.model.vo.Personality_typeVO;
import kr.kh.app.model.vo.QuestionVO;
import kr.kh.app.model.vo.TestVO;

public class MemberServiceImp implements MemberService {
	private MemberDAO memberDao;
	
	public MemberServiceImp() {
		String resource = "kr/kh/app/config/mybatis-config.xml";
		InputStream inputStream;
		SqlSession session;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			session = sessionFactory.openSession(true);
			memberDao = session.getMapper(MemberDAO.class);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private boolean checkRegex(String str, String regex) {
		if(str == null || regex == null) {
			return false;
		}
		return Pattern.matches(regex, str);
	}
	
	@Override
	public boolean signup(MemberVO member) {
		if(member == null) {
			return false;
		}
		if(!checkRegex(member.getMe_id(), "^[a-z0-9]{6,13}$")) {
			return false;
		}
		if(!checkRegex(member.getMe_pw(), "^[a-zA-Z0-9!@#$]{6,15}$")) {
			return false;
		}
		if(!checkRegex(member.getMe_email(), "^\\w{6,13}@\\w{4,8}.[a-z]{2,3}$")) {
			return false;
		}
		try {
			return memberDao.insertMember(member);
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean checkId(String me_id) {
		return memberDao.selectMember(me_id) == null;
	}

	@Override
	public String checkUser(MemberVO user) {
		String res = "";
		if(user == null) {
			res = "아이디를 입력하세요.";
			return res;
		}
		MemberVO user2 = memberDao.selectMember(user.getMe_id());
		if(user2 == null) {
			res = "없는 아이디입니다.";
			return res;
		}
		Date date = new Date(System.currentTimeMillis());
		if(user2.getMe_stopdate() != null && user2.getMe_stopdate().compareTo(date) > 0) {
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			format.format(user2.getMe_stopdate());
			res = "계정이 잠겼습니다. "+format.format(user2.getMe_stopdate())+"까지 서비스 이용이 불가능합니다.";
			return res;
		}
		if(!user2.getMe_pw().equals(user.getMe_pw())) {
			memberDao.updateMemberFail(user2, 1);
			int fail = user2.getMe_fail() + 1;
			if(fail < 3) {
				res = "비밀번호가 틀렸습니다. 3회 이상 틀릴시 계정이 잠깁니다.("+fail+"/3)";
			}else {
				int time = 60 * 30;
				Date stopdate = new Date(System.currentTimeMillis() + time * 1000);
				user2.setMe_stopdate(stopdate);
				user2.setMe_ms_name("기간 정지");
				memberDao.updateMemberStop(user2);
				res = "비밀번호가 틀렸습니다. 3회 이상 틀려서 계정이 30분동안 잠깁니다.("+fail+"/3)";
			}
			return res;
		}
		
		Date stopdate = null;
		user2.setMe_stopdate(stopdate);
		user2.setMe_ms_name("사용");
		memberDao.updateMemberFail(user2, 0);
		memberDao.updateMemberStop(user2);
		return res;
	}

	@Override
	public Cookie createCookie(MemberVO user, HttpServletRequest request) {
		if(user == null) {
			return null;
		}
		HttpSession session = request.getSession();
		//쿠키는 이름, 값, 만료시간, path가 필요
		String me_cookie = session.getId();
		//쿠키 이름이 AL, 값은 현재 세션 아이디값
		Cookie cookie = new Cookie("AL", me_cookie);
		cookie.setPath("/");
		int time = 60 * 60 * 24 * 7;
		cookie.setMaxAge(time);
		user.setMe_cookie(me_cookie);
		//만료시간은 현재 시간 + 1주일뒤
		Date date = new Date(System.currentTimeMillis() + time * 1000);
		user.setMe_limit(date);
		memberDao.updateMemberCookie(user);
		return cookie;
	}

	@Override
	public void updateMemberCookie(MemberVO user) {
		memberDao.updateMemberCookie(user);
	}
	
	@Override
	public MemberVO getMember(MemberVO user) {
		return memberDao.selectMember(user.getMe_id());
	}

	@Override
	public MemberVO getMemberBySid(String sid) {
		return memberDao.selectMemberBySid(sid);
	}

	@Override
	public boolean updateMemberPw(MemberVO user, String me_pw) {
		return memberDao.updateMemberPw(user, me_pw);
	}

	@Override
	public boolean updateMemberEmail(MemberVO user, String me_email) {
		return memberDao.updateMemberEmail(user, me_email);
	}

	@Override
	public boolean deleteMember(MemberVO user) {
		return memberDao.deleteMember(user);
	}
	
	@Override
	public List<Personality_typeVO> getPersonality_typeList() {
		return memberDao.selectPersonality_typeList();
	}

	@Override
	public Personality_typeVO getPersonality_type(String pt_code) {
		return memberDao.selectPersonality_type(pt_code);
	}

	@Override
	public boolean updatePersonality_type(Personality_typeVO pt) {
		if(pt == null) {
			return false;
		}
		return memberDao.updatePersonality_type(pt);
	}

	@Override
	public List<DiscussionRoomVO> getDiscussionRoomList() {
		return memberDao.selectDiscussionRoomList();
	}

	@Override
	public boolean insertDiscussionRoom(String dr_topic) {
		DiscussionRoomVO discussionRoom = new DiscussionRoomVO(dr_topic);
		return memberDao.insertDiscussionRoom(discussionRoom);
	}

	@Override
	public boolean deleteDiscussionRoom(int dr_num) {
		 return memberDao.deleteDiscussionRoom(dr_num);
	}

	@Override
	public List<QuestionVO> getQuestionList() {
		return memberDao.selectQuestionList();
	}

	@Override
	public boolean insertQuestion(QuestionVO qu) {
		if(qu == null) {
			return false;
		}
		List<QuestionVO> list = memberDao.selectQuestionList();
		boolean flag = false;
		for(int i = 0; i < list.size() - 1; i++) {
			if(list.get(i).getQu_num() + 1 != list.get(i+1).getQu_num()) {
				qu.setQu_num(list.get(i).getQu_num() + 1);
				flag = true;
				break;
			}
		}
		if(!flag) {
			qu.setQu_num(list.get(list.size() - 1).getQu_num() + 1);
		}
		return memberDao.insertQuestion(qu);
	}

	@Override
	public List<QuestionVO> getQuestionListByType(String qu_type) {
		try {
			return memberDao.selectQuestionListByType(qu_type);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean deleteQuestion(String qu_num) {
		return memberDao.deleteQuestion(qu_num);
	}

	@Override
	public List<TestVO> getTestList(MemberVO user) {
		return memberDao.selectTestList(user);
	}

	@Override
	public boolean updateQuestion(QuestionVO qu) {
		if(qu == null) {
			return false;
		}
		return memberDao.updateQuestion(qu);
	}
}