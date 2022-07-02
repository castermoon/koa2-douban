const { exec } = require("../db/mysql")

const getCelebrityData = async (id) => {
	let sql = `SELECT *FROM celebritys where id=${id};`
	return await exec(sql)
}
const getRecentWorksListData = async (id) => {
	let sql = `SELECT movies.id,movies.\`name\`,movies.\`time\`,movies.score,movies.cover FROM movie_celebrity 
						inner JOIN celebritys on movie_celebrity.celebrity_id=celebritys.id 
						inner JOIN movies on movie_celebrity.movie_id=movies.id
						where movie_celebrity.celebrity_id=${id};`
	return await exec(sql)
}


module.exports = {
	getCelebrityData,
	getRecentWorksListData
}
