var mongoose = require('mongoose');

var offendersSchema = new mongoose.Schema({
    id: { type: String, default: null },
    aadhar: { type: String, default: null },
    name: { type: String, default: null },
    age: { type: Number, default: 0 },
    contact: { type: Number, default: 0 },
    offense_id: { type: Number, default: 0 },
    license_no: { type: Number, default: 0 },
    vehicle_no: { type: Number, default: 0 },
    offense_location: { type: String, default: null },
});

var offendersSchema = mongoose.model('offenders', offendersSchema);
module.exports = offendersSchema;