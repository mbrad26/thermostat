$(document).ready(function () {
  var thermostat = new Thermostat();
  updateTemperature();

  $('#temperature-up').on('click', function () {
    thermostat.up();
    updateTemperature();
  });

  $('#temperature-down').on('click', function () {
    thermostat.down();
    updateTemperature();
  });

  $('#temperature-reset').on('click', function () {
    thermostat.resetTemperature();
    updateTemperature();
  });

  $('#powersaving-on').on('click', function () {
    thermostat.switchPowerSavingModeOn();
    $('#power-saving-status').text('ON');
  });

  $('#powersaving-off').on('click', function () {
    thermostat.switchPowerSavingModeOff();
    $('#power-saving-status').text('OFF');
  });

  displayWeather('London');

  $('#select-city').submit(function (event) {
    event.preventDefault();
    var city = $('#current-city').val();
    displayWeather(city);
  });

  function updateTemperature() {
    $('#temperature').text(thermostat.temperature);
    $('#temperature').attr('class', thermostat.energyUsage());
  }

  function displayWeather(city) {
    var url = 'http://api.openweathermap.org/data/2.5/weather?q=' + city;
    var token = '&appid=a3d9eb01d4de82b9b8d0849ef604dbed';
    var units = '&units=metric';
    $.get(url + token + units, function (data) {
      $('#current-temperature').text(data.main.temp);
    });
  }
});
