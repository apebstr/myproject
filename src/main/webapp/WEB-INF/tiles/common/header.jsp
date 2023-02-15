<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$('#btnJoin').click(function() {
			$('#frm').attr('action', '${pageContext.request.contextPath}/members/join.do').submit();
		});
	});
</script>

  <div class="b-example-divider"></div>

  <header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="${pageContext.request.contextPath}/index.do" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
  <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  <path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
</svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="#" class="nav-link px-2 text-secondary"></a></li>
          <li><a href="${pageContext.request.contextPath}/list.do" class="nav-link px-2 text-white">Board</a></li>
        </ul>


        <div class="text-end">
          <p class="nav-link px-2 text-white"></p>
          <form name="frm" id="frm" method="GET">
	          <button type="button" id ="btnLogin" class="btn btn-outline-light me-2">Login</button>
	          <button type="button" id="btnJoin" class="btn btn-warning">Sign-up</button>
          </form>
        </div>
      </div>
    </div>
  </header>