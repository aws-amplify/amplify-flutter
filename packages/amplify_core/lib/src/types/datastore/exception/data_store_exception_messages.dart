// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

/// Commonly used cross-category error messages.
class DataStoreExceptionMessages {
  static const codeGenRequiredFieldForceCastExceptionMessage =
      'The field you are accessing is not nullable but has a null value. '
      'It was marked as required (!) in your schema.graphql but the containing model class was initialized without setting its value.';

  static const codeGenRequiredFieldForceCastRecoverySuggestion =
      'Please validate that the containing model class was initialized properly with all requried fields being initialized. '
      'This can happen when a nested model is returned but only its id field has been set';
}
