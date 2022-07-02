const router = require("koa-router")()
const { getHomeMovieData,getWeekendList,getPopularCommentList } = require('../../controller/home')
const { SuccessModel, ErrorModel } = require("../../model/resModel")

router.get('/api/home',async (ctx,next) => {
	const isShowingMovieList = await getHomeMovieData()
	const hotMovieList = await getHomeMovieData()
	const hotTVList = await getHomeMovieData()
	const weekendList = await getWeekendList()
	const popularCommentList = await getPopularCommentList()
	ctx.body = new SuccessModel({
		isShowingMovieList,
		hotMovieList,
		hotTVList,
		weekendList,
		popularCommentList
	})
})


router.post('/api/home/getHomeMovieData',async (ctx,next) => {
	let { country } = ctx.request.body
	if(country === "所有"){
		country = ""
	}
	const dataList = await getHomeMovieData(country)
	ctx.body = new SuccessModel({
		dataList
	})
})






module.exports = router
