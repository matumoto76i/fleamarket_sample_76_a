$(function () {
  // マウスを当てた時に画像が透過される処理
  $(".content__btn__img").hover(
    function () {
      $(this).fadeTo(100, 0.5);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".dl__btn__link").hover(
    function () {
      $(this).fadeTo(100, 0.5);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".container__box__list").hover(
    function () {
      $(this).fadeTo(100, 0.5);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".link__icon__btn").hover(
    function () {
      $(this).fadeTo(100, 0.5);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".purchase__btn").hover(
    function () {
      $(this).fadeTo(100, 0.9);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".optionArea__left").hover(
    function () {
      $(this).fadeTo(100, 0.5);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".optionArea__right").hover(
    function () {
      $(this).fadeTo(100, 0.5);
    },
    function () {
      $(this).fadeTo(100, 1);
    }
  );
  $(".mypage__tabs__left").click(function () {
    $(".active").removeClass("active");
    $(this).addClass("active");
    $(".show").removeClass("show");
    // クリックしたタブからインデックス番号を取得
    const index = $(this).index();
    // クリックしたタブと同じインデックス番号をもつコンテンツを表示
    $(".mypage__tab__text").eq(index).addClass("show");
  });
});
