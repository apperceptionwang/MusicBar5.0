<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- 都是html的标签 -->
    <style type ="text/css">
    a:link {color:#FF0000;}		/* 未被访问的链接 */
    a:visited {color:#00FF00;}	/* 已被访问的链接 */
    a:hover {color:#FF00FF;}	/* 鼠标指针移动到链接上 */
    a:active {color:#0000FF;}
    
    

        #ABC
        {
            background-color:blue
        }
        .ABCD
        {
            background-color:red
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type ="button"  value ="addbdd" id="ABC" />
       <input type ="button"  value ="addbdd" />
       <input type ="button"  value ="addbdd" />
       <input type ="button"  value ="addbdd" class = "ABCD" />
       <input type ="button"  value ="addbdd" />
       <input type ="button"  value ="addbdd" id="ABC"/>
      
  
    </div>
    </form>
</body>
</html>
