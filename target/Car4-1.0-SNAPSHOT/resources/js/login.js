var passwordLength = 8;		//密码长度
var emailReg = /^\w+((-\w+)|(\.\w+))*@[A-Za-z0-9]+((\.-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;

var registerEmail =  $("#registerEmail");
var registerUserName = $("#registerUserName");
var registerPassword1 = $('#registerPassword');
var registerPassword2 = $('#registerPassword2');
var loginEmail = $("#loginEmail");
var loginPassword = $("#password");

//验证邮箱格式JS
function emailValidation(email) {
  return email.match(emailReg)
}

//验证密码长度
function passwordLengthValidation(password){
  return password < passwordLength
}

//验证邮箱是否存在
function emailExistingValidation(email){

  var isEmailExisting = false;

  $.ajax({
    type: 'post',
    url: ctx + '/register/validating/email',
    data: {
      'user_email':email
    },
    async: false,
    success: function(result) {

      if( result !== 0 ){
        isEmailExisting = true;
      }

    },
    error: function(xhr) {
        //中间发生异常，具体查看xhr.responseText
    }
  });

  return isEmailExisting;

}

//验证昵称是否存在
function userNameExistingValidation(user_name){
  var isExisting = false;
  $.ajax({

    type: 'post',
    url: ctx + '/register/validating/username',
    data: {
      'user_name':user_name
    },
    async: false,
    success: function(result) {

      if( result!==0 ){
        isExisting = true
      }

    },
    error: function(xhr) {

    }
  });

  return isExisting;
}

//用户注册填写完邮箱后验证邮箱格式是否正确以及该邮箱是否被注册过
registerEmail.blur(function () {
  if (!emailValidation(registerEmail.val())) {
    layer.msg("邮箱格式不正确！");
    registerEmail.focus();
  }else if( emailExistingValidation(registerEmail.val()) ){
    layer.msg("邮箱已存在！");
    registerEmail.focus();
  }
});

//用户注册填写完昵称后验证昵称是否被注册过
registerUserName.blur(function() {

  if( userNameExistingValidation(registerUserName.val()) ){
    layer.msg("该昵称已存在！");
    registerUserName.focus();
  }
});

//注册填写完密码后验证密码长度
registerPassword1.blur(function () {
  if ( passwordLengthValidation(registerPassword1.val().length) ) {
    layer.msg("密码不能小于" + passwordLength + "位");
    registerPassword1.focus();
  }
});

//注册时两个密码长度应该一致
registerPassword2.blur(function () {
  if ( registerPassword2.val() !== registerPassword1.val()) {
    layer.msg("两次密码不一致！");
    registerPassword2.focus();
  }
});

//注册脚本
function register() {

  var userInfo = {};
  userInfo.user_email = registerEmail.val();
  userInfo.user_password = registerPassword1.val();
  userInfo.user_name = registerUserName.val();

  console.log("user info:"+userInfo);

  $.ajax({
    type: "post",
    url: ctx + "/register/create",
    data: JSON.stringify(userInfo),
    contentType: "application/json",
    dataType : 'json',
    success: function (data) {
      if (data.resultCode === 200) {
        layer.msg("注册成功，请到邮箱中查询邮件激活账号！");
        $("#login-tab").trigger("click");
      }else{
        layer.msg(data.resultMessage);
      }
    },
    error: function () {
      layer.msg('请求出错，请重试！')
    }

  });

}

loginEmail.blur(function () {

  if (!emailValidation(loginEmail.val())) {
    layer.msg("邮箱格式不正确！");
    loginEmail.focus();
  }else if( !emailExistingValidation(loginEmail.val()) ){
    layer.msg("该邮箱未注册！");
    loginEmail.focus();
  }

});

