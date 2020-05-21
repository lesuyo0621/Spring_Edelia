<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>DANAL</title>
</head>
<body>
<script type="text/javascript">

var IMP = window.IMP; // ��������
IMP.init('imp18845185'); 

IMP.request_pay({
   pg : 'danal', // �������
    pay_method : 'card',	// ���� ����
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '�Ƹ޸�ī��',	// order ���̺� �� �ֹ��� Ȥ�� �ֹ� ��ȣ
    amount : '1500',	// ���� �ݾ�
    buyer_email : '',	// ������ email
    buyer_name :  '',	// ������ �̸�
    buyer_tel :  '',	// ������ ��ȭ��ȣ
    buyer_addr :  '',	// ������ �ּ�
    buyer_postcode :  '',	// ������ �����ȣ
    m_redirect_url : '/khx/payEnd.action'	// ���� �Ϸ� �� ���� ��Ʈ�ѷ��� �޼ҵ��
}, function(rsp) {
	if ( rsp.success ) { // ������
		var msg = '������ �Ϸ�Ǿ����ϴ�.';
		msg += '����ID : ' + rsp.imp_uid;
		msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
		msg += '���� �ݾ� : ' + rsp.paid_amount;
		msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
	} else { // ���н�
		var msg = '������ �����Ͽ����ϴ�.';
		msg += '�������� : ' + rsp.error_msg;
	}
});
</script>
</body>
</html>