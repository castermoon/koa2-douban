const { exec } = require("../db/mysql")


//id表示长评的id
const getLongCommentDetailRes = async (id) => {
	let sql =
  `
SELECT lcr.id,lcr.user_id as firstRes_userId,lcr.content as firstRes_content,lcr.\`date\` as  firstRes_date,
firstRes_users.nickName as firstRes_name,
lcrr.id as secondRes_id,lcrr.user_id as secondRes_userId,lcrr.respond_id as secondRes_respond_id,lcrr.content as secondRes_content,lcrr.\`date\` as secondRes_date,
secondRes_users.nickName as secondRes_name,
secondRes_users2.nickName as secondRes_respond_name
FROM long_comment_respond as lcr 
INNER JOIN users as firstRes_users ON lcr.user_id=firstRes_users.id
LEFT JOIN long_comment_res_res as lcrr ON lcrr.longCommentRespond_id=lcr.id
LEFT JOIN users as secondRes_users ON lcrr.user_id=secondRes_users.id
LEFT JOIN users as secondRes_users2 ON lcrr.respond_id=secondRes_users2.id
WHERE longComment_id=${id};
	`
	return await exec(sql)
}

//id表示长评的id
const getLongCommentDetail = async (id) => {
	let sql =
		`SELECT longComments.*,users.nickName FROM longComments INNER JOIN users ON longComments.user_id=users.id WHERE longComments.id=${id};`
	return await exec(sql)
}


//id表示长评的id
const createLongCommentDetailRespond = async (user_id,longComment_id,content,timestamp) => {
	let sql =
   `
   insert into long_comment_respond(user_id,longComment_id,content,\`date\`) values(${user_id},${longComment_id},'${content}',${timestamp});
	`
	return await exec(sql) || {}
}

//id表示长评的id
const createLongCommentResRes = async (user_id,longCommentRespond_id,respond_id,content,timestamp) => {
	let sql =
		`
	insert into long_comment_res_res(user_id,longCommentRespond_id,respond_id,content,\`date\`) values(${user_id},${longCommentRespond_id},${respond_id},'${content}',${timestamp});
	`
	return await exec(sql) || {}
}

const createReplierRelation = async (replier_id, respondent_id,longComment_id,scrollTop,timestamp) => {
	let sql =
	`
	insert into replier_relation(replier_id,respondent_id,longComment_id,scrollTop,\`date\`) values(${replier_id},${respondent_id},${longComment_id},${scrollTop},${timestamp});
	`
	return await exec(sql) || {}
}

module.exports = {
	getLongCommentDetailRes,
	getLongCommentDetail,
	createLongCommentDetailRespond,
	createLongCommentResRes,
	createReplierRelation
}
