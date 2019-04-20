var price=[];
function chart(price)
{
Highcharts.chart('container', {

    title: {
        text: 'Student '
    },

    xAxis: {
        tickInterval: 1,
        type: 'logarithmic'
    },

    yAxis: {
        type: 'logarithmic',
        minorTickInterval: 0.1
    },

    tooltip: {
        headerFormat: '<b>{series.name}</b><br />',
        pointFormat: 'x = {point.x}, y = {point.y}'
    },

    series: [{
        data: price,
        pointStart: 1
    }]
});
}
$(document).ready(function() {
	$.ajax({
		type : "GET",
		url : 'data',

		success : function(data) {
			for (i = 0; i < data.length; i++) {
				price[i] = parseInt(data[i]);

			}
			chart(price);

		}

	});
})