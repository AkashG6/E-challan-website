var mongoose = require('mongoose');

var vehiclesSchema = new mongoose.Schema({
    vehicle_no: { type: String, default: null },
    owner_id: { type: String, default: null },
    type: { type: String, default: null },
    brand: { type: String, default: null },
    model: { type: String, default: null },
    date_of_reg: { type: Number, default: 0 },
});

var vehiclesSchema = mongoose.model('vehicles', vehiclesSchema);
module.exports = vehiclesSchema;