const functions = require("firebase-functions");
const admin = require("firebase-admin");
// To avoid deployment errors, do not call admin.initializeApp() in your code
const { RtcTokenBuilder, RtcRole } = require("agora-token");

exports.generateToken = functions
  .region("asia-south1")
  .https.onCall((data, context) => {
    // Write your code below!
    const appId = "2f55643e324d45079b0287574c2f6e6a";
    const appCertificate = "1c992bc16cb24956abaa9fd7c839ef8f";
    const channelName = "TopWorker Skills Development";
    const uid = 0;
    const role = RtcRole.PUBLISHER;

    const expirationTimeInSeconds = 3600;
    const currentTimestamp = Math.floor(Date.now() / 1000);
    const privilegeExpiredTs = currentTimestamp + expirationTimeInSeconds;

    try {
      const token = RtcTokenBuilder.buildTokenWithUid(
        appId,
        appCertificate,
        channelName,
        uid,
        role,
        privilegeExpiredTs,
      );
      return token;
    } catch (err) {
      throw new functions.https.HttpsError(
        "aborted",
        "Could not generate token",
      );
    }
  });
