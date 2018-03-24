var mongoose = require('mongoose');

var licenseHolderSchema = new mongoose.Schema({
    license_no: { type: String, default: null },
    name: { type: String, default: null },
    age: { type: Number, default: 0 },
    date_of_reg: { type: Number, default: 0 },
    exp_date: { type: Number, default: 0 },
    rto: { type: String, default: null },
});

var licenseHolderSchema = mongoose.model('licenseHolder', licenseHolderSchema);
module.exports = licenseHolderSchema;