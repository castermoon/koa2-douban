const env = process.env.NODE_ENV  //环境参数
const {database_password} = require( "../../allConf")
//配置
let MYSQL_CONF
let REDIS_CONF

if(env === 'dev'){
	MYSQL_CONF = {
		host: 'localhost',
		user:'root',
		password:database_password,
		port:3306,
		database:'douban'
	}
	//redis
	REDIS_CONF = {
		port: 6379,
		host: '127.0.0.1'
	}
}

if(env === 'production'){
	MYSQL_CONF = {
		host: 'localhost',
		user:'root',
		password:"xinhaolei146",
		port:3306,
		database:'douban'
	}
	//redis
	REDIS_CONF = {
		port: 6379,
		host: '127.0.0.1'
	}

}

module.exports = {
	MYSQL_CONF,
	REDIS_CONF
}
