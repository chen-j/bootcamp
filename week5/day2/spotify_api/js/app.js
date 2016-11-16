
$(document).ready(function() {

    $(".js-search-form").on("submit", artistSearch);
    $(".js-search-results").on("click",".js-artist", artistAlbums);
    $(".js-album-modal").on("click", ".artist-modal-album", albumTracks);

});

////////////////////////////////////////////////////////////////////////////
///////////////////////// Artist Search ////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

function artistSearch(formEvent) {
    var searchQuery = $(".js-search-term").val();
    $(".js-search-results").empty();
    formEvent.preventDefault();
    $.ajax({
        url: "https://api.spotify.com/v1/search?type=artist&query=" + searchQuery,
        type: 'GET',
        success: showResults,
        error: handleError,
    });

}

function showResults(response) {
    console.log(response);
    var searchResults = response.artists.items;
    searchResults.forEach(function(artist){
        var imageUrl = "images/not-available.jpg";
        if (artist.images.length != 0) {
            imageUrl = artist.images[0].url;
        };
        var oneResult = `<div class="js-artist col-sm-3 image-container" data-artist-id=${artist.id}
        data-toggle="modal" data-target="#albumsModal">
            <br>
            <p>${artist.name}</p>
            <img class="js-artist-image img-fluid" src = "${imageUrl}">
        </div>`;
    $(".js-search-results").append(oneResult);
});
}

function handleError(error) {
    console.log("Error!");
    console.log(error.responseText);
}

//////////////////////////////////////////////////////////////////////
/////////////////////////////  Artist Albums /////////////////////////
/////////////////////////////////////////////////////////////////////
function artistAlbums() {
    var artistId = $(this).data("artist-id");
    $.ajax({
        url: `https://api.spotify.com/v1/artists/${artistId}/albums?market=US`,
        type: 'GET',
        success: showAlbums,
        error: handleError,
    });
}

function showAlbums(response) {
    $(".js-album-modal").empty();
    console.log(response);
    var albumSearch = response.items;
    albumSearch.forEach(function(album) {
        var albumImage = "images/not-available.jpg";
        if (album.images.length !=0) {
            albumImage = album.images[0].url;
        };
        var albumResult = `<div class="col-sm-4 artist-modal-album" data-album-name=${album.name}
        data-album-id=${album.id} data-toggle="modal" data-target="#tracksModal">
        <div>${album.name}</div>
            <img class="js-album-image center-block img-fluid" src = "${albumImage}">
        </div>`;
        $(".js-album-modal").append(albumResult);
    })
}

///////////////////////////////////////////////////////////////////////////
//////////////////////    Display Album Tracks    ////////////////////////
///////////////////////////////////////////////////////////////////////////


function albumTracks() {
    var albumId = $(this).data("album-id")
    $.ajax({
        url: `https://api.spotify.com/v1/albums/${albumId}/tracks`,
        type: 'GET',
        success: showTracks,
        error: handleError,
    });
}

function showTracks(response) {
    $(".js-tracks-modal").empty();
    console.log(response);
    var albumName = $(".artist-modal-album").data("album-name");
    console.log(albumName);
    var albumTracks = response.items;
    albumTracks.forEach(function(track) {
        var singleTrack = `<div class="container">
        <div><iframe class="js-embed col-sm-12" src="https://open.spotify.com/embed/track/${track.id}"></iframe></div>
        <p class="btn btn-outline-success col-sm-2 offset-sm-3"><a href="${track.preview_url}" target="_blank">Preview</p>
        <a href="${track.external_urls.spotify}" target="_blank" class="btn btn-outline-success col-sm-2 offset-sm-2">Play on Spotify</a>
        </div>`
        // $(".js-album-title").html(`${albumName}`)
        $(".js-tracks-modal").append(singleTrack);
    });
}
