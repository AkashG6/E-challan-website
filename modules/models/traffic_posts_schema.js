var mongoose = require('mongoose');

var trafficPostsSchema = new mongoose.Schema({
    id: { type: String, default: null },
    division: { type: String, default: null },
    incharge: { type: Number, default: 0 },
});

var trafficPostsSchema = mongoose.model('trafficPosts', trafficPostsSchema);
module.exports = trafficPostsSchema;