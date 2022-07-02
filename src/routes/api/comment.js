const router = require("koa-router")()
const { getCommentsMovieData,getCommentPositionList,getCommentList,createComment } = require('../../controller/comment')
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const { unKnowError } = require("../../model/ErrorInfo")
const { objMerge } = require('../../utils/dataChange')
const { loginCheck } = require("../../middlewares/loginChecks")
router.prefix('/api/comments')

router.get('/:id/:page/:commentType',async (ctx,next) => {
	const { id,page,commentType } = ctx.params
	let CommentsMovieData = await getCommentsMovieData(id)
	CommentsMovieData = CommentsMovieData[0]
	let CommentPositionList = await getCommentPositionList(id)
	CommentPositionList = objMerge(CommentPositionList)
	Object.assign(CommentsMovieData,CommentPositionList)
	let commentList = await getCommentList(id,page,commentType)
	ctx.body = new SuccessModel({
		CommentsMovieData,
		commentList
	})
})

router.post('/createComment/',loginCheck,async (ctx,next) => {

	const { movieId,content,score,status,labelList,onlyMe,isShare } = ctx.request.body
	const userId = ctx.session.userInfo.id

	let timestamp = new Date().getTime()

	// let date = new Date()
	// date = date.getFullYear() + "-" + (date.getMonth() < 10 ? '0' + (date.getMonth()+1) : (date.getMonth()+1)) + "-" + (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) ;
	const res = await createComment(movieId,content,score,userId,timestamp,status,labelList,onlyMe,isShare)
	if(res){
		ctx.body = new SuccessModel({
			res
		})
	}else{
		ctx.body = new ErrorModel(unKnowError)
	}
})



module.exports = router

