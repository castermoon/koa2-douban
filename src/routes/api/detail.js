const router = require("koa-router")()
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const {
	getMovieData,
	getMaybeLikeList,
	getPositionList,
	getMovieCommentsData,
	getScorePercent,
	getRecentCommentList,
	getRecentLongCommentList
} = require('../../controller/detail')
const { objMerge,percentCompute } = require('../../utils/dataChange')
router.prefix('/api/detail')

//id表示电影的id
router.get('/:id',async (ctx,next) => {
	const { id } = ctx.params
	const movieData = await getMovieData(id)
  const maybeLikeList = await getMaybeLikeList(id)
	let positionList = await getPositionList(id)
	positionList = objMerge(positionList)
	let movieCommentsData = await getMovieCommentsData(id)
	let commentScoreObj = await getScorePercent(id)
	let recentCommentList = await getRecentCommentList(id)
	let recentLongCommentList = await getRecentLongCommentList(id)

	commentScoreObj = percentCompute(commentScoreObj)
	Object.assign(movieData,positionList,movieCommentsData)
	ctx.body = new SuccessModel({
		movieData,
		maybeLikeList,
		commentScoreObj,
		recentCommentList,
		recentLongCommentList
	})
})


module.exports = router
