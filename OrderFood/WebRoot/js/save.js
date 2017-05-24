function save(){
	
	var food_name=document.form1.food_name.value.trim();
	var food_price=document.form1.food_price.value.trim();
	var pic=document.form1.pic.value;
	var descript=document.form1.descript.value.trim();
	
	

	document.form1.action="listFoodServlet?action="+"addfood"+"&food_name="+food_name+"&food_price="+food_price+"&pic="+pic+"&descript="+descript;
	document.form1.submit();//提交表单
	}