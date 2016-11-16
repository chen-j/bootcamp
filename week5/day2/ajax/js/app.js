console.log("APP JS READY");

$(document).ready(function() {

    $(".js-fetch-characters").on("click", fetchCharacters);

    $(".js-ackbar-form").on("submit", saveAckbar);

    $(".js-char-form").on("submit", saveChar);
});

//////////////////////////////////  Save Ackbar    ///////////////////////////

function saveAckbar(eventThing) {
    var weaponInput = $(".js-ackbar-weapon").val();

    var ackbarInfo = {
        name: "Admiral Ackbar",
        occupation: "Rebel Fleet Admiral",
        weapon: weaponInput,
    };
    eventThing.preventDefault();
    console.log("Hello");
    $.ajax({
        type:"POST",
        url: "https://ironhack-characters.herokuapp.com/characters",
        data: ackbarInfo,
        success: showAckbar,
        error: handleError,
    });
}

function showAckbar(infoFromApi) {
    console.log("Save Ackbar success");
    console.log(infoFromApi);
}

/////////////////////////////  Save Character    //////////////////////////////////

function saveChar(formEvent) {
    var weaponInput = $(".js-char-weapon").val();
    var nameInput = $(".js-char-name").val();
    var occupationInput = $(".js-char-occupation").val();

    var charInfo = {
        name: nameInput,
        occupation: occupationInput,
        weapon: weaponInput,
    };

    formEvent.preventDefault();
    console.log("Hello");
    $.ajax({
        type:"POST",
        url: "https://ironhack-characters.herokuapp.com/characters",
        data: charInfo,
        success: showChar,
        error: handleError,
    });
}

function showChar(response) {
    console.log("Save Character success");
    console.log(response);
        var characterItem = `<li>
            <h3>${response.name}</h3>
            <p>Weapon: ${response.weapon}</p>
            <p>Occupation: ${response.occupation}</p>
            <p>ID: ${response.id}</p>
        </li>`
        $(".js-live").append(characterItem);
}


//////////////////////////////////////   Misc Functions       /////////////////////////////////





function fetchCharacters() {
    $.ajax({
        type: "GET",
        url: "https://ironhack-characters.herokuapp.com/characters",
        success: showCharacters,
        error: handleError,
    });
}

function showCharacters(response) {
    console.log("Success");
    console.log(response);
    $(".js-character-list").empty;
    response.forEach(function(oneCharacter){
        var characterItem = `<li>
            <h3>${oneCharacter.name}</h3>
            <p>Weapon: ${oneCharacter.weapon}</p>
            <p>Occupation: ${oneCharacter.occupation}</p>
            <p>Debt: ${oneCharacter.debt}</p>
            <p>ID: ${oneCharacter.id}</p>
        </li>`
        $(".js-character-list").append(characterItem);
    });
}

function handleError(error) {
    console.log("Error!");
    console.log(error.responseText);
}
