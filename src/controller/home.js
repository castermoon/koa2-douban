const { exec } = require("../db/mysql")

const getHomeMovieData = async (country="") => {
	let sql = `SELECT id,cover,\`name\`,score,\`type\` FROM movies WHERE country LIKE '%${country}%';`
	return await exec(sql)
}

const getWeekendList = async () => {
	let sql = `select \`name\`,id from movies limit 10;`
	return await exec(sql)
}


const getPopularCommentList = async () => {
	let sql =
		`
		SELECT lc.id as longComment_id,lc.title,lc.content,lc.score,
		movies.id as movie_id,movies.cover,movies.name as movie_name,
		users.id as user_id,users.username 
		FROM longComments as lc 
		INNER JOIN movies ON lc.movie_id=movies.id 
		INNER JOIN users ON lc.user_id=users.id 
		LIMIT 5;
	`
	return await exec(sql)
}



module.exports = {
	getHomeMovieData,
	getWeekendList,
	getPopularCommentList
}
