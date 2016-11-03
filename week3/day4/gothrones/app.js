var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
		episodes.forEach(function (episode) {
				var star = "*";
				var stars = star.repeat(Math.round(episode.rating));
				console.log(`Title: ${episode.title}`);
				console.log(`Description: ${episode.description}`);
				console.log(`Rating: ${episode.rating}   ${stars}`);
				console.log("----------------------");
		});

}
fs.readFile("./lib/got.json", 'utf8', fileActions);
