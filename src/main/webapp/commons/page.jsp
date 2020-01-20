<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2019/10/10
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${pageBean.pageNum==1}">
        首页&nbsp;上一页
    </c:if>
    <c:if test="${pageBean.pageNum>1}">
        <a href="javascript:void(0)" onclick="jump(1)">首页</a>
        <a href="javascript:void(0)" onclick="jump(${pageBean.pageNum-1})">上一页</a>
    </c:if>
    <c:if test="${pageBean.pageNum==pageBean.pageTotal}">
        下一页&nbsp;尾页
    </c:if>
    <c:if test="${pageBean.pageNum<pageBean.pageTotal}">
        <a href="javascript:void(0)" onclick="jump(${pageBean.pageNum+1})">下一页</a>
        <a href="javascript:void(0)" onclick="jump(${pageBean.pageTotal})">尾页</a>
    </c:if>
    <select id="changSize" onchange="jump(1)">
            <option ${pageBean.pageSize==2?"selected":""} value="2">每页2/条</option>
            <option ${pageBean.pageSize==4?"selected":""} value="4">每页4/条</option>
            <option ${pageBean.pageSize==6?"selected":""} value="6">每页6/条</option>
            <option ${pageBean.pageSize==8?"selected":""} value="8">每页8/条</option>
    </select>
    当前页:${pageBean.pageNum}
    每页显示/${pageBean.pageSize}条
    共${pageBean.total}条
</body>
</html>
