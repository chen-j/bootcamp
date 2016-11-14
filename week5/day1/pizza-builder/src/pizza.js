// Write your Pizza Builder JavaScript in this file.
$(document).ready(function() {
    var money = "$"
    var basePrice = 13;
    var priceChange = 0;
    var currentPrice = basePrice;

    $("strong").html(money + currentPrice);



//Toggle pepperoni
    $(".btn-pepperonni").on("click", function () {
        $(".pep").fadeToggle(100);
        $(".btn-pepperonni").toggleClass("active");
        if($(".btn-pepperonni").hasClass("active")){
            currentPrice +=1;
        } else {
            currentPrice -=1;
        };
        $("strong").html(money + currentPrice);
        $(".price li:nth-child(1)").fadeToggle(100);
    });

//Toggle Mushrooms
    $(".btn-mushrooms").on("click", function () {
        $(".mushroom").fadeToggle(100);
        $(".btn-mushrooms").toggleClass("active");
        if($(".btn-mushrooms").hasClass("active")){
            currentPrice +=1;
        } else {
            currentPrice -=1;
        };
        $("strong").html(money + currentPrice);
        $(".price li:nth-child(2)").fadeToggle(100);

    });


//Toggle Green Peppers
    $(".btn-green-peppers").on("click", function () {
        $(".green-pepper").fadeToggle(100);
        $(".btn-green-peppers").toggleClass("active");
        if($(".btn-green-peppers").hasClass("active")){
            currentPrice +=1;
        } else {
            currentPrice -=1;
        };
        $("strong").html(money + currentPrice);
        $(".price li:nth-child(3)").fadeToggle(100);
    });

    //Toggle Sauce
        $(".btn-sauce").on("click", function () {
            $(".sauce").toggleClass("sauce-white");
            $(".btn-sauce").toggleClass("active");
            if($(".btn-sauce").hasClass("active")){
                currentPrice +=3;
            } else {
                currentPrice -=3;
            };
            $("strong").html(money + currentPrice);
            $(".price li:nth-child(4)").fadeToggle(100);
        });


//Toggle Crust
    $(".btn-crust").on("click", function () {
        $(".crust").toggleClass("crust-gluten-free");
        $(".btn-crust").toggleClass("active");
        if($(".btn-crust").hasClass("active")){
            currentPrice +=5;
        } else {
            currentPrice -=5;
        };
        $("strong").html(money + currentPrice);
        $(".price li:nth-child(5)").fadeToggle(100);
    });


});
