const { exec } = require("../db/mysql")

const createMovie = async ({name,cover,type,web,country,language,timeLen,anotherName,score,brief,time}) => {
	let sql = `insert into movies(\`name\`,cover,\`type\`,web,country,\`language\`,timeLen,anotherName,score,brief,\`time\`) values('${name}','${cover}','${type}','${web}','${country}','${language}',${timeLen},'${anotherName}',${score},'${brief}','${time}');`
	const insertData = await exec(sql)
	return{
		id: insertData.insertId
	}
}
const getMovieList = async () => {
	let sql = `select * from movies;`
	return await exec(sql)
}

const deleteMovie = async ({movie_id}) => {
	let sql = `DELETE FROM movies WHERE id=${movie_id};;`
	return await exec(sql)
}


module.exports = {
	createMovie,
	getMovieList,
	deleteMovie
}
