document.querySelectorAll('.item img').forEach(function(img, index) {
    img.addEventListener('click', function() {
        var radio = document.querySelector('input[name="testimonial"]:nth-child(' + (index * 2 + 1) + ')');
        radio.checked = true;
    });
});

function submitCardInfo(){
	
	var checkedRadio = document.querySelector('input[name="testimonial"]:checked');
    var designValue = checkedRadio ? checkedRadio.value : '';
	
    var englishFirstName = document.querySelector('input[name="englishFirstName"]').value;
    var englishLastName = document.querySelector('input[name="englishLastName"]').value;
    var address = document.querySelector('input[name="address"]').value;
    var detailedAddress = document.querySelector('input[name="address_detail"]').value;
    
    var url = "/card/apply";
	
    var data = JSON.stringify({
        'cd_design' : designValue,
        'm_english_first_name' : englishFirstName,
        'm_english_last_name' : englishLastName,
        'm_address' : address,
        'm_detailed_address' : detailedAddress
    })
	
    var xhr = new XMLHttpRequest();
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");
    xhr.setRequestHeader("X-Requested-With", "XMLHttpRequest");

    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var responseJson = xhr.responseText;
            let response = JSON.parse(responseJson);
            if (response.success) {
            	alert('신청이 완료되었습니다.')
                window.location.href = response.redirectUrl;
            } else {
            	alert(response.message)
                window.location.href = response.redirectUrl;
            }
        }
    };
    xhr.send(data);
}

document.addEventListener('DOMContentLoaded', (event) => {
    document.querySelector('#custom-btn-b').addEventListener('click', submitCardInfo);
});

function radioCheck(id) {
    var radio = document.getElementById(id);
    radio.checked = true;
}
