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

  it('can turn the temperature down', function () {
    thermostat.down();

    expect(thermostat.getCurrentTemperature()).toEqual(19);
  });

  it('has a minimum temperature of 10 degrees', function () {
    for (let i = 0; i < 10; i++) {
      thermostat.down();
    }

    expect(thermostat.getCurrentTemperature()).toEqual(10);
  });

  it('has power saving mode ON by default', function () {
    expect(thermostat.isPowerSavingModeOn()).toBe(true);
  });

  it('can turn power saving mode OFF', function () {
    thermostat.switchPowerSavingModeOff();

    expect(thermostat.isPowerSavingModeOn()).toBe(false);
  });

  it('can turn power saving mode ON', function () {
    thermostat.switchPowerSavingModeOff();

    expect(thermostat.isPowerSavingModeOn()).toBe(false);
    thermostat.switchPowerSavingModeOn();

    expect(thermostat.isPowerSavingModeOn()).toBe(true);
  });

  describe('when PSM is ON', function () {
    it('has an upper limit of 25 degrees', function () {
      for (let i = 0; i < 6; i++) {
        thermostat.up();
      }

      expect(thermostat.getCurrentTemperature()).toEqual(25);
    });
  });

  describe('when PSM is Off', function () {
    it('has an upper limit of 32 degrees', function () {
      thermostat.switchPowerSavingModeOff();
      for (let i = 0; i < 13; i++) {
        thermostat.up();
      }

      expect(thermostat.getCurrentTemperature()).toEqual(32);
    });
  });
});
