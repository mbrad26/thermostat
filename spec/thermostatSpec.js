'use strict';

describe('Thermostat', function () {
  var thermostat;

  beforeEach(function () {
    thermostat = new Thermostat;
  });

  it('has a default temperature', function () {
    expect(thermostat.getCurrentTemperature()).toEqual(20);
  });

  it('can turn the temperature up', function () {
    thermostat.up();

    expect(thermostat.getCurrentTemperature()).toEqual(21);
  });
});
