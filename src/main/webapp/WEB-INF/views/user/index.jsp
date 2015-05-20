<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="none">
    <jsp:attribute name="css">

    </jsp:attribute>
    <jsp:attribute name="main">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">用户列表</div>
                    <div class="panel-body">
                        <table class="table">
                            <thread>
                                <tr>
                                    <th>序号</th>
                                    <th>用户名</th>
                                    <th>真实姓名</th>
                                    <th>邮箱</th>
                                </tr>
                            </thread>
                            <tbody>
                            <c:forEach items="${users}" var="user" varStatus="i">
                                <tr>
                                    <td>${i.index + 1}</td>
                                    <td>${user.username}</td>
                                    <td>${user.realname}</td>
                                    <td>${user.email}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </jsp:attribute>
</layout:front>
