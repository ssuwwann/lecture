const inputFileEle = document.querySelector('input[type="file"]');

inputFileEle.addEventListener('change', (e) => {
  const file = e.target.files[0];
  const reader = new FileReader();

  reader.readAsDataURL(file);
  reader.onloadend = () => {
    const profileImageEle = document.querySelector("div.vector-img > img");
    profileImageEle.src = reader.result;
  };
})
