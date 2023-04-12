// Checks for errors and print the response on screen
import 'package:amplify_flutter/amplify_flutter.dart';

String handleResponse(
  GraphQLResponse<Model> response,
) {
  final data = response.data;
  if (data == null) {
    safePrint('errors: ${response.errors}');
    return response.errors.toString();
  }

  final prettyData = prettyPrintJson(data);

  safePrint(prettyData);

  return prettyData;
}

// Checks for errors and print the response on screen
void handleSubscriptionEvents(GraphQLResponse<dynamic> event) {
  if (event.hasErrors) {
    safePrint('Error(s) received from subscription: ${event.errors}');
  }

  final prettyData = prettyPrintJson(event.data);

  final result = 'Subscription event data received: $prettyData';

  safePrint(result);
}
