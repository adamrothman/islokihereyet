require.config {
  baseUrl: 'scripts'
}

require ['moment', 'jquery'], (moment, $) ->
  quantify = (quantity, unit) ->
    return "#{quantity} #{unit}#{if quantity != 1 then 's' else ''}"

  getRemainingString = () ->
    delta = moment.duration(moment('2014-04-11T22:41') - moment())
    return "#{quantify(delta.days(), 'day')}, #{quantify(delta.hours(), 'hour')}, #{quantify(delta.minutes(), 'minute')}, #{quantify(delta.seconds(), 'second')}"

  update = () ->
    $('#countdown').html(getRemainingString())

  setInterval update, 1000
