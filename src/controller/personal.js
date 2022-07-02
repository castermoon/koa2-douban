const { exec,escape } =require("../db/mysql")


const getUserInfo = async (id) => {
	const sql = `select * from users where id=${id}`
	const rows = await exec(sql)
	return rows[0] || {}
}

const getUserLongComments = async (id) => {
	const sql = `
		select lc.*,movies.\`name\` as movie_name,movies.cover,users.nickname as nickName
		FROM longcomments as lc 
		INNER JOIN movies ON lc.movie_id=movies.id 
		INNER JOIN users ON lc.user_id=users.id
		WHERE user_id=${id}
		limit 2;
	`
	const rows = await exec(sql)
	return rows || {}
}
module.exports = {
	getUserInfo,
	getUserLongComments
}
