var mongoose = require('mongoose');

var transactionsSchema = new mongoose.Schema({
    id: { type: String, default: null },
    challan_id: { type: Number, default: 0 },
    amount: { type: Number, default: 0 },
    license_no: { type: Number, default: 0 },
    status: { type: Number, default: 0 },
});

var transactionsSchema = mongoose.model('transactions', transactionsSchema);
module.exports = transactionsSchema;