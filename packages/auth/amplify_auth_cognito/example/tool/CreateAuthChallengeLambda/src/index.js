
exports.handler = async (event) => {
  if (event.request.challengeName === 'CUSTOM_CHALLENGE') {
          
    event.response.publicChallengeParameters = {'test-key': 'test-value'}
    event.response.privateChallengeParameters = {};
    event.response.privateChallengeParameters.answer = '123';
}
  return event;
};
