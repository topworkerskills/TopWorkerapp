const admin = require("firebase-admin/app");
admin.initializeApp();

const generateToken = require("./generate_token.js");
exports.generateToken = generateToken.generateToken;
