<li class=imgBox_list>
	<a href="goodsDetail?goods_no=${imgList[i].goods_no }"> 
       <img src=${imgList[i].img_name} alt=${imgList[i].img_name} />
       <span name="goods_name">${imgList[i].goods_nam}</span>
            					
       <c:choose>
           <c:when test="${imgList[i].discount_rate}>0"  >
            	<span><span id="discount_rate">+imgList[i].discount_rate +% &nbsp; </span> +Math.round(imgList[i].goods_price-(imgList[i].goods_price*(imgList[i].discount_rate/100))) +원 </span>
            	<span id="goods_price">+imgList[i].goods_price + </span>
           </c:when>
           <c:when test="${imgList[i].discount_rate}==0" >
            	<span id="goods_price_woDC">${imgList[i].goods_price}원 </span>
           </c:when>
        </c:choose>
            					
     </a>
</li>