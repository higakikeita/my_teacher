$(function () {
  //.accordion_oneの中の.accordion_headerがクリックされたら
  $('.pickup-section__header').click(function () {
    //クリックされた.accordion_oneの中の.accordion_headerに隣接する.accordion_innerが開いたり閉じたりする。
    $(this).next('.pickup-section__menu').slideToggle();
    $(this).toggleClass("open");
    //クリックされた.accordion_oneの中の.accordion_header以外の.accordion_oneの中の.accordion_headerに隣接する.accordion_oneの中の.accordion_innerを閉じる
    $('.pickup-section__header').not($(this)).next('.pickup-section__header--title').slideUp();
    $('.pickup-section__main').not($(this)).removeClass("open");
  });

  //閉じるボタンがクリックされたら
  $('a.close_btn').click(function () {
    //クリックされたa.close_btnの親要素の.accordion_oneの.accordion_innerを閉じる。
    $(this).parents('.pickup-section__menu').slideUp();
    $('.pickup-section__header').removeClass("open");
  });
});

// ページ内リンク
$(function () {
  // 閉じるボタンをクリックした場合に処理
  $('.a.close_btn').click(function () {
    // 移動先を0px上にずらす
    var adjust = 0;
    // スクロールの速度
    var speed = 500; // ミリ秒
    // アンカーの値取得
    var href = $(this).attr("href");
    // 移動先を取得
    var target = $(href == "#" || href == "" ? 'html' : href);
    // 移動先を調整
    var position = target.offset().top - adjust;
    // スムーススクロール
    $('body,html').animate({ scrollTop: position }, speed, 'swing');
    return false;
  });
});
