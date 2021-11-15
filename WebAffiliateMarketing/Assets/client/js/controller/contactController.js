var contact = {
    init: function () {
        contact.registerEvents();
    },
    registerEvents: function () {
        $('#btnSend').off('click').on('click', function () {
            var name = $('#txtName').val();
            var mobile = $('#txtMobile').val();
            var email = $('#txtEmail').val();
            var address = $('#txtAddress').val();
            var content = $('#txtContent').val();

            $.ajax({
                url: '/Contact/Send',
                type: 'POST',
                dataType: 'json',
                data: {
                    name: name,
                    mobile: mobile,
                    email: email,
                    address: address,
                    content: content
                },
                success: function (res) {
                    if (res.status == true) {
                        window.alert('Tin nhắn của bạn đã được gửi đi!');
                        contact.resetForm();
                    }
                }
            });
        });
    },
    resetForm: function () {
        $('#txtName').val('');
        $('#txtMobile').val('');
        $('#txtEmail').val('');
        $('#txtAddress').val('');
        $('#txtContent').val('');
    }
}
contact.init();