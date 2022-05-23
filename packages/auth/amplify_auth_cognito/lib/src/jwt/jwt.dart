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

/// JSON Web Token (JWT) library with Cognito extensions.
///
/// See:
/// - [JSON Web Token (JWT)](https://datatracker.ietf.org/doc/html/rfc7519)
/// - [JSON Web Algorithms (JWA)](https://datatracker.ietf.org/doc/html/rfc7518)
/// - [JSON Web Signature (JWS)](https://datatracker.ietf.org/doc/html/rfc7515)
/// - [JSON Web Key (JWK)](https://datatracker.ietf.org/doc/html/rfc7517)
library amplify_auth_cognito.jwt;

export 'src/alg.dart';
export 'src/claims.dart';
export 'src/cognito.dart';
export 'src/elliptic_curve.dart';
export 'src/exception.dart';
export 'src/header.dart';
export 'src/key.dart';
export 'src/key_ops.dart';
export 'src/key_type.dart';
export 'src/key_use.dart';
export 'src/keyset.dart';
export 'src/prefs.dart';
export 'src/token.dart';
export 'src/util.dart';
