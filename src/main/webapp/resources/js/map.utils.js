function clearMarker(e) {
  mapObj.remove(marker);
  $("#entityLongitudeAndLatitudeDiv").html("请在右侧地图中选择地点");
  $("#entity_address").val("");
  if (typeof(infoWindow) !== "undefined") {
    infoWindow.close()
  }
}

var mapObj = new AMap.Map('location-map', {
  mapStyle: 'amap://styles/f4faf9c2af33f4e097c784a9a58077e4', //样式URL
  zoom: 12
});

var geocoder;
AMap.service('AMap.Geocoder', function () {//回调函数
  //实例化Geocoder
  geocoder = new AMap.Geocoder({
    city: "010"//城市，默认：“全国”
  });
});


var marker;
var infoWindow;
var address;
var _onClick = function (e) {

  if (marker != null) {
    clearMarker(e)
  }

  geocoder.getAddress(e.lnglat, function (status, result) {

    if (status === 'complete' && result.info === 'OK') {

      //获得了有效的地址信息:
      address = result.regeocode.formattedAddress;

      var province = result.regeocode.addressComponent.province;
      var city = result.regeocode.addressComponent.city;
      var district = result.regeocode.addressComponent.district;

      var addressWithoutPrefix = address.replace(province,"").replace(city,"").replace(district,"");

      $("#location").val(addressWithoutPrefix);
      $("#province").val(province);
      $("#city").val(city);
      $("#district").val(district);
      $("#longitude").val(e.lnglat.toString().split(",")[0]);
      $("#latitude").val(e.lnglat.toString().split(",")[1]);

      console.log("city:"+city+"\t"+$("#city").outerHTML)

      mark(e.lnglat, addressWithoutPrefix)

    } else {
      //获取地址失败
    }
  });


};
mapObj.on('click', _onClick);//绑定

function mark(lnglat, addressWithoutPrefix) {

  marker = new AMap.Marker({
    position: lnglat,
    map: mapObj
  });

  infoWindow = new AMap.InfoWindow({
    content: '<div class=\"mapDiv\" onclick=\"clearMarker()\">' + addressWithoutPrefix + '</div>',
    offset: new AMap.Pixel(0, -35)
  });

  infoWindow.open(mapObj, lnglat);

  mapObj.setCenter(lnglat)

}