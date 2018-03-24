var MongoClient = require('mongodb').MongoClient;
var assert = require('assert');
var url = 'mongodb://localhost:27017/dd';

var license_holder = require('models/license_holder_schema');
var offenders = require('models/offenders_schema');
var officers = require('models/officers_schema');
var penalties = require('models/penalties_schema');
var traffic_posts = require('models/traffic_posts_schema');
var transactions = require('models/transactions_schema');
var vehicles = require('models/vehicles_schema');
