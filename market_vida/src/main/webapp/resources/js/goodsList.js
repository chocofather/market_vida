  
	$(function() {
  		deleteGoods();
  		checkAllGoods();
  		updateGoods();
	});
	

  	
  	/* 전체상품 체크 */
  	function checkAllGoods(){
  		$('#checkAll').on('click', function(){
  			$('.goodsChkbox').each(function(i){
  				$(this)[0].checked = $('#checkAll')[0].checked;
  			
  			})
  		})	
  	
  	}
  	
  	/* 상품 수정 */
  	function updateGoods(){
  		$('#updateGoods').on('click', function(){
	  		if ($('.goodsChkbox:checked').length==0){
	  			alert("선택된 상품이 없습니다.")
	  		}else if($('.goodsChkbox:checked').length>1){
	  			alert("상품 수정은 1개 상품씩 가능합니다.")
	  		}else{
	  			location.href="./updateGoods";
	  		}
  		})
  	}
  	
  	
  	
  	/* 상품 삭제 */
  	function deleteGoods(){
		$('#deleteGoods').on('click', function(){
	  		var checkedList = [];
	  		
	  		if ($('.goodsChkbox:checked').length==0){
	  			alert("선택된 상품이 없습니다.")
	  		}else{
	  			
	  			if(confirm("정말 삭제하시겠습니까?") == true){
				
	  				$('.goodsChkbox:checked').each(function(i){
	  					checkedList.push($(this).val()); 
	  					console.log($(this).val());
	  					console.log(checkedList);
	  				});
	  		
	  		
			$.ajax({
				url: './deleteGoods',
				type: 'GET',
				traditional: true,
				data: {goods_no:checkedList},
				dataType:"text",
				success: function(result){
					if(result=="success"){
						alert("삭제 완료");
						location.reload();
						console.log(result);
					}
				},
				error: function(xhr){
						console.log(xhr.status);
				}
			}); 
				
			}else{
				return;
			}
	  		}
			
		});
  	}

