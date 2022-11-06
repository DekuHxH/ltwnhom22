<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="/view/client/includes/header.jsp" %> 
  <!-- 404 error section -->
  <section id="aa-error">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-error-area">
            <h2>404</h2>
            <span>Xin lỗi! Không tìm thấy trang</span>
            <a href="${pageContext.request.contextPath}/"> Trở về trang chủ</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / 404 error section -->
<!--  end content-->
  
	<%@ include file="/view/client//includes/footer.jsp" %>   

 	<%@ include file="/view/client//includes/script.jsp" %> 
  </body>
</html>