const router = require("koa-router")()
const { getCommentsMovieData,getCommentPositionList,getLongCommentList,createLongComment } = require('../../controller/longComments')
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const { unKnowError } = require("../../model/ErrorInfo")
const { objMerge } = require("../../utils/dataChange")
const { loginCheck } = require("../../middlewares/loginChecks");


router.prefix('/api/longComments')

router.get('/:id/:page',async (ctx,next) => {
	const { id,page } = ctx.params
	let CommentsMovieData = await getCommentsMovieData(id)
	CommentsMovieData = CommentsMovieData[0]
	let CommentPositionList = await getCommentPositionList(id)
	CommentPositionList = objMerge(CommentPositionList)
	Object.assign(CommentsMovieData,CommentPositionList)
	let longCommentList = await getLongCommentList(id,page)
	ctx.body = new SuccessModel({
		CommentsMovieData,
		longCommentList
	})
})

router.post('/createLongComment/',loginCheck,async (ctx,next) => {

	const { movieId,content,score,title,spoiler } = ctx.request.body
	const userId = ctx.session.userInfo.id

	let timestamp = new Date().getTime()
	const res = await createLongComment({movieId,content,score,userId,title,spoiler,timestamp})
	if(res){
		ctx.body = new SuccessModel({
			res
		})
	}else{
		ctx.body = new ErrorModel(unKnowError)
	}
})



module.exports = router

