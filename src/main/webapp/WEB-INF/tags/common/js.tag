<%@tag pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/taglibs.jsp" %>
<script src="${ctx}/resources/js/jquery.js"></script>
<script src="${ctx}/resources/js/bootstrap.js"></script>
<script src="${ctx}/resources/js/animatescroll.min.js"></script>
<script src="${ctx}/resources/js/html5media.min.js"></script>
<script src="${ctx}/resources/mt/fancybox/jquery.fancybox.js"></script>
<script src="${ctx}/resources/js/menu.js"></script>
<script src="${ctx}/resources/mt/js/toastr.js" type="text/javascript"></script>
<script src="${ctx}/resources/galleria/galleria-1.4.2.min.js"></script>
<script src="${ctx}/resources/galleria/themes/classic/galleria.classic.min.js"></script>
<script src="${ctx}/resources/slide/responsiveslides.js"></script>
<script src="${ctx}/resources/js/app.js"></script>
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
    $('div.bg').on('mouseover', function(e){
        $('div.arrow-left').show(300);
        $('div.arrow-right').show(300);
    });

    $('div.bg').on('mouseleave', function(e){
        $('div.arrow-left').hide(300);
        $('div.arrow-right').hide(300);
    });


    $('.weixin').on('mouseover', function(e){
        var $this = $(this);
        $('#'+ $this.data('id')).removeClass('hide').show();
    });

    $('.weixin').on('mouseleave', function(e){
        var $this = $(this);
        $('#'+ $this.data('id')).hide();
    });
</script>