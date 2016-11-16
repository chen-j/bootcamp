console.log("We're online");

$(document).ready(function() {
    console.log("Done loading");
    promptForLocation();
});

/////////////////////////////////////////////////////

function promptForLocation() {
    if ("geolocation" in navigator) {
        navigator.geolocation.getCurrentPosition(gpsPosition, gpsError);
    }
    else {
        var errorHtml =`
        <div class = "alert alert-danger" role="alert">
        <strong>Sorry!</strong>
        Your browser is too old to use this site.
        </div>`;
        $(".container").prepend(errorHtml);
    }
}

function gpsPosition(locationInfo) {
    console.log("Got postion");
    console.log(locationInfo);
    var longitude = locationInfo.coords.longitude;
    var latitude = locationInfo.coords.latitude;
    var gpsPositionImage = `

        <div class="col-sm-8 offset-sm-2">
        <h4>Your Current Location:</h4>
            <img class="img-fluid "src="https://maps.googleapis.com/maps/api/staticmap?zoom=15&size=800x500&center=${latitude},${longitude}">
        </div>`;
    $(".container").append(gpsPositionImage);
}

function gpsError(locationError) {
    console.log("Error getting position");
    console.log(locationError);
    var positionErrorHtml = `
        <div class="alert alert-danger" role="alert">
            <strong> Sorry! </strong>
            There was an error retrieving your position.
            <button class="js-try-again btn btn-outline-danger">Try Again</button>
        </div>`;
    $(".container").prepend(positionErrorHtml);
    $(".js-try-again").on("click", function () {
        location.reload();
    });
}
