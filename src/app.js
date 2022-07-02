const Koa = require('koa')
const app = new Koa()
const views = require('koa-views')
const json = require('koa-json')
const onerror = require('koa-onerror')

const bodyparser = require('koa-bodyparser')
const logger = require('koa-logger')
const session = require('koa-generic-session')
const redisStore = require('koa-redis')

const { REDIS_CONF } = require('./conf/db')



const home = require('./routes/api/home')
const detail = require("./routes/api/detail")
const celebrity = require("./routes/api/celebrity")
const user = require("./routes/api/user")
const comment = require("./routes/api/comment")
const uploadData = require("./routes/api/uploadData")
const longComments = require("./routes/api/longComments")
const longCommentDetail = require('./routes/api/longCommentDetail')
const personal = require('./routes/api/personal')
const notice = require('./routes/api/notice')
const subjectSearch = require('./routes/api/subjectSearch')
const management = require('./routes/api/management')
const errorViewRouter = require('./routes/api/page404')


const koaStatic = require('koa-static')
const path = require("path")

// error handler
onerror(app)


// middlewares

app.use(bodyparser({
  enableTypes:['json', 'form', 'text']
}))
app.use(json())
app.use(logger())
// app.use(require('koa-static')(__dirname + '/public'))
app.use(koaStatic(path.resolve(__dirname,'../public')))

app.use(views(__dirname + '/views', {
  extension: 'pug'
}))

// logger
app.use(async (ctx, next) => {
  const start = new Date()
  await next()
  const ms = new Date() - start
  console.log(`${ctx.method} ${ctx.url} - ${ms}ms`)
})

//session配置
app.keys = ['WJiol#23123_']
app.use(session({
  key: 'douban.sid', //cookie name默认是`douban.sid`
  prefix: 'douban:sess:', //redis key 的前缀，默认是`douban:sess:`
  cookie: {
    path: '/',
    httpOnly: true,
    maxAge: 24 * 60 * 60 * 1000
  },
  //配置redis
  store: redisStore({
    all:`${REDIS_CONF.host}:${REDIS_CONF.port}`
  })
}))

// routes
app.use(home.routes(), home.allowedMethods())
app.use(detail.routes(), detail.allowedMethods())
app.use(celebrity.routes(), celebrity.allowedMethods())
app.use(user.routes(), user.allowedMethods())
app.use(comment.routes(), comment.allowedMethods())
app.use(uploadData.routes(), uploadData.allowedMethods())
app.use(longComments.routes(),longComments.allowedMethods())
app.use(longCommentDetail.routes(),longCommentDetail.allowedMethods())
app.use(personal.routes(),personal.allowedMethods())
app.use(notice.routes(),notice.allowedMethods())
app.use(subjectSearch.routes(),subjectSearch.allowedMethods())
app.use(management.routes(),management.allowedMethods())
app.use(errorViewRouter.routes(),errorViewRouter.allowedMethods())

// error-handling
app.on('error', (err, ctx) => {
  console.error('server error', err, ctx)
});

module.exports = app
