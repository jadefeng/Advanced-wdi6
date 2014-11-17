$(document).ready(function() {
	$.getJSON('/beverages.json').done(function (beverageData) {
		var coffee = _.zip(_.range(beverageData.length) , _(beverageData).pluck('coffee')); // Range finds the range of numbers from 0 to the argument passed in
		var water = _.zip(_.range(beverageData.length), _(beverageData).pluck('water')); // Pluck puts an array of items from an object limited to the key argument
		var beer = _.zip(_.range(beverageData.length), _(beverageData).pluck('beer')); // Zip puts two arrays together and matches the indexes together to make an array of arrays
		var whiskey = _.zip(_.range(beverageData.length), _(beverageData).pluck('whiskey'));
		// $.plot($('#hydration-week'), [ coffee, water, beer, whiskey ] );
		$.plot($('#hydration-week'), [
			{ label: 'coffee' , data: coffee },
			{ label: 'water', data: water },
			{ label: 'beer', data: beer },
			{ label: 'whiskey', data: whiskey }
		]);
	});
});



$(document).ready(function() {
	$.plot($("#placeholder"), [ [[0, 0], [1, 1]] ], { yaxis: { max: 1 } });
});