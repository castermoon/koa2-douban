const { exec } = require("../db/mysql")

const getMovieData = async (id) =>{
	let sql = `select * from movies where id=${id};`
	let data = await exec(sql)
	return data[0]
}

const getMaybeLikeList = async (id) => {
	let sql = `select id,cover,\`name\` from movies limit 5 `;
	return await exec(sql)
}

const getScorePercent = async (id) => {
	let sql1 = `SELECT score FROM comments WHERE movie_id=${id} AND \`status\`=1 AND score>0;`;
	let sql2 = `SELECT score FROM longcomments WHERE movie_id=${id} AND score>0`;
	let commentScoreList = await exec(sql1)
	let longCommentScoreList = await exec(sql2)
	return {
		commentScoreList,
		longCommentScoreList
	}
}





const getPositionList = async (id) => {
	let sql = `SELECT celebritys.id,movie_celebrity.position,celebritys.\`name\` FROM movie_celebrity
	inner JOIN celebritys on movie_celebrity.celebrity_id=celebritys.id where movie_celebrity.movie_id=${id};`
	return await exec(sql)
}

const getMovieCommentsData = async (id) => {
	let sql1 = `select count(id)as commentsCount,sum(score)as commentsScore  from comments WHERE movie_id=${id} AND score>0;`
	let sql2 = `select count(id)as longCommentsCount,sum(score)as longCommentsScore  from longComments WHERE movie_id=${id} AND score>0;`
	let commentsData = await exec(sql1)
	let longCommentsData = await exec(sql2)
	commentsData = commentsData[0]
	longCommentsData = longCommentsData[0]
	let movieScore = (commentsData.commentsScore + longCommentsData.longCommentsScore) /  (commentsData.commentsCount + longCommentsData.longCommentsCount)
	return {
		commentsCount:commentsData.commentsCount,
		longCommentsCount:longCommentsData.longCommentsCount,
		movieScore:parseFloat(movieScore.toFixed(1)),
	}
}

const getRecentCommentList = async (id) => {
	let sql = `SELECT c.id,c.content,c.\`date\`,c.score,c.movie_id,c.user_id,users.nickname 
		FROM comments AS c 
		INNER JOIN users ON c.user_id=users.id
		WHERE movie_id=${id} ORDER BY \`date\` DESC LIMIT 5;`
	return await exec(sql)
}

const getRecentLongCommentList = async (id) => {
	let sql = `SELECT lc.id,lc.content,lc.\`date\`,lc.score,lc.movie_id,lc.title,lc.user_id,lc.spoiler,users.nickname 
		FROM longcomments AS lc 
		INNER JOIN users ON lc.user_id=users.id
		WHERE movie_id=${id} ORDER BY \`date\` DESC LIMIT 5;`
	return await exec(sql)
}

module.exports = {
	getMovieData,
	getMaybeLikeList,
	getPositionList,
	getMovieCommentsData,
	getScorePercent,
	getRecentCommentList,
	getRecentLongCommentList
}
