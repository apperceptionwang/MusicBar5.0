// JavaScript Document

function IsEmptySearchField()
{	
	if (document.getElementById("txtSearch").value == "")
		return true;
	else
	{
		alert("请输入搜索内容！");
		return false;
	}
}



function ValidateLoginForm(txtStuNoId,txtPwdId)
{

	var stuNo = document.getElementById(txtStuNoId).value;
	var pwd = document.getElementById(txtPwdId).value;
	
	if (stuNo.length <3 || stuNo.length >16 || pwd.length <3 || pwd.length >16)
	{
		alert("输入非法,学号和密码的长度必须在3-16之间！");
		return false;
	}
	if (stuNo.indexOf("\'") != -1 || stuNo.indexOf("\"") != -1 || pwd.indexOf("\'") != -1 || pwd.indexOf("\"") != -1)
	{
		alert("学号和密码中不能包括单引号和双引号！");
		return false;
	}
	
	return true;
}