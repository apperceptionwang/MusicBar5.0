// JavaScript Document

function IsEmptySearchField()
{	
	if (document.getElementById("txtSearch").value == "")
		return true;
	else
	{
		alert("�������������ݣ�");
		return false;
	}
}



function ValidateLoginForm(txtStuNoId,txtPwdId)
{

	var stuNo = document.getElementById(txtStuNoId).value;
	var pwd = document.getElementById(txtPwdId).value;
	
	if (stuNo.length <3 || stuNo.length >16 || pwd.length <3 || pwd.length >16)
	{
		alert("����Ƿ�,ѧ�ź�����ĳ��ȱ�����3-16֮�䣡");
		return false;
	}
	if (stuNo.indexOf("\'") != -1 || stuNo.indexOf("\"") != -1 || pwd.indexOf("\'") != -1 || pwd.indexOf("\"") != -1)
	{
		alert("ѧ�ź������в��ܰ��������ź�˫���ţ�");
		return false;
	}
	
	return true;
}