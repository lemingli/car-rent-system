document.write("<script src='/resources/js/jquery.ellipsis.min.js'></script>");
document.write("<script src='/resources/fileinput/fileinput.js'></script>");
document.write("<script src='/resources/fileinput/zh.js'></script>");
document.write("<script src='/resources/fileinput/themes/explorer-fa/theme.js'></script>");
document.write("<script src='/resources/fileinput/themes/fa/theme.js'></script>");

//emoji表情输入
$(function () {
  window.emojiPicker = new EmojiPicker({
    emojiable_selector: '[data-emojiable=true]',
    assetsPath: ctx+'/resources/js/emoji-picker/img/',
    popupButtonClasses: 'fa fa-smile-o'
  });
  window.emojiPicker.discover();
});

//上传头像
function initFileInput(ctrlName, uploadUrl) {
  var control = $('#' + ctrlName);
  //初始化上传控件的样式
  control.fileinput({
    language: 'zh', //设置语言
    uploadUrl: uploadUrl, //上传的地址
    allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
    showUpload: true, //是否显示上传按钮
    showCaption: false,//是否显示标题
    browseClass: "btn btn-primary", //按钮样式
    theme: "fa",
    dropZoneEnabled: true,//是否显示拖拽区域
    enctype: 'multipart/form-data',
    maxFileCount: 1 //表示允许同时上传的最大文件个数
  }).on("filebatchselected", function (event, files) {

    var upload_fa = $(".fa-upload");
    upload_fa.parent("a").attr("data-toggle", "tooltip").attr("data-placement", "top");
    upload_fa.parent("a").attr("title", "确认无误之后请点击上传按钮");
    upload_fa.parent("a").tooltip("show");

  });

  //导入文件上传完成之后的事件
  $("#input-b1").on("fileuploaded", function (event, data, previewId, index) {

    $("#input-b1").modal("hide");
    $("#entity_picture").html(data.response.file_name);

    layer.msg("上传成功！");
    if (data.response.success === 1) {
      location.reload()
    }
  });
}

initFileInput("input-b1", ctx+"/users/upload_avatars");

//日期选择
$('#birthday-date-input').datepicker({
  format: 'yyyy-mm-dd',
  language: "zh-CN",
  defaultViewDate: {year: 1993, month: 9, day: 19}
});
