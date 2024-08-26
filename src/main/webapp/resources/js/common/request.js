const accessToken = localStorage.getItem("access_token")
const basicData = localStorage.getItem("member")
export const SERVER_API = 'http://localhost:8080'

export const getBasicData = async () => {
  if (accessToken !== null) {
    const result = await fetch(`${SERVER_API}/get-info`, {
      method     : "GET",
      credentials: "include",
      headers    : {
        Authorization: `Bearer ${accessToken}`
      }
    })

    try {
      const basicData = await result.json();
      localStorage.setItem('member', JSON.stringify(basicData));
    } catch (err) {
      console.log('getBasicData', err);
      if (err.statusCode === 401) {
        console.log('getBasicData', err);
        alert('다시 로그인 해주세요')
        location.href = '/';
        return;
      }

      if (accessToken) {
        const result = await getNewAccessToken();
        localStorage.setItem('access_token', result);
      }
    }

  }

}

/**
 * 로그인 시 리프레시 토큰과 엑세스 토큰을 둘 다 쿠키로 처음 받았을 때
 * 헤더로 엑세스 토큰을 받고 쿠키를 지우기 위함
 * new token을 요청할 때에도 한 번 호출해 줘야한다.
 * @returns {Promise<string>}
 */
export const getAccessToken = async () => {
  const result = await fetch(`${SERVER_API}/members/cookies`);
  const accessToken = result.headers.get('Accesstoken');
  return accessToken;
};

/**
 * 엑세스 토큰이 만료되었을 때 리프레시 토큰을 사용해 새로운 엑세스 토큰을 요청할 때
 * getAccessToken() 를 호출해서 똑같이 쿠키를 제거하고 헤더로 엑세스 토큰을 받는다.
 * @returns {Promise<string>}
 */
export const getNewAccessToken = async () => {
  await fetch('http://localhost:8080/refresh', {
    method     : "POST",
    credentials: "include",
  });

  const result = await getAccessToken();
  return result;
}



