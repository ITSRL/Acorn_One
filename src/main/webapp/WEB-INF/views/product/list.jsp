<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<head>
   <title>order</title>
</head>
     <style>
        .btn-xl {
            padding: 40px 40px;
            font-size: 20px;
            border-radius: 10px;
            width:50%;
        }
        .card{
            margin-top: 5px;
            margin-right: 5px;
        }
        p{
        	display: inline-block;
        }
        
        section {
            display: none;}
 
        .a {
              display: none;
        }
 
        .b {
            display: inline-block;
            padding: 15px 25px;
            font-weight: 600;
            color: #bbb;
            border: 1px solid transparent;
        }
 
        .b:hover {
            color: #2e9cdf;
            cursor: pointer;
        }
 
        /*input 클릭시, label 스타일*/
        .a:checked + label {
        	  color: #555;
              border: 1px solid #ddd;
              border-top: 2px solid;
              border-bottom: 1px solid #ffffff;
        }
 
        #tab1:checked ~ #content1,
        #tab2:checked ~ #content2,
        #tab3:checked ~ #content3,
        #tab4:checked ~ #content4 {
            display: block;
       }

     </style>
     
     <body>
    
    
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
       <div class="container-fluid">
       <a class="navbar-brand" href="${pageContext.request.contextPath}/home.do">
       <svg xmlns="http://www.w3.org/2000/svg" width="50" height="40" fill="currentColor" class="bi bi-egg-fried" viewBox="0 0 16 16">
                     <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                     <path d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z"/>
                 </svg></a>
         <a class="navbar-brand" href="${pageContext.request.contextPath}/home.do">KIOSK</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
               			<c:choose>
               				<c:when test="${not empty sessionScope.id }">
               					<strong>${sessionScope.id }</strong>님이 로그인 중입니다.
               				</c:when>
               				<c:otherwise>
               					<strong>로그인이 필요합니다</strong>
               				</c:otherwise>
               			</c:choose>
               </a>
               <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
               		<c:choose>
               			<c:when test="${not empty sessionScope.id }">
               				<li><strong>${sessionScope.id }님이 로그인 중입니다.</strong></li>
                 			<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/info.do">회원정보 수정</a></li>
                 			<li><a class="dropdown-item" href="${pageContext.request.contextPath}/users/logout.do">로그아웃</a></li>               				
               			</c:when>
               			<c:otherwise>
                 			<li><a class="dropdown-item" href="${pageContext.request.contextPath}/signup_form.do">회원가입</a></li>
                 			<li><a class="dropdown-item" href="${pageContext.request.contextPath}/home.do">로그인</a></li>                 		
               			</c:otherwise>
               		</c:choose>
               </ul>
             </li>
           </ul>
         </div>
       </div>
     </nav>
     
     <div class="container">
     	<h1>추천메뉴</h1>
	    <div class="row">
    	<div class="card-group">
            <div class="col-lg-2">
            <div class="card">
			  <img src="../food/zza.PNG" class="card-img-top" alt="...">
			  <div class="card-body">
			  		<form action="insert.do">
					<input type="hidden" name="p_name" value="짜파게티" readonly="readonly">
					<input type="hidden" name="p_price" value="3000" readonly="readonly">
			  		<h5 class="card-title">짜파게티</h5>
					<p class="card-text">3,000원</p>
					<input type="submit" class="btn btn-primary" value="구매">
					</form>
			  </div>
			</div>
            </div>
    	</div>
    	</div>
     </div>
     
     <div class="row">
     <div class="col-lg-8">
     		<input id="tab1" class="a" type="radio" name="tabs" checked> 
		    <label for="tab1" class="b">전체메뉴</label>
		 
		    <input id="tab2" class="a" type="radio" name="tabs">
		    <label for="tab2" class="b">라면</label>
			
			<input id="tab3" class="a" type="radio" name="tabs">
		    <label for="tab3" class="b">식사</label>
		    
		    <input id="tab4" class="a" type="radio" name="tabs">
		    <label for="tab4" class="b">음료</label>
		    
    <section id="content1">
    	<div class="card-group" style="overflow: auto; height: 600px;">
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/zza.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
			  		<form action="insert.do">
						<input type="hidden" name="p_name" value="짜파게티" readonly="readonly">
						<input type="hidden" name="p_price" value="3000" readonly="readonly">
				  		<h5 class="card-title">짜파게티</h5>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form>
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/dduk.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	 <form action="insert.do">
						<input type="hidden" name="p_name" value="떡볶이" readonly="readonly">
						<input type="hidden" name="p_price" value="3000" readonly="readonly">
						<h5 class="card-title">떡볶이</h5>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/spam.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="스팸마요덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="3500" readonly="readonly">
						<h5 class="card-title">스팸마요덮밥</h5>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/tuna.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="참치마요덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="3500" readonly="readonly">
						<h5 class="card-title">참치마요덮밥</h5>
						<p class="card-text">3,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/chicken.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				 	<form action="insert.do">
						<input type="hidden" name="p_name" value="치킨마요덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="3500" readonly="readonly">
						<h5 class="card-title">치킨마요덮밥</h5>
						<p class="card-text">3,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/kimchi.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="김치볶음밥" readonly="readonly">
						<input type="hidden" name="p_price" value="4500" readonly="readonly">
						<h5 class="card-title">김치볶음밥</h5>
						<p class="card-text">4,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/no6.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="제육덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="4500" readonly="readonly">
						<h5 class="card-title">제육덮밥</h5>
						<p class="card-text">4,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/five3.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="오삼불고기덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="5500" readonly="readonly">
						<h5 class="card-title">오삼불고기덮밥</h5>
						<p class="card-text">5,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
         </div>
         
	</section>
    <section id="content2">
    <div class="card-group" style="overflow: auto; height: 600px;">
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/zza.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
			  		<form action="insert.do">
						<input type="hidden" name="p_name" value="짜파게티" readonly="readonly">
						<input type="hidden" name="p_price" value="3000" readonly="readonly">
				  		<h5 class="card-title">짜파게티</h5>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form>
				  </div>
				</div>
             </div>
     </div>
         
    </section>
    <section id="content3">
    <div class="card-group" style="overflow: auto; height: 600px;">
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/spam.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="스팸마요덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="3500" readonly="readonly">
						<h5 class="card-title">스팸마요덮밥</h5>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/tuna.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="참치마요덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="3500" readonly="readonly">
						<h5 class="card-title">참치마요덮밥</h5>
						<p class="card-text">3,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/chicken.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				 	<form action="insert.do">
						<input type="hidden" name="p_name" value="치킨마요덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="3500" readonly="readonly">
						<h5 class="card-title">치킨마요덮밥</h5>
						<p class="card-text">3,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/kimchi.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="김치볶음밥" readonly="readonly">
						<input type="hidden" name="p_price" value="4500" readonly="readonly">
						<h5 class="card-title">김치볶음밥</h5>
						<p class="card-text">4,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/no6.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="제육덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="4500" readonly="readonly">
						<h5 class="card-title">제육덮밥</h5>
						<p class="card-text">4,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/five3.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
				  	<form action="insert.do">
						<input type="hidden" name="p_name" value="오삼불고기덮밥" readonly="readonly">
						<input type="hidden" name="p_price" value="5500" readonly="readonly">
						<h5 class="card-title">오삼불고기덮밥</h5>
						<p class="card-text">5,500원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form> 
				  </div>
				</div>
             </div>
     </div>
         
    </section>
    <section id="content4">
    <div class="card-group" style="overflow: auto; height: 600px;">
             <div class="col-lg-2">
                 <div class="card">
				  <img src="../food/zza.PNG" class="card-img-top" alt="...">
				  <div class="card-body">
			  		<form action="insert.do">
						<input type="hidden" name="p_name" value="짜파게티" readonly="readonly">
						<input type="hidden" name="p_price" value="3000" readonly="readonly">
				  		<h5 class="card-title">짜파게티</h5>
						<p class="card-text">3,000원</p>
						<input type="submit" class="btn btn-primary" value="구매">
					</form>
				  </div>
				</div>
             </div>
     </div>
         
    </section>
	</div>
             <div class="col-lg-4">
                 <h3 class="h3 mb-3 fw-normal"><strong>주문 리스트</strong></h3>
                 <div class="row" style="overflow: auto; height: 300px;">
                
					<table class="table table-hover">
						<thead>
							<tr>
								<th>음식</th>
								<th>가격</th>
								<th>삭제</th>
							</tr>
						</thead>
						<tbody>
						<c:set var="total" value="0"/>
						<c:forEach var="tmp" items="${list }">
							<tr>
								
								<td>${tmp.p_name }</td>
								<td>${tmp.p_price }</td>
								<td>
									<form action="delete.do">
										<input type="hidden" name="b_num" value="${tmp.b_num }" readonly="readonly">
										<input type="hidden" name="p_name" value="${tmp.p_name }" readonly="readonly">
										<input type="submit" value="삭제">
									</form> 
								</td>
							</tr>
							<c:set var="total" value="${total +tmp.p_price}"/>
						</c:forEach>
						</tbody>
		
					</table>
                 </div>
                 <h3><c:out value="총금액 : ${total }원"/></h3>
                <div class="row"><div class="col-6">
	            <div class="custom-control custom-radio">
				  <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked>
				  <label class="custom-control-label" for="customRadio1">현금</label>
				</div>
				<div class="custom-control custom-radio">
				  <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
				  <label class="custom-control-label" for="customRadio2">카드</label>
				</div></div>
				<div class="col-6">
	          	<button type="button" class="btn btn-primary btn-xl" onclick="javascript:payConfirm()">결제</button>  
	          	</div> 
	          </div>
	       </div>    
	</div>
        <script>
			function payConfirm(){
				const isDelete=confirm("결제 하시겠습니까?");
				if(isDelete){
					location.href="${pageContext.request.contextPath}/product/move.do";
					alert("결제되었습니다");
					//location.href="${pageContext.request.contextPath}/product/pay.do";
				}else{
					alert("결제가 취소되었습니다");
				}
			}
			
		</script> 
     </body>
     </html>