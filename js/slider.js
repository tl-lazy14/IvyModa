const imgPosition = document.querySelectorAll(".aspect-ratio-169 img");
const imgContainer = document.querySelector(".aspect-ratio-169");
const dotItem = document.querySelectorAll(".dot");
let imgNumber = imgPosition.length;
let autoMoveSlider;
let click = -1;

imgPosition.forEach(function(image,index) {
    image.style.left = index*100 + "%";
    dotItem[index].addEventListener("click",function() {
        clearInterval(autoMoveSlider);
        click = index;
        slider(index);
        autoMoveSlider = setInterval(imgSlide, 3000);
    })
});

function imgSlide() {
    click++;
    if (click >= imgNumber) click = 0;
    slider(click);
}

function slider(index) {
    imgContainer.style.left = "-" + index*100 + "%";
    const dotActive = document.querySelector(".active");
    dotActive.classList.remove("active");
    dotItem[index].classList.add("active");
}

autoMoveSlider = setInterval(imgSlide, 3000);