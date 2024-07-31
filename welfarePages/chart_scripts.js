
anychart.onDocumentReady(function () {
  let bar_chart_data = [];
  function updateChartData(sseData) {
    bar_chart_data = sseData.map(item => [item.WID, item.SolvedComplaintsCount]);
    chart.data(bar_chart_data);
    chart.draw();
  }
  var source = new EventSource("../api/welfare_api/warden_stats.php");

  source.onmessage = (e) => {
      const sseData = JSON.parse(e.data);
  
      updateChartData(sseData);
  };
  anychart.theme('lightBlue');

// Function to update the chart data and redraw the chart
var chart = anychart.column3d();
  chart.background().fill({
    keys: ['rgba(100,100,255,0.2)'],
    mode: "fit"
  });
  chart.background().corners(20);

  // turn on chart animation
  chart.animation(true);
  // set chart title text settings
  chart.title('Problems Solved by Wardens');
  chart.column();

  chart
    .tooltip()
    .position('center-top')
    .anchor('center-bottom')
    .offsetX(0)
    .offsetY(10)
    .format('{%Value} solved');

    // set scale minimum
  chart.yScale().minimum(0);
    
    // set yAxis labels formatter
  chart.yAxis().labels().format('{%Value}{groupsSeparator: }');

  chart.tooltip().positionMode('point');
  chart.interactivity().hoverMode('by-x');
  chart.xAxis().title('Wardens');
  chart.yAxis().title('No of problems');

  chart.container('barchart');
  chart.draw();
  
  source.onmessage = (e) => {
    const sseData = JSON.parse(e.data);
    bar_chart_data = sseData.map(item => [item.WID, parseInt(item.SolvedComplaintsCount)]);
    chart.data(bar_chart_data);
  
    // Update x-axis and y-axis labels
    chart.xAxis().labels().format('{%Value}');
    chart.yAxis().labels().format('{%Value}');
  
    chart.draw();
  };
  
var pie_source = new EventSource("../api/welfare_api/complaint_stats.php");

let piechart_data = [];

pie_source.onmessage = (e) => {
  // Parse the SSE data
  const sseData = JSON.parse(e.data);

  // Extract values and labels from the SSE data
  const values = Object.values(sseData[0]);
  const labels = Object.keys(sseData[0]);
  // Create data points for the pie chart
  const dataPoints = labels.map((label, index) => ({
    x: label,
    value: parseInt(values[index])
  }));
  console.log(dataPoints)
  // Update the piechart_data array with the new data
  piechart_data = dataPoints;
  
  // Create the pie chart with the updated data
  var pie = anychart.pie(piechart_data);  
  pie.title("complaint's status");


  pie.background().fill({
    keys: ['rgba(100,100,255,0.2)'],
    mode: "fit"
  });
  pie.radius('60%')
  pie.innerRadius('50%')
  pie.background().corners(20);
  pie.animation(true);
  pie.container('piechart');
  pie.draw();
};

//the daily count


  anychart.data.loadJsonFile(
    '../days.json',
    function(data) {
      console.log(data)
      var dataset = anychart.data.set(data);
      var mapping = dataset.mapAs({
        x: 'date',
        value: 'level'
      });
      var chart = anychart.calendar(mapping);

      chart.background('#22282D');

      chart.months()
        .stroke(false)
        .noDataStroke(false);

      chart.days()
        .spacing(5)
        .stroke(false)
        .noDataStroke(false)
        .noDataFill('#2d333b')
        .noDataHatchFill(false);

      chart.colorRange(false);

      var customColorScale = anychart.scales.ordinalColor();
      customColorScale.ranges([
        {equal: 1, color: '#0D4428'},
        {equal: 2, color: '#006D31'},
        {equal: 3, color: '#37AB4B'},
        {equal: 4, color: '#39D353'}
      ]);

      // Set color scale.
      chart.colorScale(customColorScale);

      chart.tooltip()
        .format('{%count} contributions');

      chart.listen('chartDraw', function() {
        document.getElementById('container').style.height = chart.getActualHeight() + 'px';
      });

      chart.container('day_count');
      chart.draw();
    }
  );


});
