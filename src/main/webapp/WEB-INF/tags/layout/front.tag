<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="main" fragment="true" description="主体信息，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="css" fragment="true" description="需要引入的额外的css信息或自定义的css，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="js" fragment="true" description="需要引入的额外的js信息或自定义的js，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="menu" description="菜单" required="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>测试项目</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name=“robots” CONTENT="INDEX,FOLLOW">
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <common:css></common:css>
    <jsp:invoke fragment="css"/>
    <script>
        ctx = '${ctx}';
        var success = '${flash_success}';
        var warning = '${flash_warning}';
        var info = '${flash_info}';
        var error = '${flash_error}';
    </script>
</head>
<body>
<layout:header menu="${menu}"/>
<jsp:invoke fragment="main"/>
<common:js></common:js>
<script type="text/javascript">

</script>

<jsp:invoke fragment="js"/>
</body>
</html>