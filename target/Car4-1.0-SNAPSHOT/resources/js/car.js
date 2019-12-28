//上传图片的功能
//初始化fileinput控件（第一次初始化）
function initFileInput2(ctrlName, uploadUrl, tips) {
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
        validateInitialCount: true,
        dropZoneTitle:tips,
        enctype: 'multipart/form-data',
        maxFileCount: 1 //表示允许同时上传的最大文件个数
    }).on("filebatchselected", function(event, files) {

        picture_selected_tips();

    });

    //用户选择完图片后的事件 - 提示用户点击上传按钮
    function picture_selected_tips() {
        var upload = $(".fa-upload");
        upload.parent("a").attr("data-toggle","tooltip").attr("data-placement","top");
        upload.parent("a").attr("title","确认无误之后请点击上传按钮");
        upload.parent("a").tooltip("show");
    }

    //导入文件上传完成之后的事件，预览结果并显示上传成功
    control.on("fileuploaded", function (event, data, previewId, index) {
        control.modal("hide");
        $("#entity_picture").html(data.response.file_name);

        layer.msg("上传成功！")
    });
}
