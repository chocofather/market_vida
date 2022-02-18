$(function () {
  checkAllGoods();
  deleteGoodsQna();
});

/* 전체상품 체크 */
function checkAllGoods() {
  $("#checkAll").on("click", function () {
    $(".qna_row_chckbox").each(function (i) {
      console.dir($(this));
      $(this)[0].checked = $("#checkAll")[0].checked;
    });
  });
}

// 상품 삭제
function deleteGoodsQna() {
  $("#qnaDelete").on("click", function () {
    var checkedList = [];

    if ($(".qna_row_chckbox:checked").length == 0) {
      alert("선택된 상품이 없습니다.");
    } else {
      if (confirm("정말 삭제하시겠습니까?") == true) {
        $(".qna_row_chckbox:checked").each(function (i) {
          checkedList.push($(this).val());
          console.log($(this).val());
          console.log(checkedList);
        });

        $.ajax({
          url: "./deleteGoodsQnaAjax",
          type: "GET",
          traditional: true,
          data: { goods_qna_no: checkedList },
          dataType: "text",
          success: function (result) {
            alert("삭제 완료");
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
    }
  });
}
