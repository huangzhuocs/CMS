function updateNum(food_id,txt,oldNum){
	var newNum=txt.value;//获取用户输入的数量
		location.href="carServlet?action=updateNum"+"&food_id="+food_id+"&count="+newNum;
}

function deleteProduct(food_id){
	if(confirm("确定要删除吗?")){
		location.href="carServlet?action=deleteFood"+"&food_id="+food_id;
	}
}
function clearFood(){
	if(confirm("确定要清空您的购物车吗?")){
		location.href="carServlet?action=clearCar";
	}
}
