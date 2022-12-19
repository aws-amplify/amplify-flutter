// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

/// Commonly used cross-category error messages.
class AmplifyExceptionMessages {
  static const _createGithubIssueString = """
          Please take a look at 
        https://github.com/aws-amplify/amplify-flutter/issues to see if there are any existing issues that 
        match your scenario, and file an issue with the details of the bug if there isn't.
  """;

  static const missingRecoverySuggestion =
      'We currently don\'t have a recovery suggestion for this exception.';

  static const missingExceptionMessage =
      'An unknown exception has happened. $_createGithubIssueString';

  static const alreadyConfiguredDefaultMessage =
      'Amplify has already been configured and adding plugins after configure '
      'is not supported.';

  static const alreadyConfiguredDefaultSuggestion =
      'Check if Amplify is already configured using Amplify.isConfigured.';

  static const nullReturnedFromMethodChannel =
      'The value returned from the MethodChannel is null';

  static const codeGenRequiredFieldForceCastExceptionMessage =
      'The field you are accessing is not nullable but has a null value. '
      'It was marked as required (!) in your schema.graphql but the containing '
      'model class was initialized without setting its value.';

  static const codeGenRequiredFieldForceCastRecoverySuggestion =
      'Please validate that the containing model class was initialized '
      'properly with all requried fields being initialized. This can happen '
      'when a nested model is returned but only its id field has been set';
}
