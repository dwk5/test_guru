document.addEventListener('turbolinks:load', function() {
    var password = document.querySelector('.password');
    var confirmation = document.querySelector('.confirmation');

    if (password && confirmation) {
        password.addEventListener('keyup', checkPass);
        confirmation.addEventListener('keyup', checkPass)
    }
});

function checkPass() {
    var password = document.getElementById('user_password').value;
    var confirmation = document.getElementById('user_password_confirmation').value;

    if (password == '' || confirmation == '') {
        return ''
    } else if (password == confirmation) {
        this.querySelector('.octicon-verified').classList.remove('hide');
        this.querySelector('.octicon-x').classList.add('hide')
    } else {
        this.querySelector('.octicon-x').classList.remove('hide');
        this.querySelector('.octicon-verified').classList.add('hide')
    }
}
