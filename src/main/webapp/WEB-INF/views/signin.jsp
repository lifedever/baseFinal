<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<layout:front menu="none">
    <jsp:attribute name="css">

    </jsp:attribute>
    <jsp:attribute name="main">
        <div class="row margin100-t">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <form method="post" action="${ctx}/checkLogin">
                    <div class="form-group">
                        <label for="username">用户名</label>
                        <input type="text" name="username" class="form-control" id="username" placeholder="输入您的用户名">
                    </div>
                    <div class="form-group">
                        <label for="password">密码</label>
                        <input type="password" name="password" class="form-control" id="password" placeholder="输入您的密码">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" name="rememberMe" value="true"> remember me
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">登录</button>
                </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </jsp:attribute>
    <jsp:attribute name="js">
        <script>
            (function () {

            })();
        </script>
    </jsp:attribute>
</layout:front>
