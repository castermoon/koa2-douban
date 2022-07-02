const { exec } = require("../db/mysql")


const getSearchContent = async (searchContent,type) => {
	let sql = `SELECT * FROM ${type} WHERE \`name\` LIKE '%${searchContent}%';`
	return await exec(sql)
}


module.exports = {

	getSearchContent
}
