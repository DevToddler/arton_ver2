<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ArtOn</title>
    <link rel="icon" href="./img/arton_logo_withoutletter.png">
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/register.css'/>">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<div class="reg_box">
    <form action="<c:url value='/register/join'/>" method="post" id="reg_form" autocomplete="off" onsubmit="return form_chk(this);">
        <div class="reg_title">회원가입</div>
        <div class="inner_reg">
            <div class="form_group">
                <div class="form_sec">
                    <div class="form_text">아이디</div>
                    <input type="text" class="reg_text" name="userId" id="id" onchange="checkId()" placeholder="5~20자리 영소문자,숫자,특수문자(_),(-) 조합" tabindex="0" autofocus>
                    <%--                    <input type="button" name="id_dup" id="id_dup" onclick="return false;" value="아이디 중복 체크">--%>
                    <div class="reg_msg" id="reg_msg_id"></div>
                </div>
                <div class="form_sec">
                    <div class="form_text">비밀번호</div>
                    <input type="password" class="reg_text" id="pw" onfocus="focus_chk('pw');" name="userPw" placeholder="8~16자 영문 대/소문자,숫자,특수문자 조합" tabindex="0">
                    <div class="pw_msg">특수문자는 #?!@$ %^&*- 만 사용가능합니다.</div>
                    <div class="reg_msg" id="reg_msg_pw"></div>
                </div>
                <div class="form_sec">
                    <div class="form_text">비밀번호 재확인</div>
                    <input type="password" class="reg_text" id="pw_ag" onfocus="focus_chk('pw_ag');"  placeholder="동일한 비밀번호를 입력하세요" tabindex="0">
                    <div class="reg_msg" id="reg_msg_pw_ag"></div>
                </div>
                <div class="form_sec">
                    <div class="form_text">이름</div>
                    <input type="text" class="reg_text" id="u_name" onfocus="focus_chk('u_name');" name="userName" tabindex="0">
                    <div class="reg_msg" id="reg_msg_u_name"></div>
                </div>
                <div class="form_sec">
                    <div class="form_text">생년월일</div>
                    <input type="text" class="reg_text" id="birth" onfocus="focus_chk('birth');" name="birthDate" tabindex="0" placeholder="YYYYMMDD(8자리)" maxlength="8">
                    <div class="reg_msg" id="reg_msg_birth"></div>
                </div>
                <div class="form_sec">
                    <div class="gender_txt">성별</div>
                    <div class="gender_box">
                        <select name="gender" id="u_gender" tabindex="0" required>
                            <option value selected>성별</option>
                            <option name = "M" value="M">남자</option>
                            <option name = "F" value="F">여자</option>
                            <option name = "D" value="D">선택안함</option>
                        </select>
                    </div>
                    <div class="reg_msg" id="reg_msg_u_gender"></div>
                </div>
                <div class="form_sec">
                    <div class="form_text">이메일</div>
                    <input type="text" class="reg_text" onfocus="focus_chk('email');" id="email" name="userEmail" tabindex="0" placeholder="이메일 입력">
                    <div class="reg_msg" id="reg_msg_email"></div>
                </div>
                <div class="form_sec">
                    <div class="form_text">휴대전화</div>
                    <input type="tel" class="reg_text" id="phone" onfocus="focus_chk('phone');" name="userPhone" tabindex="0" placeholder="휴대전화번호 입력" maxlength="11">
                    <div class="reg_msg" id="reg_msg_phone"></div>
                </div>
                <div class="form_sec">
                        <span class="promo_txt">
                            <b>아트온</b>에서 제공하는 이벤트/혜택 등 다양한 정보를 이메일로 받아보실 수 있습니다.
                            일부 서비스(별도 회원 체계로 운영하거나 아트온 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신 동의를 받을 수 있으며,
                            이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다 (선택)
                        </span>
                    <input type="checkbox" id="promo_btn" name="promoChk" value="false">
                    <label for="promo_btn">
                        <span class="promo_btn_img"></span>
                    </label>
                </div>
                <button disabled="true" id="reg_btn_agr">가입하기</button>
            </div>
        </div>
    </form>
</div>
<script src="<c:url value='/js/register.js'/>"></script>
<%--<script src="<c:url value='/js/ajax.js'/>"></script>--%>
</body>
</html>