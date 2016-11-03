var fs = require('fs');
function fileActions(err, file){
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);

		var sortedEpisodes = episodes.sort(function(a,b){
			return a.episode_number - b.episode_number
		});

		function highRating(episode) {
			return episode.rating > 8.5;
		}

		var filteredRatings = episodes.filter(highRating);

/////////////////////      Ordered	//////////////////////////

		episodes.forEach(function (episode) {
				var star = "*";
				var stars = star.repeat(Math.round(episode.rating));
				console.log(`Title: ${episode.title}`);
				console.log(`Description: ${episode.description}`);
				console.log(`Rating: ${episode.rating}   ${stars}`);
				console.log(`Episode: ${episode.episode_number}`);
				console.log("----------------------");
		});


////////////////////   Filtered    //////////////////////////
		console.log("");
		console.log("");
		filteredRatings.forEach(function (episode) {
				var star = "*";
				var stars = star.repeat(Math.round(episode.rating));
				console.log(`Title: ${episode.title}`);
				console.log(`Description: ${episode.description}`);
				console.log(`Rating: ${episode.rating}   ${stars}`);
				console.log("----------------------");
		});

/////////////////     Find Snow    //////////////////////////
		console.log("Find Snow");
		episodes.forEach (function (episode) {
			var desc = episode.description;
			var findSnow = desc.indexOf("Jon");
			console.log("");
			console.log(`Episode: ${episode.episode_number}`);
			console.log(`Jon is mentioned in the description at index ${findSnow}`);
		});

}

fs.readFile("./lib/got.json", 'utf8', fileActions);
