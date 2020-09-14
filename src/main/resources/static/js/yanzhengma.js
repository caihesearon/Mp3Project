/*������֤  ר���Զ��崥��js*/
/*�޸ĺ�˷���URL  ��id�󶨱��*/
$.ajax({
    url: "GeetestOnload?t=" + (new Date()).getTime(), // ���������ֹ����
    type: "get",
    dataType: "json",
    success: function (data) {

        initGeetest({
            gt: data.gt,
            challenge: data.challenge,
            new_captcha: data.new_captcha, // ����崻�ʱ��ʾ������֤���崻�
            offline: !data.success, // ��ʾ�û���̨��⼫��������Ƿ�崻���һ�㲻��Ҫ��ע
            product: "popup", // ��Ʒ��ʽ��������float��popup
            width: "100%"
            // �������ò�����μ���http://www.geetest.com/install/sections/idx-client-sdk.html#config
        }, handler2);
    }
});


var handler2 = function (captchaObj) {
    //$("#submit2").click(function () {
    captchaObj.onSuccess(function () {
        var result = captchaObj.getValidate();
        if (!result) {
            $("#notice2").show();
            setTimeout(function () {
                $("#notice2").hide();
            }, 2000);

        } else {
            $.ajax({
                url: 'login',
                type: 'POST',
                dataType: 'json',
                data: {
                    username: $('#userName').val(),
                    password: $('#passWord').val(),
                    geetest_challenge: result.geetest_challenge,
                    geetest_validate: result.geetest_validate,
                    geetest_seccode: result.geetest_seccode
                },
                success: function (data) {
                    if (data.status === 'success') {
                        alert("成功");
                        //$("#form1").submit();
                    } else if (data.status === 'fail') {
                        alert('失败');
                    }
                }
            })
        }
        e.preventDefault();
    });
    // ����֤��ӵ�idΪcaptcha��Ԫ���ͬʱ��������input��ֵ���ڱ��ύ
    captchaObj.appendTo("#captcha2");
    captchaObj.onReady(function () {
        $("#wait2").hide();
    });
    // ����ӿڲο���http://www.geetest.com/install/sections/idx-client-sdk.html
};
 