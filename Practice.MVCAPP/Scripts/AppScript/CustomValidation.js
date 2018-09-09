
function CustomValidation(PropertyName, PropertyValue, message) {
    $.validator.addMethod(PropertyName, function (value, element) {
        alert('call');
        var salary = $("#" + PropertyName).val();
        var result = false;
        if (salary >= PropertyValue) {
            return true;
        }
        return result;
    },message);
}