<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ include file="/view/client/includes/header.jsp" %> 
<c:url value = "/view/client" var="url"/>


  
  <!-- Start slider -->
  <section id="aa-slider">
    <div class="aa-slider-area">
      <div id="sequence" class="seq">
        <div class="seq-screen">
          <ul class="seq-canvas">
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/slide_1.jpg" alt="rau cu img" />
              </div>
              <div class="seq-title">
               <span data-seq>Giảm giá lên đến 25%</span>                
                <h2 data-seq>Các Loại Hạt Bổ Dưỡng </h2>                
                <p data-seq>Các loại hạt tại của hàng luôn luôn được tuyển chọn,và các mặt hàng luôn đảm bảo chất lượng.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">Xem sản phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/slide_2.jpg" alt="Wristwatch slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Giảm giá lên đến15%</span>                
                <h2 data-seq>Rau Củ</h2>                
                <p data-seq>Rau củ quả được trồng đảm bảo không thuốc hóa học , đảm bảo chất lương xanh sạch và an toàn.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">Xem sản phẩm</a>
              </div>
            </li>
            <!-- single slide item -->
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/slide_3.jpg" alt="Women Jeans slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>giấm giá lên đến 30%</span>                
                <h2 data-seq>Trái cây</h2>                
                <p data-seq>Trái cây tại cửa hàng đa dạng về loại hàng, luôn đảm bảo tính an toàn và chất lượng lên hàng đầu.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">Xem sản phẩm</a>
              </div>
            </li>
            <!-- single slide item -->           
            <li>
              <div class="seq-model">
                <img data-seq src="${url}/images/slide_4.jpg" alt="Shoes slide img" />
              </div>
              <div class="seq-title">
                <span data-seq>Giảm giá lên đến 25%</span>                
                <h2 data-seq>Mật Ong Và Tinh Dầu</h2>                
                <p data-seq>Là 2 sản phẩm mới bên cửa hàng của chúng tôi,sản phẩm đã được kiểm định và cấp phép về an toàn.</p>
                <a data-seq href="#" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
              </div>
            </li>        
          </ul>
        </div>
        <!-- slider navigation btn -->
        <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
          <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
          <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
        </fieldset>
      </div>
    </div>
  </section>
  <!-- / slider -->
  
  
   
  <!-- Start Promo section -->
  <section id="aa-promo">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-promo-area">
            <div class="row">
              <!-- promo left -->
              <div class="col-md-5 no-padding">                
                <div class="aa-promo-left">
                  <div class="aa-promo-banner">                    
                    <img src="${url}/images/section1_tc.jpg" alt="img">                    
                    <div class="aa-prom-content">
                      <span>Giảm giá 35%</span>
                      <h4><a href="#">Dâu tây Đà Lạt</a></h4>                      
                    </div>
                  </div>
                </div>
              </div>
              <!-- promo right -->
              <div class="col-md-7 no-padding">
                <div class="aa-promo-right">
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="${url}/images/section2_tc.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>Sản Phẩm độc quyền</span>
                        <h4><a href="#">Hạt tiêu DakLak</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="${url}/images/section3_tc.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>Sản phẩm nhập khẩu</span>
                        <h4><a href="#">Cherry Mỹ</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="${url}/images/section4_tc.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>Giảm giá 20%</span>
                        <h4><a href="#">Tinh Dầu Sả</a></h4>                        
                      </div>
                    </div>
                  </div>
                  <div class="aa-single-promo-right">
                    <div class="aa-promo-banner">                      
                      <img src="${url}/images/section5_tc.jpg" alt="img">                      
                      <div class="aa-prom-content">
                        <span>Sản phẩm độc quyền</span>
                        <h4><a href="#">Mật ong rừng Tây Bắc</a></h4>                        
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Promo section -->
  
  
  
  <!-- Products section -->
  <section id="aa-product">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-product-area">
              <div class="aa-product-inner">
                <!-- start prduct navigation -->
                 <ul class="nav nav-tabs aa-products-tab">
                    <li class="active"><a href="#raucu" data-toggle="tab">Rau củ</a></li>
                    <li><a href="#traicay" data-toggle="tab">Trái cây</a></li>
                    <li><a href="#hat" data-toggle="tab">Các loại hạt</a></li>
                    <li><a href="#khac" data-toggle="tab">Khác</a></li>
                  </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <!-- Start men product category -->
                    <div class="tab-pane fade in active" id="raucu">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                        <c:forEach items="${product_raucu}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                             
						<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                           <c:if test="${product.discount != 0}">
	                  		<!-- product badge -->
	                  		<span class="aa-badge aa-sale">- ${product.discount}%</span>
	                 	 </c:if>
                        </li>
                        </c:forEach>
                         
                      </ul>
                     
                    </div>
                    <!-- / men product category -->
                    <!-- start women product category -->
                    <div class="tab-pane fade" id="hat">
                       <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_hat}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                             	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                        <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                      
                    </div>
                    <!-- / women product category -->
                    <!-- start sports product category -->
                    <div class="tab-pane fade" id="traicay">
                      <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_traicay}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                       <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                     
                    </div>
                    <!-- / sports product category -->
                    <!-- start electronic product category -->
                    <div class="tab-pane fade" id="khac">
                       <ul class="aa-product-catg">
                        <!-- start single product item -->
                         <c:forEach items="${product_khac}" var="product" end="7">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                            <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                         
                      </ul>
                      
                    </div>
                    <!-- / electronic product category -->
                  </div>
                  <div class="more-product">
                  	 <a class="aa-browse-btn" href="${pageContext.request.contextPath}/view/client/product">Xem tất cả sản phẩm<span class="fa fa-long-arrow-right"></span></a>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Products section -->
  <!-- banner section -->

  <section id="aa-banner">
    <div class="container">
      <div class="row">
        <div class="col-md-12">        
          <div class="row">
            <div class="aa-banner-area">
            <a href="#"><img src="${url}/images/banner_tc.jpg" alt="banner trang chủ"></a>
          </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  
  <!-- popular section -->
 <section id="aa-popular-category">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="aa-popular-category-area">
              <!-- start prduct navigation -->
             <ul class="nav nav-tabs aa-products-tab">
                <li class="active"><a href="#sanphammoi" data-toggle="tab">Sản Phẩm Mới</a></li>
                <li><a href="#sanphambanchay" data-toggle="tab">Sản Phẩm Bán Chạy</a></li>
                <li><a href="#sanphamgiamgia" data-toggle="tab">Sản Phẩm Giảm Giá</a></li>                    
              </ul>
              <!-- Tab panes -->
              <div class="tab-content">
                <!-- Start men popular category -->
                <div class="tab-pane fade in active" id="sanphammoi">
                  <ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                   	 <c:forEach items="${product_new}" var="product">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                             <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                     <!-- start single product item -->
                                                                                         
                  </ul>
                
                </div>
                <!-- / popular product category -->
                
                <!-- start featured product category -->
                <div class="tab-pane fade" id="sanphambanchay">
                	<ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                   	 <c:forEach items="${product_banchay}" var="product">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                            	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                         
                           <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                     <!-- start single product item -->
                                                                                         
                  </ul>
                 
                </div>
                <!-- / featured product category -->

                <!-- start latest product category -->
                <div class="tab-pane fade" id="sanphamgiamgia">
                  
                  	<ul class="aa-product-catg aa-popular-slider">
                    <!-- start single product item -->
                   	 <c:forEach items="${product_sale}" var="product">
                        <li>
                          <figure>
                            <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/images/products/img-test/${product.image_link}" alt="polo shirt img"></a>
                            <a class="aa-add-card-btn"href="${pageContext.request.contextPath}/view/client/add-cart?product-id=${product.id}"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
                              <figcaption>
                              <h4 class="aa-product-title"><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}">${product.name }</a></h4>
                             	<c:choose>
						<c:when test="${product.discount == 0}">
	                      <span class="aa-product-price">${product.price} VNĐ</span><span class="aa-product-price"></span>
	                    </c:when>
	                    <c:otherwise>
	                      <c:forEach items="${productlist1}" var="product1">
	                      	<c:if test="${product1.id == product.id}">
		                      <span class="aa-product-price">${product1.price} VNĐ</span>
		                      <span class="aa-product-price"><del>${product.price} VNĐ</del></span>
	                      </c:if>
	                      </c:forEach>
	                    </c:otherwise>
	                     </c:choose>
                            </figcaption>
                          </figure>                        
                        
                             <c:if test="${product.discount != 0}">
	                  	<!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                  </c:if>
                        </li>
                        </c:forEach>
                        <!-- start single product item -->
                     <!-- start single product item -->
                                                                                         
                  </ul>
                </div>
                <!-- / latest product category -->              
              </div>
               <div class="more-product">
                 	 <a class="aa-browse-btn" href="${pageContext.request.contextPath}/view/client/product">Xem Tất Cả Sản Phẩm <span class="fa fa-long-arrow-right"></span></a>
               </div>
            </div>
          </div> 
        </div>
      </div>
    </div>
  </section>
  <!-- / popular section -->
  
  
  
  <!-- Support section -->
  <section id="aa-support">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-support-area">
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-truck"></span>
                <h4>FREE SHIPPING</h4>
                <P>Miễn phí giao hàng trong phạm vi 10 km</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-clock-o"></span>
                <h4>Giao hàng nhanh </h4>
                <P>Giao hàng nhanh trong vòng 2 giờ ở tp. Hồ Chí Minh</P>
              </div>
            </div>
            <!-- single support -->
            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="aa-support-single">
                <span class="fa fa-phone"></span>
                <h4>Hỗ trợ 24/7</h4>
                <P>Hỗ trợ tư vấn và đặt hàng mọi lúc mọi nơi, đảm bảo thời gian cho khách hàng.</P>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Support section -->`
  
  
  
  <%@ include file="/view/client//includes/footer.jsp" %>   

  <%@ include file="/view/client//includes/script.jsp" %> 

  </body>
</html>