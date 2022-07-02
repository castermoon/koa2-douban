const mysql = require("mysql")
const { MYSQL_CONF } =require("../conf/db")

//创建链接对象
const con =  mysql.createConnection(MYSQL_CONF)

//开始连接
con.connect()

//执行sql语句
function exec(sql){
	const promise = new Promise((resolve,reject) =>{
		// console.log('sql',sql)
		con.query(sql,(err,result) => {
			if(err){
				console.log(err)
				return
			}
			// console.log('result',result)
			resolve(result)
		})
	})
	return promise
}


// //关闭连接
// con.end()

module.exports = {
	exec,
	escape: mysql.escape
}
