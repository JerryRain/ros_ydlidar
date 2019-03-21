
"use strict";

let Analog = require('./Analog.js');
let Digital = require('./Digital.js');
let ArduinoConstants = require('./ArduinoConstants.js');
let AnalogFloat = require('./AnalogFloat.js');
let SensorState = require('./SensorState.js');

module.exports = {
  Analog: Analog,
  Digital: Digital,
  ArduinoConstants: ArduinoConstants,
  AnalogFloat: AnalogFloat,
  SensorState: SensorState,
};
