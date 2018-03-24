var mongoose = require('mongoose');

var penaltiesSchema = new mongoose.Schema({
    id: { type: String, default: null },
    penalty: { type: String, default: null }, // description of penalty maybe
    fine: { type: Number, default: 0 }, // in rupees
    sentence: { type: Number, default: 0 }, // in months
});

var penaltiesSchema = mongoose.model('penalties', penaltiesSchema);
module.exports = penaltiesSchema;