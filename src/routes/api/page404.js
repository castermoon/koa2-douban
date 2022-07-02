/*
404路由
 */
const fs =require("fs")
const router = require('koa-router')()
const path = require("path")

//404
router.get('*',async (ctx, next) => {
	ctx.type = 'html';
	const pathName = path.join(__dirname,"..","..","..","public","index.html")
	ctx.body = fs.createReadStream(pathName);
})


module.exports = router
