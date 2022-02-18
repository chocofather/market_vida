$(function () {
  calculateAmount();
  adjustQty();
  addMyfavorite();
  chooseTab();
  writeGoodsQna();
  showQnaDetail();
  modifyQnaForm();
  deleteQna();
  showReview();
});

/* 문의상세보기 수정 */
function modifyQnaForm() {
  var qnaModify = document.querySelectorAll(".qnaModify");

  qnaModify.forEach((modify) => {
    modify.addEventListener("click", () => {
      var goods_qna_no = modify.previousElementSibling.value;

      $.ajax({
        url: "./modifyGoodsQna",
        type: "get",
        traditional: true,
        data: { goods_qna_no: goods_qna_no },
        dataType: "json",
        success: function (result) {
          console.dir(result);
          console.log(result.goodsQnaDto.goods_qna_contents);

          $("#goods_qna_title")[0].value = result.goodsQnaDto.goods_qna_title;
          $("#goods_qna_contents")[0].value = result.goodsQnaDto.goods_qna_contents;
          $(".quaModal")[0].classList.toggle("show");
          $("body")[0].style.overflow = "hidden";

          /* 수정 버튼 클릭하면 ajax로 controller 정보전달 */
          $("#modalWriteButton").on("click", function () {
            $.ajax({
              url: "./modifyGoodsQnaOk",
              type: "get",
              traditional: true,
              data: {
                goods_qna_no: goods_qna_no,
                goods_qna_title: $("#goods_qna_title")[0].value,
                goods_qna_contents: $("#goods_qna_contents")[0].value,
              },
              dataType: "html",
              success: function (result) {
                console.log(result);
                location.reload();
              },
              error: function (xhr) {
                console.log(xhr.status);
              },
            });
          });
        },
        error: function (xhr) {
          console.log(xhr.status);
        },
      });
    });
  });
}

/* qna 삭제하기 */
function deleteQna() {
  var qnaDelete = document.querySelectorAll(".qnaDelete");

  qnaDelete.forEach((item) => {
    item.addEventListener("click", () => {
      var goods_qna_no = item.parentElement.children.goods_qna_no.value;
      console.log(goods_qna_no);

      if (confirm("정말 삭제하시겠습니까?") == true) {
        $.ajax({
          url: "./deleteGoodsQna",
          type: "get",
          traditional: true,
          data: { goods_qna_no: goods_qna_no },
          dataType: "html",

          success: function (result) {
            location.reload();
            console.log(result);
          },
          error: function (xhr) {
            console.log(xhr.status);
          },
        });
      } else {
        return;
      }
    });
  });
}

/* 리뷰 상세보기 */
function showReview() {
  var review_row = document.querySelectorAll(".review_row");
  var reviews_qna_contents = document.querySelectorAll(".reviewContents");
  review_row.forEach((row) => {
    row.addEventListener("click", () => {
      var reviewDetail = row.rowIndex + 1;
      reviews_qna_contents.forEach((cont) => {
        if (cont.rowIndex == reviewDetail) {
          cont.className = "reviewContents active";
        } else {
          cont.className = "reviewContents";
        }
      });
    });
  });
}

/* 문의 상세보기 */
function showQnaDetail() {
  var qna_row = document.querySelectorAll(".qna_row");
  var goods_qna_contents = document.querySelectorAll(".goods_qna_contents");

  qna_row.forEach((row) => {
    row.addEventListener("click", () => {
      var crew_id = $("#crew_id").val();
      var title = row.firstElementChild.innerText;
      var rowId = row.cells[1].innerText;
      //console.dir(row);
      //console.log(crew_id);
      //console.log(rowId);
      if (title != "비밀글입니다") {
        var qnaDetail = row.rowIndex + 1;
        goods_qna_contents.forEach((cont) => {
          if (cont.rowIndex == qnaDetail) {
            cont.className = "goods_qna_contents active";
          } else {
            cont.className = "goods_qna_contents";
          }
        });
      } else if (
        (title == "비밀글입니다" && crew_id == rowId) ||
        crew_id == "admin"
      ) {
        var qnaDetail = row.rowIndex + 1;
        goods_qna_contents.forEach((cont) => {
          if (cont.rowIndex == qnaDetail) {
            cont.className = "goods_qna_contents active";
          } else {
            cont.className = "goods_qna_contents";
          }
        });
      } else if (title == "비밀글입니다" && crew_id != rowId) {
        alert("비밀글입니다");
      }
    });
  });
}

