// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// JSON Web Token (JWT) library with Cognito extensions.
///
/// See:
/// - [JSON Web Token (JWT)](https://datatracker.ietf.org/doc/html/rfc7519)
/// - [JSON Web Algorithms (JWA)](https://datatracker.ietf.org/doc/html/rfc7518)
/// - [JSON Web Signature (JWS)](https://datatracker.ietf.org/doc/html/rfc7515)
/// - [JSON Web Key (JWK)](https://datatracker.ietf.org/doc/html/rfc7517)
@internal
library amplify_auth_cognito.jwt;

import 'package:meta/meta.dart';

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
