function show_upload_li(that) {
    $("#entity-cover-add").show();
    $("#entity-cover img").hide();
    $(that).text("使用旧封面图");
    $(that).attr("onclick", "use_old_cover(this)")
}

function load_old_image(uri, imageName) {
    $("#entity_picture").html(imageName);
    $("#upload-entity-cover").hide();
    $("#entity-cover img").attr("src", ctx +"/"+ uri+"/"+imageName);
    $("#cover_uploaded_show").attr("itemprop", imageName)
    $("#entity-cover").show();
}