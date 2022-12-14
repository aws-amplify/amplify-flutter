// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

@internal
library amplify_auth_cognito_dart.exception.srp_error;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.srp_error}
/// Error thrown due to an SRP calculation error.
/// {@endtemplate}
class SrpError extends AmplifyError {
  /// {@macro amplify_auth_cognito.srp_error}
  SrpError(super.message);

  @override
  String get runtimeTypeName => 'SrpError';
}
