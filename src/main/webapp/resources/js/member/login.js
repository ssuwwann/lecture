import {getAccessToken, SERVER_API} from "../home/request.js";


const loginBtnEle = document.querySelector("#loginBtn");
loginBtnEle.addEventListener('click', async (e) => {
  e.preventDefault();
  const username = document.querySelector('input[name="username"]').value;
  const password = document.querySelector('input[name="password"]').value;
  fetch(`${SERVER_API}/members/login-proc`, {
    method : "POST",
    headers: {
      'Content-Type': 'application/json'
    },
    body   : JSON.stringify({
      username,
      password
    })
  })
      .then(async (res) => {
        const accessTokenData = await getAccessToken();
        localStorage.setItem("access_token", accessTokenData);
        location.href = "/"
      })
})
