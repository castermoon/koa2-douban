const router = require("koa-router")()
const { getMovieRankList } = require('../../controller/movieRank')
const { SuccessModel, ErrorModel } = require("../../model/resModel")

router.prefix('/api')

//id为被回复者的id
router.get('/movieRank',async (ctx,next) => {
	let movieRankList = await getMovieRankList()
	ctx.body = new SuccessModel({
		movieRankList
	})
})






module.exports = router

