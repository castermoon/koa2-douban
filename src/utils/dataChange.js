//创建一个obj对象，遍历数组，如果obj对象没有item.position，就把键item.position赋值为一个空数组,然后把值添加到数组中
function objMerge(positionList){
	let obj = {}
	for(let i=0;i<positionList.length;i++){
		const item = positionList[i]
		if(!obj[item.position]){
			obj[item.position] = []
		}
		obj[item.position].push(item)
		delete item.position
	}
	return obj
}

//回复数据转换
//函数根据传来的长评回复的id，将不同用户的长评回复划分到各自的数组中(res)
//并将长评回复的回复整合到长评回复数组的二级回复数组secondResList中(res2)
//最后，一级回复会根据firstRes_date进行从小到大排序，二级回复会根据secondRes_date进行从小到大排序
function resDataChange(data,firstFieldList,secondFieldList){
	let map = new Map()
	let res = []
	let index = 0
	data.forEach((item) => {
		let id = item[firstFieldList[0]]
		if(!map.has(id)){
			map.set(item.id,index)
			index++
			res.push([item])
		}else {
			let index = map.get(id)
			res[index].push(item)
		}
	})
	let res2 = []
	for(let i = 0;i < res.length;i++){
		let item = res[i]
		let secondResList = []
		for(let j = 0;j < item.length;j++){
			let item2 = item[j]
			if(!item2[secondFieldList[0]]){
				continue
			}
			let obj = {}
			secondFieldList.forEach((se) =>{
				obj[se] = item2[se]
			})
			secondResList.push(obj)
		}
		let obj2 = {}
		firstFieldList.forEach((first) =>{
			obj2[first] = item[0][first]
		})
		obj2.secondResList = secondResList
		res2.push(obj2)
	}
	res2.sort((a, b) => {
		return a.firstRes_date - b.firstRes_date
	})
	res2.forEach((item) => {
		if(item.secondResList.length){
			item.secondResList.sort((a,b) => {
				return a.secondRes_date - b.secondRes_date
			})
		}
	})
	return res2
}

//计算评分所占百分比保存在对象中
function percentCompute(obj){
	let res = {
		"2":0,
		"4":0,
		"6":0,
		"8":0,
		"10":0
	}
	let sum = 0
	let commentScoreList = obj.commentScoreList
	let longCommentScoreList = obj.longCommentScoreList
	if(commentScoreList.length){
		for(let i = 0;i < commentScoreList.length;i++){
			let score = commentScoreList[i].score
			res[score]  += 1
		}
		for(let i in res){
			sum = sum + res[i]
		}
	}
	if(longCommentScoreList.length){
		for(let i = 0;i < longCommentScoreList.length;i++){
			let score = longCommentScoreList[i].score
			res[score]  += 1
		}
		for(let i in res){
			res[i] = (res[i] / sum).toFixed(3)
		}
	}
	return res
}

module.exports = {
	objMerge,
	resDataChange,
	percentCompute
}
