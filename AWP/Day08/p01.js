var count = 0;
var count2 = 0;

function like() {
  let likeCount = document.querySelector("#like");
  count++;
  likeCount.innerHTML = "Like " + count;
  document.querySelector.like.style.font;
}

function Dislike() {
  let disCount = document.querySelector("#Dislike");
  count2++;
  disCount.innerHTML = "Dislike " + count2;
}

function comment() {
  let comm = document.querySelector("#inp").value;
  //document.querySelectorbyid("#Com") = comm;
  let cloneValue = document.querySelector("#Com").cloneNode(true);

  cloneValue.innerHTML = comm;

  let commdiv = document.querySelector("#cb");
  commdiv.insertBefore(cloneValue, commdiv.firstChild);
}
