console.log("We're online");

$(document).ready(function() {
    console.log("Done loading");
    promptForLocation();
});

function promptForLocation() {
    if ("geolocation" in navigator) {
        console.log("Geolocations functions are available");
        navigator.geolocation.getCurrentPosition(showPositionInDom, showError)
    }
    else {
        var errorHtml = `
        <div class = "alert alert-danger" role="alert">
        <strong>Sorry!</strong>
        Your browser is too old to use this site.
        </div>
        `;
        $("body").prepend(errorHtml);
    }
}

function showPositionInDom() {
    console.log("Got position");
}

function showError() {
    console.log("Error getting position");
}
