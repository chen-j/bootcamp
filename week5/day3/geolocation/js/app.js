console.log("We're online");

$(document).ready(function() {
    console.log("Done loading");
    promptForLocation();
    beginWatch();
});


//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


function beginWatch() {
    if ("geolocation" in navigator) {
        var options = {
            frequency: 1,
        }
        navigator.geolocation.watchPosition(watchSuccess, watchError);
    }
}

function watchSuccess(locInfo) {
    console.log("Watch location");
    console.log(locInfo);

    var watchItem = `
        <li>
            latitude: ${locInfo.coords.latitude}
            <br>
            longitude: ${locInfo.coords.longitude}
        </li>`;
        $(".js-watch-list").append(watchItem);
}



function watchError(errInfo) {
    console.log("Watch error");
    console.log(errInfo);
}


/////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////


function promptForLocation() {
    if ("geolocation" in navigator) {
        var options = {
            enableHighAccuracy: true,
            // timeout: 500,
        };
        navigator.geolocation.getCurrentPosition(showPositionInDom, showError, options)
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

function showPositionInDom(locationInfo) {
    console.log("Got position");
    console.log(locationInfo);
    $(".js-lat").html(locationInfo.coords.latitude);
    $(".js-lng").html(locationInfo.coords.longitude);
}

function showError(error) {
    console.log("Error getting position");
    console.log(error);
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
