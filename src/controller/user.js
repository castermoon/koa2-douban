const { exec,escape } =require("../db/mysql")
const { genPassword } =require("../utils/cryp")


const login = async (username,password) => {
	username = escape(username)
//生成加密密码
// 	password = genPassword(password)
// 	password = escape(password)
// 	console.log(username,password)
	const sql = `select id,username,nickname from users where username=${username} and \`password\`='${password}'`
	const rows = await exec(sql)
	return rows[0] || null
}

const checkUserName = async (username) => {
	const sql = `select id from users where username='${username}';`
	const rows = await exec(sql)
	return rows[0] || null
}

const register = async (username,password) => {
	const usernameRepeat = await checkUserName(username)
	if(usernameRepeat){
		return {
			userNameRepeat:true
		}
	}
	const sql = `insert into users(userName,\`password\`,nickName) values('${username}','${password}','${username}');`
	const insertData = await exec(sql)
	return{
		id: insertData.insertId
	}
}

//获取提醒数量
const getNoticeNum = async (id) => {
	const sql = `select count(id) as noticeNum from replier_relation WHERE respondent_id=${id};`
	const noticeNum = await exec(sql)
	return noticeNum[0]
}



module.exports = {
	login,
	register,
	getNoticeNum
}
