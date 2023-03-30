// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint_dart/src/sdk/pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

AnalyticsException _fromBadRequestException(
  BadRequestException exception,
) {
  return UnknownException(
    'Error in request data sent to Pinpoint.',
    recoverySuggestion: AmplifyExceptionMessages.missingExceptionMessage,
    underlyingException: exception,
  );
}

/// Creates a [AnalyticsException] from a [ForbiddenException].
AnalyticsException _fromForbiddenException(
  ForbiddenException exception,
) {
  return UnknownException(
    'Forbidden from accessing the Pinpoint resource.',
    recoverySuggestion:
        'Please ensure Analytics is properly configured in your amplifyconfiguration.dart file and that unauthenticated guest access is allowed or an authorized user is signed in.',
    underlyingException: exception,
  );
}

/// Create an [AnalyticsException] from a [Exception]
AnalyticsException fromPinpointException(Exception e) {
  if (e is BadRequestException) {
    return _fromBadRequestException(e);
  } else if (e is ForbiddenException) {
    return _fromForbiddenException(e);
  } else {
    return AnalyticsException.fromException(e);
  }
}
