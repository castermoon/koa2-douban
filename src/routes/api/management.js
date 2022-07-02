const router = require("koa-router")()
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const {createMovie,getMovieList,deleteMovie} = require("../../controller/management");
router.prefix('/api/management')

router.get('/getMovieList',async (ctx,next) => {
	const movieList = await getMovieList()
	ctx.body = new SuccessModel({
		movieList
	})
})

router.post('/addMovie',async (ctx,next) => {
	const { name,cover,type,web,country,language,timeLen,anotherName,score,brief,time } = ctx.request.body
	const res = await createMovie({name,cover,type,web,country,language,timeLen,anotherName,score,brief,time})
	if(res){
		ctx.body = new SuccessModel({
			res
		})
	}else {
		ctx.body = new ErrorModel({
			errno:10003,
			message:"没有管理员权限"
		})
	}
})

router.post('/delMovie',async (ctx,next) => {
	const { movie_id } = ctx.request.body
	const res = await deleteMovie({movie_id})
	ctx.body = new SuccessModel({
		res
	})
})


module.exports = router
