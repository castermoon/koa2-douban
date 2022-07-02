const { exec } = require("../db/mysql")

const getCommentsMovieData = async (id) =>{
	let sql = `select id,cover,type,country,timeLen,\`time\`,name from movies where id=${id};`
	return await exec(sql)
}

const getCommentPositionList = async (id) => {
	let sql = `SELECT celebritys.id,movie_celebrity.position,celebritys.\`name\` FROM movie_celebrity
inner JOIN celebritys on movie_celebrity.celebrity_id=celebritys.id where movie_celebrity.movie_id=${id} 
and (movie_celebrity.position='director' or movie_celebrity.position='toStar');`
	return await exec(sql)
}

const getCommentList = async (id,page,commentType) =>{
	page = page - 1
	const limit = 10
	const offset = page * limit
	const commentTypeMap = {
		"noLooked":[0,0],
		"all":[2,10],
		"bad":[2,4],
		"normal":[6,6],
		"good":[8,10]
	}
	const commentScoreLimit = commentTypeMap[commentType]
	let sql = `SELECT comments.*,users.id as user_id,users.nickname,movies.id as movie_id FROM comments
inner JOIN users on comments.user_id=users.id inner JOIN movies on comments.movie_id=movies.id where movie_id=${id} and comments.score>=${commentScoreLimit[0]} and comments.score<=${commentScoreLimit[1]} order by \`date\` desc limit ${limit} offset ${offset};`
	return await exec(sql)
}

const createComment = async (movieId,content,score,userId,timestamp,status,labelList,onlyMe,isShare) => {
	let sql = `insert into comments(content,\`date\`,score,user_id,movie_id,\`status\`,labelList,onlyMe,isShare) values('${content}', '${timestamp}',${score},${userId},${movieId},${status},'${labelList}',${onlyMe},${isShare});`
	const insertData = await exec(sql)
	return{
		id: insertData.insertId
	}
}


module.exports = {
	getCommentsMovieData,
	getCommentPositionList,
	getCommentList,
	createComment
}
