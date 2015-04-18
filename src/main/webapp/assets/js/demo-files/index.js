//////////////////////////////
// Main Dashboard Functions //
//////////////////////////////

"use strict";

$(document).ready(function(){

	/**
	 * circloidLineChartFlot creates the line chart
	 * @param {string} placeholder:	id of graph
	 */
	function circloidLineChartFlot(placeholder){

		var colors = $(placeholder).data("graph-colors").split(',');		

		var data = {
			"label1":{
				"label":"Pageviews",
				"data":[[1,2052],[2,1460],[3,1492],[4,1794],[5,1384],[6,2122],[7,2880],[8,2545],[9,3908],[10,4935],[11,3907],[12,4937]]
			},
			"label2":{
				"label":"Visitors","data":[[1,821],[2,730],[3,622],[4,897],[5,923],[6,999],[7,1400],[8,1212],[9,1534],[10,2100],[11,1503],[12,1899]]
			},
			"xaxis":[[1,"Jan"],[2,"Feb"],[3,"Mar"],[4,"Apr"],[5,"May"],[6,"Jun"],[7,"Jul"],[8,"Aug"],[9,"Sept"],[10,"Oct"],[11,"Nov"],[12,"Dec"]]
		};

		var options = {
			series: {
				lines: { 
					show: true,
					fill: false,
					lineWidth: 1.5
				},
				points: {
					show: true,
					radius: 6
				}	
			},
			shadowSize: 0,
			grid: {
				backgroundColor: '#FFFFFF',
				borderColor: '#D6D6D9',
				borderWidth: 1,
				hoverable: true
			},
			legend: {
				show: true,
				position: "nw"
			},
			xaxis: {
				ticks: data.xaxis
			},
			tooltip: true,
			tooltipOpts: {
				content: "%s: <b>%y</b>",
				shifts: {
					x: -40,
					y: 25
				},
				defaultTheme : false
			},
			colors: colors
		}

		$.plot(placeholder, [data.label1, data.label2], options);
	}

	/**
	 * circloidDialChart creates the dial chart
	 * @param {string} placeholder:	id of graph
	 */
	function circloidDialChart(placeholder){

		var colors = $(placeholder).data("graph-colors").split(',');
		var chartSize = $(placeholder).height();

		// Set the width of the Graph placeholder
		$(placeholder).width(chartSize);

		// Set inner text line-height
		$(placeholder).find(".percent").css({"line-height": chartSize + "px"});

		$(placeholder).easyPieChart({
			barColor: function(percent){
				if(colors[1] === undefined){
					return colors;
				}else{
					if(percent < 25){
						return colors[1];
					}else if((percent >= 25) && (percent < 50)){
						return colors[2];
					}else if((percent >= 50) && (percent < 75)){
						return colors[3];
					}else{
						return colors[0];
					}
				}
			},
			size: chartSize,
			lineCap: "square",
			scaleColor: "#7A7A7A",
			trackColor: "#E8E8E8",
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});

		var chart = window.chart = $(placeholder).data('easyPieChart');
		$(placeholder).closest(".c-widget").find('.update-graph').on('click', function(e) {
			chart.update(Math.random() * (90 - 8) + 8);
			e.preventDefault();
		});
	}

	/**
	 * circloidDonutChartFlot creates the donut chart
	 * @param  {string} placeholder:	id of graph
	 * @param  {string} graphSize		(optional) the size of the donut. accepts [micro, small, medium, normal, large]
	 * @param  {boolean} legend			whether legend will be displayed or not (default=true)
	 */
	function circloidDonutChartFlot(placeholder, graphSize, legend){

		var colors = $(placeholder).data("graph-colors").split(',');

		if(graphSize === undefined){
			graphSize = 0.88;
		}else if(graphSize == "micro"){
			graphSize = 0.75;
		}else if(graphSize == "small"){
			graphSize = 0.85;
		}else if(graphSize == "medium"){
			graphSize = 0.87;
		}else if(graphSize == "normal" || graphSize == "large"){
			graphSize = 0.88;
		}

		if(legend === undefined){
			legend = true
		}

		var data = [
			{data: 10900.0000, color: colors[0], label: "Servers"},
			{data: 10240.0000, color: colors[1], label: "Laptops/Desktops"},
			{data: 3900.0000, color: colors[2], label: "Software Licenses"},
			{data: 2050.0000, color: colors[3], label: "General Repairs"},
			{data: 1050.0000, color: colors[5], label: "Administrative Items"}
		];
		var options = {
			series: {
				pie: { 
					show: true,
					radius:  1,
					innerRadius: graphSize,
					label: false
				}
			},
			legend: {
				show: legend
			},
			grid: {
				hoverable: true
			},
			tooltip: true,
			tooltipOpts: {
				content: function(label, xval, yval, flotItem){
					return label + ": <b>$" + yval.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, '$&,') + "</b>";
				},
				shifts: {
					x: -60,
					y: 25
				},
				defaultTheme : false
			}
		};

		// Plot the chart and set options
		var plotChart = $.plot(placeholder, data, options);

		if (isNaN(plotChart.getData()[0].percent)){
			var canvas = plotChart.getCanvas();
			var ctx = canvas.getContext("2d");
			var x = canvas.width / 2;
			var y = canvas.height / 2;
			ctx.textAlign = 'center';
			ctx.fillText('No Data for this date range', x, y);
		}
	}

	/**
	 * circloidMapWorld handles the world map
	 * @param  {string} placeholder		id of graph
	 */
	function circloidMapWorld(placeholder){

		var colors = $(placeholder).data("graph-colors").split(',');	

		$(placeholder).vectorMap({
			map: 'world_en',
			backgroundColor: '#FFFFFF',
			color: '#ffffff',
			hoverOpacity: 0.7,
			selectedColor: '#666666',
			enableZoom: true,
			showTooltip: true,
			values: sample_data,
			scaleColors: colors,
			normalizeFunction: 'polynomial'
		});
	}

	/* Call Functions */
	circloidLineChartFlot("#visitor-pageview");

	circloidWidgets();

	circloidTaskListWidget();

	circloidDialChart("#server-load");
	circloidDialChart("#cloud-storage");
	
	circloidDonutChartFlot("#budget-allocation", "small", false);
	
	circloidMapWorld("#world-map-1");
});