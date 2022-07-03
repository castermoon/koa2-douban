const router = require("koa-router")()
const { getSearchContent } = require('../../controller/subjectSearch')
const { SuccessModel, ErrorModel } = require("../../model/resModel")


router.get('/api/subjectSearch/:searchContent/:type',async (ctx,next) => {
	const { searchContent,type } = ctx.params
	const searchRes = await getSearchContent(searchContent,type)
	const res = new SuccessModel(searchRes)
	res.searchType = type
	ctx.body = res
})



module.exports = router
