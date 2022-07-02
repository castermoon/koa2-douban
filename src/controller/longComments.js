const { exec } = require("../db/mysql")

const getCommentsMovieData = async (id) =>{
	let sql = `select id,name,cover,type,country,timeLen,\`time\` from movies where id=${id};`
	return await exec(sql)
}

const getCommentPositionList = async (id) => {
	let sql = `SELECT celebritys.id,movie_celebrity.position,celebritys.\`name\` FROM movie_celebrity
inner JOIN celebritys on movie_celebrity.celebrity_id=celebritys.id where movie_celebrity.movie_id=${id} 
and (movie_celebrity.position='director' or movie_celebrity.position='toStar');`
	return await exec(sql)
}

const getLongCommentList = async (id,page) =>{
	page = page - 1
	const limit = 10
	const offset = page * limit
	let sql = `
		SELECT longComments.*,users.nickname
		FROM longComments INNER JOIN users on longComments.user_id=users.id
		WHERE movie_id=${id}
		order by \`date\` desc limit ${limit} offset ${offset} ;
	`
	return await exec(sql)
}

const createLongComment = async ({movieId,content,score,userId,title,spoiler,timestamp}) => {
	let sql = `insert into longcomments(content,\`date\`,score,user_id,movie_id,spoiler,title) values('${content}', '${timestamp}',${score},${userId},${movieId},${spoiler},'${title}');`
	const insertData = await exec(sql)
	return{
		id: insertData.insertId
	}
}


module.exports = {
	getCommentsMovieData,
	getCommentPositionList,
	getLongCommentList,
	createLongComment
}
