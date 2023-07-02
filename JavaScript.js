const iconClose = document.querySelector('.icon-close');


iconClose.addEventListener('click', () => {
wrapper.classList.remove('active');
}



function togglePasswordVisibility() {
        var passwordInput = document.getElementById("password");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
        } else {
            passwordInput.type = "password";
        }
    }
