$(document).ready(function() {
  
  $(".ui.dropdown").dropdown();
  $(".ui.checkbox").checkbox();

  // create sidebar and attach to menu open
  $('.ui.sidebar').sidebar('attach events', '.toc.item');

});

function geekFactor(selector, factor) {
    $(selector).highcharts({
      chart: {
        type: 'column',
        spacingBottom: 0,
        spacingTop: 0,
        spacingLeft: 0,
        spacingRight: 0
      },
      title: {
        text: ''
      },
      xAxis: {
        categories: [''],
        tickWidth: 0,
        labels: {
          enabled: false
        }
      },
      yAxis: {
        max: 10,
        tickPixelInterval: 500,
        title: {
          enabled: false
        },
        labels: {
          enabled: false
        }
      },
      plotOptions: {
        series: {
          stacking: 'normal'
        }
      },
      legend: {
        enabled: false
      },
      credits: {
        enabled: false
      },
      exporting: {
        enabled: false
      },
      tooltip: {
        enabled: false
      },
      series: [{
        name: '',
        data: [factor],
        color: '#7cb5ec'
      }]
    });
}

function addProgressCircle(element, percent, icon) {
	var bar = new ProgressBar.Circle(element, {
	  color: '#aaa',
	  // This has to be the same size as the maximum width to
	  // prevent clipping
	  strokeWidth: 10,
	  trailWidth: 6,
	  easing: 'easeInOut',
	  duration: 1400,
	  text: {
	    autoStyleContainer: false
	  },
	  from: { color: '#aaa', width: 10 },
	  to: { color: '#333', width: 10 },
	  // Set default step function for all animate calls
	  step: function(state, circle) {
	    circle.path.setAttribute('stroke', state.color);
	    circle.path.setAttribute('stroke-width', state.width);
	
	    var value = Math.round(circle.value() * 100);
	    if (value === 0) {
	      circle.setText('');
	    } else {
	    	circle.setText(value);
	      circle.setText('<i class="'+icon+' icon"></i>');
	    }
	
	  }
	});
	bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
	bar.text.style.fontSize = '2rem';
	
	bar.animate(percent);  // Number from 0.0 to 1.0
}