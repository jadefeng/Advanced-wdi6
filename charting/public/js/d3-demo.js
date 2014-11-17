$(document).ready(function() {
	var nums = [80,34, 123, 34, 21, 64];

	// Can use D3 with canvas, SVG, ... etc anything!
	var svg = d3.select('body').append('svg').attr('width', 500).attr('height', 200);

	// for (var i=0; i < nums.length; i++) {
	// 	svg.append('rect');
	// }

	var bars = svg.selectAll('rect').data(nums);
	bars.enter().append('rect'); // This actually creates rect in the DOM by itself!!!
	// Declarative programming - it creates the rect and attaches the number to each one as data

	bars.attr('width', 20).attr('height', 20);

	bars.attr('x', function(data, i) {
		return 30 * i;
	});

	bars.attr('height', function(data) {
		return data;
	});

	bars.attr('y', function(data) {
		return 200 - data;
	});

});