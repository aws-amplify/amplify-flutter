// Scenario A: Password was not sent in client library API request, so SRP was not performed
// Scenario B: Password was sent in client library API request, so SRP was performed and verification expected in Lambda

exports.handler = async (event) => {
  // Scenario A: Step 1
  if (event.request.session.length == 0) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = 'CUSTOM_CHALLENGE';
    // Scenario B: Step 1
  } else if (
    event.request.session.length == 1 &&
    event.request.session[0].challengeName == 'SRP_A'
  ) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = 'PASSWORD_VERIFIER'
    // Scenario A: Step 2
  } else if (
    event.request.session.length == 2 &&
    event.request.session[1].challengeName == 'PASSWORD_VERIFIER' &&
    event.request.session[1].challengeResult == true
  ) {
    event.response.issueTokens = false;
    event.response.failAuthentication = false;
    event.response.challengeName = 'CUSTOM_CHALLENGE';
    // Scenario A: Step 3 OR Scenario B Step 2
  } else if (
    (event.request.session.length == 1 &&
      event.request.session[0].challengeName == 'CUSTOM_CHALLENGE' &&
      event.request.session[0].challengeResult == true) ||
    (event.request.session.length == 3 &&
      event.request.session[2].challengeName == 'CUSTOM_CHALLENGE' &&
      event.request.session[2].challengeResult == true)
  ) {
    event.response.issueTokens = true;
    event.response.failAuthentication = false;
  } else {
    event.response.issueTokens = false;
    event.response.failAuthentication = true;
  }
  return event;
};
