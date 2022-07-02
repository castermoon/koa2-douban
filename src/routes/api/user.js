const router = require("koa-router")()
const {login, register,getNoticeNum} = require('../../controller/user')
const {SuccessModel, ErrorModel} = require("../../model/resModel")
const {userNameRepeat, unKnowError, noLoginError} = require("../../model/ErrorInfo")
const {loginCheck} = require("../../middlewares/loginChecks")

//启动redis:redis-server.exe redis.windows.conf
router.prefix('/api/user')


//登录
router.post('/login', async (ctx, next) => {
	const {username, password} = ctx.request.body
	const userInfo = await login(username, password)
	if(!userInfo){
		return ctx.body =  new ErrorModel({
			errno:201,
			message:"账号或密码错误",
		})
	}
	if(!ctx.session.userInfo){
		ctx.session.userInfo = userInfo
	}
	ctx.body = new SuccessModel({
		errno: 0,
		data:userInfo,
		message:"登录成功"
	})
})


//注册
router.post('/register', async (ctx, next) => {
	const {username, password} = ctx.request.body
	const data = await register(username, password)
	if(data.userNameRepeat){
		ctx.body = new ErrorModel(userNameRepeat)
		return
	}
	if(data.id){
		ctx.body = new SuccessModel()
	}else {
		ctx.body = new ErrorModel(unKnowError)
	}
})


//注销
router.get('/logout',loginCheck,async (ctx, next) => {
	delete ctx.session.userInfo
	ctx.body = new SuccessModel("退出成功")
})


//loginCheck
router.get('/loginCheck', async (ctx, next) => {

	const userInfo = ctx.session.userInfo
	if(userInfo){
		ctx.body = new SuccessModel(userInfo)
		return
	}
	ctx.body = new ErrorModel(noLoginError)
})

//notice
router.get('/notice', loginCheck,async (ctx, next) => {
	const userInfo = ctx.session.userInfo
	const noticeNum = await getNoticeNum(userInfo.id)
	ctx.body = new SuccessModel({
		noticeNum:noticeNum.noticeNum
	})
})



module.exports = router
