'use strict'

class Thermostat {
  constructor() {
    this.temperature = 20;
  }

  getCurrentTemperature() {
    return this.temperature;
  }

  up() {
    this.temperature += 1;
  }
}
