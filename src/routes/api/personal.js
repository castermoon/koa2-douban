const router = require("koa-router")()
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const { loginCheck } = require('../../middlewares/loginChecks')
const { getUserInfo,getUserLongComments } = require("../../controller/personal")

router.get('/api/personal/:id',loginCheck,async (ctx,next) => {
	const { id } = ctx.params
	const userInfo = await getUserInfo(id)
	const userLongComments = await getUserLongComments(id)
	ctx.body= new SuccessModel({
		userInfo,
		userLongComments
	})
})


module.exports = router
