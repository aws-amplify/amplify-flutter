// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// Checks for errors and print the response on screen
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';

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

Widget apiButton({
  required String text,
  void Function()? onPressed,
  Color btnColor = Colors.blue,
}) {
  return ElevatedButton(
    onPressed: Amplify.isConfigured ? onPressed : null,
    style: ElevatedButton.styleFrom(
      backgroundColor: btnColor,
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: onPressed != null ? Colors.white : Colors.black45,
      ),
    ),
  );
}