/* 문의 모달창 */
function writeGoodsQna() {
  /* 문의하기 버튼 누르면 */
  $("#writeGoodsQna").on("click", function () {
    $(".quaModal")[0].classList.toggle("show");
    $("body")[0].style.overflow = "hidden";

    /* 등록버튼 누르면 */
    $("#modalWriteButton").on("click", function () {
      var qna_lock;
      if ($("#secretYN")[0].checked == true) {
        qna_lock = 1;
      } else if ($("#secretYN")[0].checked == false) {
        qna_lock = 0;
      }

      var goods_no = $("#goods_no").val();
      var goods_title = $("#goods_qna_title").val();
      var goods_contents = $("#goods_qna_contents").val();
      var crew_id = $("#crew_id").val();
      var crew_no = $("#crew_no").val();

      if (
        $("#goods_qna_title")[0].value != null &&
        $("#goods_qna_contents")[0].value != null
      ) {
        $.ajax({
          url: "./writeGoodsQna",
          type: "get",
          traditional: true,
          data: {
            goods_no: goods_no,
            goods_qna_title: goods_title,
            goods_qna_contents: goods_contents,
            qna_lock: qna_lock,
            crew_id: crew_id,
            crew_no: crew_no
          },
          dataType: "html",
          success: function (result) {
            if (result == "writeSuccess") {
              location.reload();
              console.log(result);
              location.reload();
            }
          },
          error: function (xhr) {
            console.log(xhr.status);
          },
        });
      } else {
        alert("내용을 입력해주세요");
      }
    });
  });

  /* 취소버튼 눌렀을 때 */
  $("#modalBackButton").on("click", function () {
    console.dir($("#modalBackButton"));
    $(".quaModal")[0].classList.toggle("show");
    $("body")[0].style.overflow = "auto";
  });
}

/* 가격 계산 */
function calculateAmount() {
  //console.dir($('#goodsAmount'));
  $("#goodsAmount")[0].toLocaleString("ko-KR");
  $("#goodsAmount")[0].innerText =
    $("#inputQty")[0].valueAsNumber * $("#discountPrice")[0].textContent;
  $("#goodsAmount")[0].style.fontSize = "xx-large";
}

/* 수량 조정 */
function adjustQty() {
  var inputQty = $("#inputQty")[0];

  $("#minusQty").on("click", function () {
    if (inputQty.valueAsNumber > 1) {
      inputQty.valueAsNumber -= 1;
    }

    calculateAmount();
  });

  $("#plusQty").on("click", function () {
    if (inputQty.valueAsNumber < 50) {
      inputQty.valueAsNumber += 1;
    } else if (inputQty.valueAsNumber >= 50) {
      alert("최대 구매수량은 50입니다.");
    }

    calculateAmount();
  });
}

/* 찜하기 */
function addMyfavorite() {
  var goodsNo = document.getElementById("goodsNo").innerText;
  // 버튼클릭하면 상품번호보내기
  $("#toMyfavorite").on("click", function () {
    $("#toMyfavorite")[0].style.backgroundImage =
      'url("../resources/img/filledheart.png")';
    $.ajax({
      url: "/market_vida/mypage/myFavoriteList",
      type: "POST",
      data: JSON.stringify(goodsNo),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success: function (data) {},
    });
    alert("찜 목록에 추가됐습니다.");
  });
}

/* 장바구니 */
function addCart() {}

/* 상품 상세 정보 탭 */
function chooseTab() {
  var tabs = document.querySelectorAll("[data-tab-target]");
  var tabItems = document.querySelectorAll("[data-tab-content]");

  tabs.forEach((tab) => {
    tab.addEventListener("click", () => {
      var target = document.querySelector(tab.dataset.tabTarget);
      tabItems.forEach((items) => {
        items.classList.remove("active");

        tabs.forEach((tab2) => {
          tab2.className = "tab";
        });
      });

      tab.className = "tab active";
      target.classList.add("active");
    });
  });
}
