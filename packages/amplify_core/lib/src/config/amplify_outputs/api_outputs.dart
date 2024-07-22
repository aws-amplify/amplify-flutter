// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.amplify_outputs.data_outputs}
/// The Rest API and GraphQL category Outputs.
/// {@endtemplate}
abstract interface class ApiOutputs {
  String get awsRegion;
  String get url;
  String? get apiKey;
  APIAuthorizationType get authorizationType;
  ApiType get apiType;
}

enum ApiType {
  rest,
  graphQL,
}
