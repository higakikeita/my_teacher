$(function () {
  var $subNav = $('.pickup-section__header--list');
  $('.hoverNav').hover(
    function () {
      // stop関数を追加
      $subNav.stop().slideDown();
    },
    function () {
      // stop関数を追加
      $subNav.stop().slideUp();
    }
  );
});
