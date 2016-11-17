$(document).on("ready", function() {
    $(".js-show-pokemon").on("click", function (){
        var pokemonUri = $(this).data("pokemon-uri");
        var pokemon = new PokemonApp.Pokemon(pokemonUri);
        pokemon.render();
    });
});


PokemonApp.Pokemon = class ClassName {
    constructor(pokemonUri) {
        this.apiUrl = pokemonUri;
    };

    render(){
        console.log(`Rendering pokemon with URL: ${this.apiUrl}`);
        $.ajax({
            url: `/${this.apiUrl}`,
            type: "GET",
            success: PokemonApp.showPokemonModal,
            error: PokemonApp.handleError
        });
    }
};

PokemonApp.showPokemonModal = function (apiResult) {
    console.log("Pokemon API success!");
    console.log(apiResult);

    // var types_arr = [];
    var pkmn_types = apiResult.types;
    $(".js-pkmn-types").empty();
    pkmn_types.forEach(function (type) {
        $(".js-pkmn-types").append(`${type.name} `);

    });

    $(".js-pkmn-name").html(apiResult.name);
    $(".js-pkmn-number").html(`#${apiResult.pkdx_id}`);
    $(".js-pkmn-height").html(apiResult.height);
    $(".js-pkmn-weight").html(apiResult.weight);
    $(".js-pkmn-hp").html(`${apiResult.hp}`);
    $(".js-pkmn-att-def").html(`${apiResult.sp_atk} and ${apiResult.sp_def}`);
    $(".js-pkmn-speed").html(apiResult.speed);
    $(".js-pokemon-modal").modal("show");

    var sortedDescriptions = apiResult.descriptions.sort(name);
    var imageUrl = apiResult.sprites[0].resource_uri;
    var evolutionsUrl = apiResult.evolutions;

    


    $.ajax({
        url: sortedDescriptions[sortedDescriptions.length - 1].resource_uri,
        type: "GET",
        success: PokemonApp.getDescription,
        error: PokemonApp.handleError
    });

    $.ajax({
        url: imageUrl,
        type: "GET",
        success: PokemonApp.displayImage,
        error: PokemonApp.handleError
    });

    $(".js-btn-evo").on('click', function() {
            $(".js-evolutions-modal").modal("show");
    });

};

// var descriptionUrl = $(".js-pkmn-description").data("description-uri");


PokemonApp.getDescription = function (description) {
    $(".js-pkmn-description").html(description.description);
};

PokemonApp.displayImage = function(response) {
    var imageLoc = response.image.substr(11);
    $(".pkmn-image").html(`<img src="https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${imageLoc}">`)
}



PokemonApp.handleError = function (error) {
    console.log("API Error");
    console.log(error.responseText);
};
