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

    captchaObj.onSuccess(function () {
        var result = captchaObj.getValidate();
        if (!result) {
            $("#notice2").show();
            setTimeout(function () {
                $("#notice2").hide();
            }, 200);

        } else {
            var userName = $('#adminName').val()
            var pwd = $('#adminPassword').val()
            if(userName == '' || pwd == ''){
                alert("请将用户名和密码填写完整");
                location.reload();
                return
            }
            $.ajax({
                url: 'login',
                type: 'POST',
                dataType: 'json',
                data: {
                    adminName: userName,
                    adminPassword: pwd,
                    geetest_challenge: result.geetest_challenge,
                    geetest_validate: result.geetest_validate,
                    geetest_seccode: result.geetest_seccode
                },
                success: function (data) {
                    console.log(data)
                    if (data.status == 200) {
                        location.href = "index"
                    } else {
                        alert('用户名或密码失败');
                        location.reload();
                    }
                }
            })
        }
        e.preventDefault();
    });
    captchaObj.appendTo("#captcha2");
    captchaObj.onReady(function () {
        $("#wait2").hide();
    });
};
 