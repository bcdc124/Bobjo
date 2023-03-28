<%@page import="com.bobjo.member.db.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kor">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>BOBJO</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        
  <style type="text/css">
   .btn-delete{
    box-sizing: border-box;
    /* margin: 20px; */
    position: relative;
    border: none;
    display: inline-block;
    padding: 3px 10px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    /* box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2); */
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
    background-color: #ce6d39;
    color: #ffeee4;
   
   }
  
  
  
  </style>      
        
        
        
        
    </head>
    <body>
   
       <!-- inc mypage.jsp -->
       		 <jsp:include page="../inc/mypage.jsp"/> 
       <!-- inc mypage.jsp -->
          
          <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
                  
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">리뷰확인</h1>
                    
                         <div class="card mb-4"> </div>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                              <!--   <i class="fas fa-table me-1"></i> -->

                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>가게이름</th>
                                            <th>내용</th>                                           
                                            <th>리뷰 삭제하기</th>                                           
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                    <c:forEach var="dto" items="${reviewMemberList}">               
                                        <tr>
                                            <td>${dto[1].store_name }</td>
                                            <td>${dto[0].content }</td>
                                            <td>
                                              <button class="btn-delete"  onclick="delreviewMember(${dto[0].review_no})">삭제 하기</button>
                                            </td>
                                        </tr>
                      </c:forEach>   
                                    </tbody>
                                </table>
                                
          <script type="text/javascript">
                     function delreviewMember(review_no){
                    	 if(confirm('리뷰 삭제하시겠습니까?')){
                    		location.href="./MemberdelReview.me?review_no="+review_no;
                    	 }
                     }
                 </script>  
                                                                                 
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                           
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>