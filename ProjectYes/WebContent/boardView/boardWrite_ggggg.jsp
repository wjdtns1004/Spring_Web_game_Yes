<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form name="form1" action="/ProjectYes/InsertBoard.do">
        <table border="1" style="width:600px">
            <caption>�۾��� �Խ���</caption>
            <colgroup>
                <col width='15%' />
                <col width='*%' />
            </colgroup>
            <tbody>
                <tr>
                    <td>����</td> 
                    <td><input type="text" name="brdtitle" size="70" maxlength="250"></td> 
                </tr>
                <tr>
                    <td>����</td> 
                    <td><textarea name="brdmemo" rows="5" cols="70"></textarea></td>  
                </tr>
            </tbody>
        </table>    
        <input type="submit" value="Ȯ��">
    </form>    

</body>
</html>