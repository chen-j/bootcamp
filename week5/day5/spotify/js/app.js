$(document).ready(function() {
    $(".js-search-form").on("submit", songSearch);
    $(".js-play-button").on("click", playPauseAudio);


});


////////////////////////////////////////////////////////////////////////////
///////////////////////////////// Song Search //////////////////////////////
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
    var coverImage = `<img data-artist-id="${searchResults.tracks.items[0].artists[0].id}" src="${searchResults.tracks.items[0].album.images[0].url}">`;
    var songPreview =`<audio src="${searchResults.tracks.items[0].preview_url}"></audio>`;
    $(".js-song-title").html(songTitle);
    $(".js-artist").html(artistName);
    $(".js-cover-image").html(coverImage);
    $(".js-audio").html(songPreview);
    $("audio").on('timeupdate', printTime);
    $(".js-artist").on("click", showArtist);
}

function handleError(error) {
    console.log("Error!");
    console.log(error.responseText);
}


function showArtist() {
    var artistId = $("img").data("artist-id");
    $.ajax({
        url: "https://api.spotify.com/v1/artists/" + artistId,
        type: 'GET',
        success: showModal,
        error: handleError,
    });
}

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

//////////////////////////////////////////////////////////////
/////////////////////// Artist Modal /////////////////////////
//////////////////////////////////////////////////////////////



function showModal(response){
    $("#artistModal").modal("show");
    console.log(response);
    var popularity = response.popularity;
    var followers = `<p>${response.followers.total} followers</p>`;
    var artist = response.name;
    var genres = response.genres;
    var artistImage = `<img class="img-fluid" src="${response.images[0].url}">`;
    $(".js-mod-artist-name").html(artist);
    $(".artist-mod-image").html(artistImage);
    $(".followers").html(followers);
    genres.forEach(function(genre){
        var genreItem =`<li>${genre}</li>`;
        $(".genre-listing").append(genreItem);
    });

}
