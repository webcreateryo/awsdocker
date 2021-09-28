$(function() {
  $(".hamburger").click(function() {
  //h2要素のsampleクラスをon/offで切り替える
  $(".pushy-left").toggleClass("pushy-open");
  //p要素のクラスをon/offで切り替える
  $("body").toggleClass("pushy-active");
});

$(".site-overlay").click(function() {
//h2要素のsampleクラスをon/offで切り替える
$(".pushy-left").toggleClass("pushy-open");
//p要素のクラスをon/offで切り替える
$("body").toggleClass("pushy-active");
});

});
