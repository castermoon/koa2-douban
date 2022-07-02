const router = require("koa-router")()
const { getLongCommentDetailRes,getLongCommentDetail,createLongCommentDetailRespond,createLongCommentResRes,createReplierRelation } = require('../../controller/longCommentDeatil')
const { getCommentsMovieData,getCommentPositionList } = require('../../controller/comment')
const { SuccessModel, ErrorModel } = require("../../model/resModel")
const { unKnowError } = require("../../model/ErrorInfo")
const { resDataChange,objMerge } = require("../../utils/dataChange")
const {loginCheck} = require("../../middlewares/loginChecks");
router.prefix('/api/longCommentDetail')

//id表示长评的的id
router.get('/:longComment_id',async (ctx,next) => {
	const { longComment_id } = ctx.params
	let longCommentDetail = await getLongCommentDetail(longComment_id)
	const movie_id = longCommentDetail[0].movie_id
	let CommentsMovieData = await getCommentsMovieData(movie_id)
	CommentsMovieData=CommentsMovieData[0]
	let CommentPositionList = await getCommentPositionList(movie_id)
	CommentPositionList = objMerge(CommentPositionList)
	Object.assign(CommentsMovieData,CommentPositionList)
	longCommentDetail = longCommentDetail[0]
	let longCommentDetailRes = await getLongCommentDetailRes(longComment_id)
	//firstFieldList,secondFieldList表示的是被分级的字段，firstFieldList表示一级字段，secondFieldList表示二级字段
	//当查询字段增加时，应对其进行修改，为了避免改动转换函数的代码，最好不要对日期的字段名进行修改
	let firstFieldList  = ["id","firstRes_userId","firstRes_name","firstRes_content","firstRes_date"]
	let secondFieldList = ["secondRes_id","secondRes_userId","secondRes_name","secondRes_respond_id","secondRes_respond_name","secondRes_content","secondRes_date"]
	longCommentDetailRes = resDataChange(longCommentDetailRes,firstFieldList,secondFieldList)
	ctx.body = new SuccessModel({
		CommentsMovieData,
		longCommentDetail,
		longCommentDetailRes
	})
})

router.post('/createLongCommentRes',loginCheck,async (ctx,next) => {
	const { longComment_id,content,scrollTop,respondent_id } = ctx.request.body
	const user_id = ctx.session.userInfo.id
	let timestamp = new Date().getTime()
	const res = await createLongCommentDetailRespond( user_id, longComment_id, content,timestamp)
	let res2 = true
	if(user_id !== respondent_id){
		res2 = await createReplierRelation(user_id, respondent_id,longComment_id,scrollTop,timestamp)
	}
	if(res && res2){
		ctx.body = new SuccessModel({
			res,
			res2
		})
	}else{
		ctx.body = new ErrorModel({
	})
	}
})

router.post('/createLongCommentResRes',loginCheck, async (ctx,next) => {
	const { longCommentRespond_id,respond_id,content,scrollTop,longComment_id } = ctx.request.body
	const user_id = ctx.session.userInfo.id
	let timestamp = new Date().getTime()
	const res = await createLongCommentResRes( user_id, longCommentRespond_id,respond_id, content,timestamp)
	let res2 = true
	if(user_id !== respond_id){
		res2 = await createReplierRelation(user_id, respond_id,longComment_id,scrollTop,timestamp)
	}
	if(res && res2){
		ctx.body = new SuccessModel({
			res,
			res2
		})
	}else{
		ctx.body = new ErrorModel(unKnowError)
	}
})






module.exports = router

