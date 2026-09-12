<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hello.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI</title>
<style> * { box-sizing: border-box; } body { margin: 0; padding: 0; font-family: Arial, sans-serif; background: #f2f4f7; color: #333; } /* 전체 컨테이너 */ .container { width: 500px; margin: 80px auto; background: white; padding: 40px; border-radius: 15px; box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1); } /* 제목 */ h1 { text-align: center; margin-bottom: 30px; color: #2c3e50; } /* 결과 영역 */ .result-box { border-top: 3px solid #3498db; padding-top: 20px; } /* 각각의 정보 */ .info { display: flex; justify-content: space-between; padding: 13px 5px; border-bottom: 1px solid #eee; font-size: 16px; } .label { font-weight: bold; color: #555; } .value { color: #222; } /* BMI 결과 */ .bmi { margin-top: 25px; padding: 20px; background: #f8f9fa; border-radius: 10px; text-align: center; } .bmi-number { font-size: 32px; font-weight: bold; color: #3498db; margin: 10px 0; } /* 비만도 결과 */ .status { margin-top: 15px; padding: 12px; border-radius: 8px; background: #3498db; color: white; font-size: 20px; font-weight: bold; } /* 하단 */ .footer { margin-top: 25px; text-align: center; font-size: 13px; color: #999; } </style>


</head>
<%! 
	Member m; // Member 객체 변수 선언
	
	// 클래스 멤버변수 선언
	/* String name;
	 double w, h, bmi; */
	 
	// 메소드 선언(정의)
	private double calcBMI(){
		double h = m.getH() / 100;
		m.setBmi(m.getW() / (h * h));
		return m.getBmi();
	}
	private String checkBMI(){
		if (m.getBmi() < 18) return "저체중";
		else if (m.getBmi() >= 18 && m.getBmi() < 24) return "정상체중";
		else return "과체중";
	}
%>
<body>
	<%
	boolean isEmpty = true;
	double bmi = 0;
	String result = "";
	if(request.getParameter("name") != null) {
		String name = request.getParameter("name");
		double w = Double.parseDouble(request.getParameter("w"));
		double h = Double.parseDouble(request.getParameter("h"));
		m = new Member(name, w, h);	// 생성자 호출을 통해 객체 생성하고 초기화
		bmi = calcBMI();		// 지역변수. _jspService() 함수 내에 선언
		result = checkBMI();
		isEmpty = false;
	}
	if (!isEmpty) {
	%>
	<div class="container">
		<h1>BMI 계산 결과</h1>
		<div class="result-box">
			<div class="info">
				<span class="label"> 이름 </span>
				<span class="value"> <%= m.getName() %> </span>
			</div>
			<div class="info">
				<span class="label"> 몸무게 </span>
				<span class="value"> <%= m.getW() %> kg </span>
			</div>
			<div class="info">
				<span class="label"> 키 </span>
				<span class="value"> <%= m.getH() %> cm </span>
			</div>
			<div class="bmi">
				<div> 당신의 BMI 지수 </div>
				<div class="bmi-number"> <%= String.format("%.2f", bmi) %> </div>
				<div class="status"> <%= result %> </div>
			</div>
		</div>
		<div class="footer"> BMI 계산 결과입니다. </div>
	</div>
	<% } %>
</body>
</html>