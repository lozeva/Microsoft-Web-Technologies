// Изчаква зареждането на цялото съдържание на страницата
document.addEventListener('DOMContentLoaded', function () {

    // Избира елементите за анимиране
    const aboutSection = document.querySelector('.about');
    const aboutImage = document.querySelector('.about-img');
    const aboutText = document.querySelector('.about-text');

    // Добавя класове за показване, когато секцията е видима
    function animateOnScroll() {
        if (aboutSection.getBoundingClientRect().top < window.innerHeight) {
            aboutImage.classList.add('show');
            aboutText.classList.add('show');
        }
    }

    // Стартира анимацията при зареждане
    animateOnScroll(); 

    // Активира анимацията при скролиране
    window.addEventListener('scroll', animateOnScroll); 
});
