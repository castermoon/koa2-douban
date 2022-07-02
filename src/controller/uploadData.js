const fse = require("fs-extra")
const path =require('path')
const {ErrorModel,SuccessModel} = require("../model/ResModel")

//存储目录
const DIST_FOLDER_PATH = path.join(__dirname,'..','..','uploadFiles')

//文件最大体积1M
const MIX_SIZE = 1024 *1024*1024*1024*30

//是否需要创建目录
fse.pathExists(DIST_FOLDER_PATH).then(exist => {
	if(!exist){
		fse.ensureDir(DIST_FOLDER_PATH)
	}
})

//保存文件
async function saveFile({name, type, size, filePath}){
	// if(size > MIX_SIZE) {
	// 	await fse.remove(filePath)
	// 	return new ErrorModel('上传错误')
	// }

	//移动文件
	const fileName = Date.now() + '.' +name //防止重名
	const distFilePath = path.join(DIST_FOLDER_PATH,fileName) //目的地
	await fse.move(filePath,distFilePath)

	//返回信息
	return new SuccessModel({
		url:'/' + fileName
	})
}

module.exports = {
	saveFile
}
