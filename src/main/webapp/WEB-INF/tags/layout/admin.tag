<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<%@ attribute name="main" fragment="true" description="主体信息，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="css" fragment="true" description="需要引入的额外的css信息或自定义的css，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="js" fragment="true" description="需要引入的额外的js信息或自定义的js，注意：用jsp:attribute调用，不要把此标签设置到属性上" %>
<%@ attribute name="menu" type="java.lang.String" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>后台管理 - 法米拉服装服饰官网</title>
    <common:css-st></common:css-st>
    <jsp:invoke fragment="css"/>
</head>
<body>
    <wt:nav-admin></wt:nav-admin>
    <div class="page-container">
        <wt:sidebar-admin menu="${menu}"></wt:sidebar-admin>

        <jsp:invoke fragment="main"/>

    </div>

    <div class="modal fade">

    </div><!-- /.modal -->

    <common:js-st></common:js-st>
    <jsp:invoke fragment="js"/>
    <script>
        (function() {
            $('.fancybox').fancybox();

            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout

            KindEditor.ready(function(K) {
                window.editor = K.create('.editor', {
                    items : [ 'formatblock', 'fontname', 'fontsize',
                        '|', 'forecolor', 'hilitecolor', 'bold', 'italic',
                        'underline', 'strikethrough', '|', 'justifyleft',
                        'justifycenter', 'justifyright', '|',
                        'insertorderedlist', 'insertunorderedlist',
                        'indent', 'outdent','|', 'clearhtml' , 'fullscreen'],
                    langType : 'zh_CN',
                    width : '100%',
                    afterBlur: function(){  //利用该方法处理当富文本编辑框失焦之后，立即同步数据
                        KindEditor.sync(".editor") ;
                    }
                });
            });

            $('#setPassword').on('click', function(e){
                e.preventDefault();
                var $this = $(this);
                $.get($this.attr('href'), function(data){
                    $('div.modal').html(data).modal('show');
                });
            });

        })();
    </script>
</body>
</html>