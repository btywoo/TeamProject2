select question.*, count(qa_num) as qu_answerCount from question left join question_answer on qa_qu_num = qu_num where qu_type = "TF" group by qu_num ;

select 
	row_number() over(order by qu_num) as qu_rank,
    question.*
from 
	question
limit 10, 5;

SELECT 
    comment.*, (select te_result from test where te_me_id = me_id and te_result is not null order by te_date desc limit 1) as co_te_result
FROM
    comment
	left JOIN member ON me_id = co_me_id
    left join test on te_me_id = me_id
where co_dr_num = 1
group by co_num
order by co_num