'use strict';

class Thermostat {
  constructor() {
    this.DEFAULT_TEMPERATURE = 20;
    this.MAX_LIMIT_PSM_ON = 25;
    this.MAX_LIMIT_PSM_OFF = 32;
    this.MINIMUM_TEMPERATURE = 10;
    this.powerSavingMode = true;
    this.temperature = this.DEFAULT_TEMPERATURE;
  }

  getCurrentTemperature() {
    return this.temperature;
  }

  up() {
    if (this.isMaximumTemperature()) {
      return;
    }

    this.temperature += 1;
  }

  down() {
    if (this.isMinimumTemperature()) {
      return;
    }

    this.temperature -= 1;
  }

  resetTemperature() {
    this.temperature = this.DEFAULT_TEMPERATURE;
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

  isMaximumTemperature() {
    if (this.isPowerSavingModeOn() === false) {
      return this.temperature === this.MAX_LIMIT_PSM_OFF;
    }

    return this.temperature === this.MAX_LIMIT_PSM_ON;
  }

  isPowerSavingModeOn() {
    return this.powerSavingMode === true;
  }
}
