<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ �󼼺���</title>
</head>
<body>
	<div>
		<div>
			<h3
				class="_13KHfN73YmQgsYHxXvuh_J _2XNIh_QZv4rPkHih1iN3Yt _3o6iE1ko5_AeTlpXebXsBb">
				<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">����
					����</div>
			</h3>
			<div
				class="_13KHfN73YmQgsYHxXvuh_J CoIrJwj-n2Pdokdf8d4qE _1WARcEqqT_Pem8leg2dkMj">
				
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH-">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>���� �ݾ�</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv">
								<div
									class="_2EKbr4mCy_TvmSkhnSfA_a _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<h4>
										${supportDetail.support_money }
										&nbsp;��
									</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH-">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>���� ����</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv">
								<div
									class="_2EKbr4mCy_TvmSkhnSfA_a _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<h4>${supportDetail.deadline }��¥�� ���� �����Դϴ�.</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div>
			<h3
				class="_13KHfN73YmQgsYHxXvuh_J _2XNIh_QZv4rPkHih1iN3Yt _3o6iE1ko5_AeTlpXebXsBb">
				<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">
				���	����</div>
			</h3>
			<div
				class="_13KHfN73YmQgsYHxXvuh_J CoIrJwj-n2Pdokdf8d4qE _1WARcEqqT_Pem8leg2dkMj">
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>�޴� �� �̸�</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								<div
									class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<div>
										<h3>${supportDetail.name }</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>�޴� �� ����ó</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								<div
									class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<div>
										<h3>${supportDetail.tel }</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>��� �ּ�</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								<div
									class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<div
										class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv">
										<div
											class="_2EKbr4mCy_TvmSkhnSfA_a _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
											<h5>
												${supportDetail.support_address }
												&nbsp;&nbsp;
												<label
													class="_13KHfN73YmQgsYHxXvuh_J _1DLNFgQRrQNEosKFB0zOK5 _3sFSjAZS4gQdCAyN3OfyFG _1Qdv504-1XMeYXZyb0xQZT _3D9sfZXrWd8it3eUCuCTc8">
													<!-- react-text: 2123 -->�����ȣ <!-- /react-text -->
													<!-- react-text: 2124 -->12945<!-- /react-text -->
												</label>
											</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>���� ���� ����</label>
							<div 
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								
								
								<form action = "getReward.do" method = "post">
								<div 
									class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<input type= "hidden" value="${supportDetail.support_num }"name = "support_num">									
									<div style = "width:100%; ">
										<c:if test="${supportDetail.reward_state eq 0}">
										<b>&nbsp;</b>
										<b style="text-align: right">������Ʈ �ۼ��ڰ� Ȯ���߿� �ֽ��ϴ�.</b>
										</c:if>
										<c:if test="${supportDetail.reward_state eq 1}">
										<button type = "submit"style="text-align: right">���ɿϷ�</button>
										</c:if>
										<c:if test="${supportDetail.reward_state eq 2}">
										<b>&nbsp;</b>
										<b style="text-align: right">����� �Ϸ�Ǿ����ϴ�.</b>
										</c:if>
									</div>
									
								</div>
								</form>
							</div>
						</div>
					</div>
				
				</div>
				
			</div>
		</div>
		<div>
			<h3
				class="_13KHfN73YmQgsYHxXvuh_J _2XNIh_QZv4rPkHih1iN3Yt _3o6iE1ko5_AeTlpXebXsBb">
			</h3>
			
		</div>
	</div>



	


</body>
</html>