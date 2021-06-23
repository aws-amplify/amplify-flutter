/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

// ignore_for_file: public_member_api_docs

/// Commonly used cross-category error messages.
class DataStoreExceptionMessages {
  static const codeGenRequiredFieldForceCastExceptionMessage =
      "The field you are accessing is not nullable but has a null value."
      "It was marked as required (!) in your schema.graphql but the containing model class was initialized without settings its value.";

  static const codeGenRequiredFieldForceCastRecoverySuggestion =
      "Please validate that the containing model class was initialized properly with all requried fields being initialized."
      "This can happen when a nested model is returned but only its id field has been set";
}
