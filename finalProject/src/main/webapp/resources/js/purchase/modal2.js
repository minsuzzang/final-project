let m_idx = 0;
let cd_number=0;
let cd_expired_date=0;
let cd_cvc=0;
let cd_pwd=0;
let m_mileage=0;
let ph_total_price=0;

function purchase(idx) {
	m_idx = idx;
	
	$.ajax({
		url: '/purchase/cardDetail.do',
		type: 'post',
		data: {
			m_idx: idx
		},
		success: function(res) {
			m_mileage=res[0].m_mileage;
			for(i=0; i<res.length; i++){
				const option = document.createElement("option");
				option.text = res[i].cd_color + " / " + res[i].cd_design;
				option.value = res[i].cd_color;
				document.getElementById("cardSelect").appendChild(option);				
			}	
		},
		error: function(err) {
			console.log('Ajax 요청 실패 : ', err);
		}
	});
}

function nextBtn() {
	cd_number= document.getElementById("cardNumber").value;
	cd_expired_date= document.getElementById("expiredDate").value;
	cd_cvc= document.getElementById("cvc").value;
	cd_pwd= document.getElementById("cardPwd").value;
	document.getElementById("mileage").innerHTML = m_mileage;
	
	if(document.querySelector('#cardSelect option:checked').value == 'black'){
		document.getElementById("accumulation").innerHTML = 10;
	} else if(document.querySelector('#cardSelect option:checked').value == 'purple'){
		document.getElementById("accumulation").innerHTML = 8;
	} else if(document.querySelector('#cardSelect option:checked').value == 'red'){
		document.getElementById("accumulation").innerHTML = 6;
	} else if(document.querySelector('#cardSelect option:checked').value == 'green'){
		document.getElementById("accumulation").innerHTML = 4;
	} else if(document.querySelector('#cardSelect option:checked').value == 'pink'){
		document.getElementById("accumulation").innerHTML = 2;
	}
	
	
}

function mileageUse(){
	const p_price2 = document.getElementById("p_price2").innerHTML;
	const totalPrice = p_price2-m_mileage;
	ph_total_price = totalPrice;
	document.getElementById("totalPrice").innerHTML = totalPrice;
	document.getElementById("mileage").innerHTML = 0;

	//적립율 받아오기
	const accumulation = document.getElementById("accumulation").innerText;
	//적립
	m_mileage = totalPrice*parseInt(accumulation)/100;

}

function payment(idx){
	
		$.ajax({
		//여기서 마일리지적립, 결제내역남김
		url: '/purchase/payment.do',
		type: 'post',
		data: {
		//실존하는 카드인지 확인위해서 보냄
			cd_number: cd_number,
			cd_expired_date: cd_expired_date,
			cd_cvc:cd_cvc,
			cd_pwd:cd_pwd,
			m_idx:m_idx,
			m_mileage:m_mileage,
			p_idx:idx,
			ph_total_price:ph_total_price
		},
		success: function(res) {
			if(res=='failed'){
				alert('결제에 실패했습니다');
				location.href="/product/list.do";
			} else if(res=='success'){
				location.href="/product/result.do?idx="+idx;
			} else if('cardDismatch') {
				alert('카드정보가 일치하지 않습니다.');
			}
		},
		error: function(err) {
			console.log('Ajax 요청 실패 : ', err);
		}
	});
}