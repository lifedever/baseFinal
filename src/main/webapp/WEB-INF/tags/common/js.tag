<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<script src="${ctx}/resources/js/jquery.js"></script>
<script src="${ctx}/resources/js/bootstrap.js"></script>
<script src="${ctx}/resources/js/toastr.js" type="text/javascript"></script>
<script src="${ctx}/resources/js/app.js"></script>
<script>
    ctx = '${ctx}';
    var success = '${flash_success}';
    var warning = '${flash_warning}';
    var info = '${flash_info}';
    var error = '${flash_error}';
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "positionClass": "toast-top-center"
    };
    if (success) {
        toastr.success(success);
    }
    if (error) {
        toastr.error(error);
    }
    if (info) {
        toastr.info(info);
    }
    if (warning) {
        toastr.warning(warning);
    }
</script>