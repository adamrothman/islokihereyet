require.config({
  baseUrl: 'scripts'
});

require(['moment', 'jquery'], function(moment, $) {
  var getRemainingString, quantify, update;
  quantify = function(quantity, unit) {
    return "" + quantity + " " + unit + (quantity !== 1 ? 's' : '');
  };
  getRemainingString = function() {
    var delta;
    delta = moment.duration(moment('2014-04-11T22:41') - moment());
    return "" + (quantify(delta.days(), 'day')) + ", " + (quantify(delta.hours(), 'hour')) + ", " + (quantify(delta.minutes(), 'minute')) + ", " + (quantify(delta.seconds(), 'second'));
  };
  update = function() {
    return $('#countdown').html(getRemainingString());
  };
  return setInterval(update, 1000);
});
