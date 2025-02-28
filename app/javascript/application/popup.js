// app/javascript/application/popup.js
document.addEventListener('turbo:load', () => {
    setTimeout(() => {
        const popup = document.getElementById('popup');
        const overlay = document.getElementById('popup-overlay');
        if (popup && overlay) {
            popup.style.display = 'block';
            overlay.style.display = 'block';
        }
    }, 5000); // Aparece após 5 segundos
});

function closePopup() {
    document.getElementById('popup').style.display = 'none';
    document.getElementById('popup-overlay').style.display = 'none';
}

// Também mantemos o carrossel de depoimentos
let slideIndex = 0;
showSlides();

function showSlides() {
    let slides = document.getElementsByClassName("testimonial-slide");
    let dots = document.getElementsByClassName("dot");
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) { slideIndex = 1 }
    for (let i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Troca a cada 5 segundos
}

function currentSlide(n) {
    slideIndex = n;
    showSlides();
}