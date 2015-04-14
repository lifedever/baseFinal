<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<script src="${ctx}/resources/mt/js/jquery.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${ctx}/resources/mt/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/jquery.backstretch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}/resources/mt/js/metronic.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/layout.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/tasks.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/kindeditor/kindeditor.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/kindeditor/lang/zh_CN.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/bootbox.min.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/toastr.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/js/jquery.form.js" type="text/javascript"></script>
<script src="${ctx}/resources/mt/fancybox/jquery.fancybox.js"></script>
<script src="${ctx}/resources/js/uploadPreview.min.js"></script>
<script>
    ctx = '${ctx}';
    var success = '${FLASH_SUCCESS}';
    var warning = '${FLASH_WARNING}';
    var info = '${FLASH_INFO}';
    var error = '${FLASH_ERROR}';
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-top-center"
    };
    if(success) {
        toastr.success(success);
    }
    if(error) {
        toastr.error(error);
    }
    if(info) {
        toastr.info(info);
    }
    if(warning) {
        toastr.warning(warning);
    }

    $('a.delete-data').on('click', function(e){
        e.preventDefault();
        var $this = $(this);
        if(confirm("确认删除吗？")) {
            location.href = $this.attr('href');
        }
    });

    $('a').tooltip();
</script>