window.addEventListener('DOMContentLoaded', function () {
  var mySwiper = new Swiper('.swiper-container', {
    autoHeight: false,
    loop: true,
    keyboard: true,
    // effect: 'coverflow',
    // slidesPerView: 3,
    autoplay: {
      delay: 3000,
      disableOnInteraction: false,
      reverseDirection: false
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev'
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true
    }
  });
}, false);
