// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    $(".js-add-ingredient").on("click", addIngredient );
});

function addIngredient() {
    console.log("It works");
    var ingredient_id = $(this).data("ingredient-id");
    var sandwich_id = $(".sandwich-name").data("sandwich-id");
    var form = new FormData();
    form.append("ingredient_id", ingredient_id);

    var settings = {
        "url": `/api/sandwiches/${sandwich_id}/ingredients/add`,
        "method": "POST",
        "processData": false,
        "contentType": false,
        "dataType": "JSON",
        "mimeType": "multipart/form-data",
        "data": form
    }

    $.ajax(settings).done(function (response) {
        console.log(response);
        $(".js-sandwich-ingredients").empty();
        // $(".js-sandwich-ingredients").append(response.ingredients[response.ingredients.length]);
        response.ingredients.forEach(function(ingredient){
            var ingredient = `<li>${ingredient.name} ------- ${ingredient.calories} Calories </li>`;
        $(".js-sandwich-ingredients").append(ingredient);
        $(".js-total-calories").html(`<h3 class="js-total-calories">Total Calories:${response.total_calories}</h3>`);

});

});

}
