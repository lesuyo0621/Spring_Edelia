<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>KG inicis</title>
</head>
<body>
<script type="text/javascript">

var IMP = window.IMP; // ��������
IMP.init('imp70133150'); 

IMP.request_pay({
    pg : 'inicis', // version 1.1.0���� ����.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '�Ƹ޸�ī��',
    amount : 1500,
    buyer_email : '',
    buyer_name : '',
    buyer_tel : '',
    buyer_addr : '',
    buyer_postcode : '',
    m_redirect_url : ''
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '������ �Ϸ�Ǿ����ϴ�.';
        msg += '����ID : ' + rsp.imp_uid;
        msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
        msg += '���� �ݾ� : ' + rsp.paid_amount;
        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
    } else {
        var msg = '������ �����Ͽ����ϴ�.';
        msg += '�������� : ' + rsp.error_msg;
    }
    alert(msg);
});
</script>
</body>
</html>