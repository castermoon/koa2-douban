//登录验证的中间件
const { ErrorModel,SuccessModel } = require("../model/resModel")
const { noLoginError } = require("../model/ErrorInfo")
//API登录验证
async function loginCheck(ctx, next){
	if(ctx.session.userInfo && ctx.session.userInfo.id){
		//已登录
		await next()
		return
	}
	//未登录
	return ctx.body = new ErrorModel(noLoginError)
}


//页面登录验证
async function loginRedirect(ctx,next){
	if(ctx.session.userInfo.id){
		//已登录
		await next()
		return
	}
	//未登录
	const curUrl = ctx.url
	ctx.redirect('/login?url='+ encodeURIComponent(curUrl))
}

module.exports = {
	loginCheck,
	loginRedirect
}
