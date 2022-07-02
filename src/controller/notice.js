const { exec } = require("../db/mysql")

const getNoticeList = async (id) =>{
	let sql =
		`
		select rr.*,lc.title,users.nickname as replierName
		FROM replier_relation as rr
		INNER JOIN longcomments as lc ON rr.longComment_id=lc.id
		INNER JOIN users ON rr.replier_id=users.id
		WHERE rr.respondent_id=${id};
		`
	return await exec(sql)
}

const delNotice = async (id) =>{
	let sql =
		`DELETE FROM replier_relation WHERE id=${id};`
	return await exec(sql)
}

module.exports = {
	getNoticeList,
	delNotice
}
