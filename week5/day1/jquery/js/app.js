console.log("CONSOLE LOG");

$(document).ready(function() {

    $(".js-pizza").on("click", function() {
        $(".empanadas").remove();
    });

    $(".empanadas").click(function (){
        $(".js-heading").append(`
            <span> EMPANADA 😋 TIME </span>
            <a href=#>SEE MORE EMPANADAS</a>
            `);
    });

    $("#cookies").on("click", cookieMessage);



    $(".js-button-thing").on("click", function(){
        $(".container").prepend (`<img src="images/unicorns1.gif">`)

    $("#ice-cream").on("click", iceCreamMessage);

    });

});


function iceCreamMessage() {
    var content = `<i>Ice Cream🍦</i>`;
    $(".js-jq-paragraph").html(content);

};


function cookieMessage() {
    var cookieContent = `
    <div class="popup">
        <h2>🍪 Have some cookies 🍪</h2>
        <p>Cookies are good for you. Here's why:</p>
        <ul>
            <li>Cookies taste good.</li>
            <li>They have 0 calories.</li>
            <li>Cookies don't lie</li>
        </ul>
    </div>
    `;
    $(".container").append(cookieContent);
};
