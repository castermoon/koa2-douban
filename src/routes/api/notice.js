const router = require("koa-router")()
const { getNoticeList,delNotice } = require('../../controller/notice')
const { SuccessModel, ErrorModel } = require("../../model/resModel")

router.prefix('/api/notice')

//id为被回复者的id
router.get('/:id',async (ctx,next) => {
	const { id } = ctx.params
	let noticeList = await getNoticeList(id)
	ctx.body = new SuccessModel({
		noticeList
	})
})


//删除已读提醒,id为回复关系表中的id
router.post('/delNotice',async (ctx,next) => {
	const { id } = ctx.request.body
	let data = await delNotice(id)
	ctx.body = new SuccessModel({
		// data
	})
})




module.exports = router

