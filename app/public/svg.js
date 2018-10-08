
var x = document.getElementById("total-specials").innerHTML;



var i;
for (i = 0; i < x; i++){
    
    console.log(i);
}
var dataset = [2, 3, 3, 2, 5];

var svgWidth = 500, svgHeight = 300, barPadding =5;
var barWidth = (svgWidth / dataset.length);


var svg = d3.select('svg')
    .attr("width", svgWidth)
    .attr("height", svgHeight);

var yScale = d3.scaleLinear()
	.domain([0, d3.max(dataset)])
	.range([0, svgHeight-15]);

var barChart = svg.selectAll("rect")
    .data(dataset)
    .enter()
    .append("rect")
    .attr("y", function(d) {
        return svgHeight - yScale(d)
    })
    .attr("height", function(d) {
        return yScale(d);
    })
    .attr("width", barWidth - barPadding)
    .attr("transform", function(d, i) {
        var translate = [barWidth * i, 0];
        return "translate("+ translate +")";
    });

var text = svg.selectAll("text")
    .data(dataset)
    .enter()
    .append("text")
    .text(function(d) {
        return d;
    })
    .attr("y", function(d, i) {
        return svgHeight - yScale(d) - 2;
    })
    .attr("x", function(d, i) {
        return barWidth * i;  
    })
    .attr("fill", "#A64C38");