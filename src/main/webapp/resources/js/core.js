/**
 * Created by fangshuai on 2015-04-14-0014.
 */

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