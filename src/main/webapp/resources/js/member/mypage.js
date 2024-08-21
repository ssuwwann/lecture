import {SERVER_API} from "../home/request.js";

const data = JSON.parse(localStorage.getItem('member'));
const h2Ele = document.querySelector('.page-feature h2');
const spanNicknameEle = document.querySelector('.tagline');
const logoutBtnEle = document.querySelector('#logoutBtn');
const inputFileEle = document.querySelector('input[type="file"]');

if (data) {
  const emailInputEle = document.querySelector("form .row > div:nth-child(1) > input");
  const modifiedAtInputEle = document.querySelector("form .row> div:nth-child(2) > input");
  const nicknameInputEle = document.querySelector("form .row> div:nth-child(3) > input");
  const passwordInputEle = document.querySelector("form .row> div:nth-child(4) > input");
  const imgEle = document.querySelector('img#profileImage');
  const filePath = data?.attachFile?.filePath;
  const saveName = data?.attachFile?.saveName;

  h2Ele.innerHTML = data.nickname;
  spanNicknameEle.innerHTML = `${data.nickname}님 마이페이지`

  emailInputEle.value = `${data.email}`
  modifiedAtInputEle.value = `${data.createdAt}`.split(" ")[0] || undefined
  nicknameInputEle.value = `${data.nickname}`
  passwordInputEle.value = `${data.password}`

  if (filePath && saveName) {
    fetch(`${SERVER_API}/files/${data.id}`, {
      method: 'POST',
      body  : JSON.stringify({
        filePath,
        saveName
      })
    })
        .then(async result => {
          const blob = await result.blob();
          const url = URL.createObjectURL(blob);
          imgEle.setAttribute('src', url);
        })
  }

}

logoutBtnEle.addEventListener('click', () => {
  fetch(`${SERVER_API}/members/logout`)
      .then(res => {
        console.log(res)
        if (res.status === 200) {
          localStorage.removeItem('access_token')
          localStorage.removeItem('member')

          location.href = SERVER_API
        }
      })
      .catch(err => alert("err" + err))
})

inputFileEle.addEventListener('change', (e) => {
  const file = e.target.files[0];
  const reader = new FileReader();

  reader.readAsDataURL(file);
  reader.onloadend = () => {
    const profileImageEle = document.querySelector("#profileImage");
    profileImageEle.src = reader.result;
  };
})



