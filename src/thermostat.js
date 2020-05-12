'use strict';

class Thermostat {
  constructor() {
    this.MINIMUM_TEMPERATURE = 10;
    this.powerSavingMode = true;
    this.temperature = 20;
  }

  getCurrentTemperature() {
    return this.temperature;
  }

  up() {
    this.temperature += 1;
  }

  down() {
    if (this.isMinimumTemperature()) {
      return;
    }

    this.temperature -= 1;
  }

  switchPowerSavingModeOff() {
    this.powerSavingMode = false;
  }

  switchPowerSavingModeOn() {
    this.powerSavingMode = true;
  }

  isMinimumTemperature() {
    return this.temperature === this.MINIMUM_TEMPERATURE;
  }

  isPowerSavingModeOn() {
    return this.powerSavingMode === true;
  }
}
