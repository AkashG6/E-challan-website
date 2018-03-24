var mongoose = require('mongoose');

var officersSchema = new mongoose.Schema({
    id: { type: String, default: null },
    name: { type: String, default: null },
    contact: { type: Number, default: 0 },
    post: { type: String, default: null },
    division: { type: String, default: null },
});

var officersSchema = mongoose.model('officers', officersSchema);
module.exports = officersSchema;