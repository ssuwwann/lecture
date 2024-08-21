const inputFileEle = document.querySelector('input[type="file"]');


const emailEle = document.querySelector('input[name="email"]');
const emailSuccessMessageEle = document.querySelector('.email-success-message');
const emailFailureMessageEle = document.querySelector('.email-failure-message');

const passwordEle = document.querySelector('input[name="password"]');
const passwordEle2 = document.querySelector('input[name="password2"]');
const passwordFailureMessageEle = document.querySelector('.password-failure-message');

const passwordMismatchMessageEle = document.querySelector('.password-mismatch-message');
// 유효성 검증 함수
const provePassword = str => /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/.test(str);
const isMatch = (password1, password2) => password1 === password2;

passwordEle.addEventListener('keyup', () => {
  if (passwordEle.value.length !== 0) {
    if (provePassword(passwordEle.value)) // 8글자 이상, 영문, 숫자, 특수문자 사용
      passwordFailureMessageEle.classList.add('hide');
    else
      passwordFailureMessageEle.classList.remove('hide');
  } else {
    passwordFailureMessageEle.classList.add('hide');
  }
});

passwordEle2.addEventListener('keyup', () => {
  if (passwordEle2.value.length !== 0) {
    if (isMatch(passwordEle.value, passwordEle2.value))
      passwordMismatchMessageEle.classList.add('hide');
    else
      passwordMismatchMessageEle.classList.remove('hide');
  } else {
    passwordFailureMessageEle.classList.add('hide');
  }
});

inputFileEle.addEventListener('change', (e) => {
  const file = e.target.files[0];
  const reader = new FileReader();

  reader.readAsDataURL(file);
  reader.onloadend = () => {
    const profileImageEle = document.querySelector("div.vector-img > img");
    profileImageEle.src = reader.result;
  };
})
