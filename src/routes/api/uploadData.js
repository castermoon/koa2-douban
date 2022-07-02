const router = require("koa-router")()
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const { saveFile } = require('../../controller/uploadData')
const koaFrom = require('formidable-upload-koa')

router.prefix('/api')

//上传图片
router.post('/upload',koaFrom(),async (ctx,next)=>{
	const file = ctx.req.files['file']
	if(!file){
		return
	}
	const {size, path, name, type} = file
	ctx.body = await saveFile({
		name,
		type,
		size,
		filePath:path
	})
})

module.exports = router
