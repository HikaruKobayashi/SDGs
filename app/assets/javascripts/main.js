// DomでHTMLを読み込む
document.addEventListener("DOMContentLoaded", function(){
  // firebase追加
  var firebaseConfig = {
    apiKey: "AIzaSyAwJSbUCYG8IkyvLde6TulF8shJSunGIBQ",
    authDomain: "swimhikaru0719.firebaseapp.com",
    databaseURL: "https://swimhikaru0719.firebaseio.com",
    projectId: "swimhikaru0719",
    storageBucket: "",
    messagingSenderId: "644123931767",
    appId: "1:644123931767:web:9de4129a9e8ee834238272"
  };
  firebase.initializeApp(firebaseConfig);

  // 新規ユーザー追加機能
  const button = document.getElementById('newuser');
  button.addEventListener('click', function(e) {
  // メールアドレス・パスワードを取得
  var email = document.getElementById('email').value;
  var password = document.getElementById('password').value;

  // 新規ユーザーを登録
  firebase.auth().createUserWithEmailAndPassword(email, password)
    .then(user => {
      newuser.onclick = function() {
        window.location.href = 'users'
      };
    }, err => {
      window.alert('必須項目です。')
    })
  });

  // 既存ユーザーログイン機能
  const login = document.getElementById('login');
  login.addEventListener('click', function(e) {
  // メールアドレスとパスワードを取得する
  var email = document.getElementById('email').value;
  var password = document.getElementById('password').value;

  // 既存ユーザーをログインさせる
  firebase.auth().signInWithEmailAndPassword(email, password)
    .then(user => {
      login.onclick = function() {
        window.location.href = 'users'
      };
    }, err => {
      window.alert('ユーザー名もしくはパスワードが間違っています')
    });
  });
}, false);

//
// ふわふわさせる処理
//
$(document).on('turbolinks:load', function() {
  Particles.init({
    selector: '.background',
    sizeVariations: 30,
    color: [
      '#0bd', 'rgba(75, 0, 130, .5)', 'rgba(0,187,221,.2)'
    ]
  });
});