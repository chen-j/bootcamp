$(document).ready(function() {
    $(".js-search-form").on("submit", songSearch);
    $(".js-play-button").on("click", playPauseAudio);

});


////////////////////////////////////////////////////////////////////////////
///////////////////////// Song Search ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

function songSearch(formEvent) {
    var searchQuery = $(".js-search-term").val();
    formEvent.preventDefault();
    $.ajax({
        url: "https://api.spotify.com/v1/search?type=track&query=" + searchQuery,
        type: 'GET',
        success: updateTrack,
        error: handleError,
    });

}

function updateTrack(searchResults) {
    console.log(searchResults);
    var songTitle = searchResults.tracks.items[0].name;
    var artistName = searchResults.tracks.items[0].artists[0].name;
    var coverImage = `<img src="${searchResults.tracks.items[0].album.images[0].url}">`;
    var songPreview =`<audio src="${searchResults.tracks.items[0].preview_url}"></audio>`;
    $(".js-song-title").html(songTitle);
    $(".js-artist").html(artistName);
    $(".js-cover-image").html(coverImage);
    $(".js-audio").html(songPreview);
    $("audio").on('timeupdate', printTime);
}

function handleError(error) {
    console.log("Error!");
    console.log(error.responseText);
}

//////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////
/////////////////////// Play / Pause Audio ///////////////////
/////////////////////////////////////////////////////////////

function playPauseAudio() {
    if ($(".js-play-button").hasClass('playing')) {
        $(".js-play-button").removeClass('playing')
        $("audio").trigger('pause');
    } else {
        $("audio").trigger('play');
        $(".js-play-button").addClass('playing');
    };
}



/////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////

function printTime () {
    var current = $("audio").prop('currentTime');
    $(".track-timer").prop('value', current);
    if ($(".track-timer").prop('value') >= 30) {
        $(".js-play-button").removeClass('playing');
    };
}
