//-----------------Menu-Slidebar-Category-----------------------
const itemsliderbar = document.querySelectorAll(".category-left-li");
itemsliderbar.forEach(function(menu,index) {
    menu.addEventListener("click", function(){
        menu.classList.toggle("block");
    })
});

//-------------------Chage Big Img Product---------------------------
const bigImg = document.querySelector(".big-img img");
const smallImg = document.querySelectorAll(".small-img img");
smallImg.forEach(function(imgItem,X) {
    imgItem.addEventListener("click", function() {
        bigImg.src = imgItem.src;
    })
});

//-------------------Product Detail Tab-------------------------------
const intro = document.getElementById("introduce");
const detail = document.getElementById("detail");
const preserve = document.getElementById("preserve");
intro.addEventListener("click", function() {
    document.querySelector(".detail-content").style.display = "none";
    document.querySelector(".preserve-content").style.display = "none";
    document.querySelector(".introduce-content").style.display = "block";
});
detail.addEventListener("click", function() {
    document.querySelector(".introduce-content").style.display = "none";
    document.querySelector(".preserve-content").style.display = "none";
    document.querySelector(".detail-content").style.display = "block";
});
preserve.addEventListener("click", function() {
    document.querySelector(".detail-content").style.display = "none";
    document.querySelector(".introduce-content").style.display = "none";
    document.querySelector(".preserve-content").style.display = "block";
});

const tabItem = document.querySelectorAll(".tab-item p");
tabItem.forEach(function(item,X) {
    item.addEventListener("click", function() {
        const tabItemSelected = document.querySelector(".tab-item-selected");
        tabItemSelected.classList.remove("tab-item-selected");
        item.classList.add("tab-item-selected");
    })
});

//-----------------Show Product Content in Delivery Page-------------------
function showProductContent() {
    const x = document.getElementById("yourcart");
    if (x.style.display == "block") {
        x.style.display = "none";
    }
    else {
        x.style.display = "block";
    }
}

function showNotifyAddedProduct() {
    document.getElementById("notify-added").style.transition = "display 2s";
    document.getElementById("notify-added").style.display = "block";
}
function showOffNotifyAddedProduct() {
    document.getElementById("notify-added").style.transition = "display 2s";
    document.getElementById("notify-added").style.display = "none";
}
setTimeout(showNotifyAddedProduct, 300);
setTimeout(showOffNotifyAddedProduct, 4300);