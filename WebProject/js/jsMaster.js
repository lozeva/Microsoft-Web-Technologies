// Слушател за скролиране, който следи позицията на страницата
window.addEventListener('scroll', function () {

    // Избира навигационната лента
    const navbar = document.querySelector('.navDiv'); 

    // Добавя или премахва клас 'transparent' според позицията на скролиране
    if (window.scrollY > 50) {
        navbar.classList.add('transparent');
    } else {
        navbar.classList.remove('transparent');
    }
});
