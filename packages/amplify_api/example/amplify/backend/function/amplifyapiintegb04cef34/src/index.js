

/**
 * @type {import('@types/aws-lambda').APIGatewayProxyHandler}
 */
exports.handler = async (event) => {
  // TODO implement
  const response = {
      statusCode: 200,
  //  Uncomment below to enable CORS requests
  //  headers: {
  //      "Access-Control-Allow-Origin": "*",
  //      "Access-Control-Allow-Headers": "*"
  //  }, 
      body: 'Hello from Lambda!',
  };
  return response;
};
