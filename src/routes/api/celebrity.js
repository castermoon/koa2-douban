const router = require("koa-router")()
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const { getCelebrityData,getRecentWorksListData } = require('../../controller/celebrity')

router.get('/api/celebrity/:id',async (ctx,next) => {
	const { id } = ctx.params
	let celebrityData = await getCelebrityData(id)
	let recentWorksListData = await getRecentWorksListData(id)
	ctx.body= new SuccessModel({
		celebrityData:celebrityData[0],
		recentWorksListData
	})
})



module.exports = router
