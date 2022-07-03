const { exec } = require("../db/mysql")



const getMovieRankList = async (id) => {
	let sql = `SELECT id,name,cover,type,country,language,time,timeLen,score FROM movies ORDER BY score DESC LIMIT 10 ;`
	return 	exec(sql)
}


module.exports = {
	getMovieRankList
}
