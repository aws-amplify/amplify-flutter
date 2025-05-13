// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/src/js/common.dart';
import 'package:web/web.dart';

/// How to handle a redirect response of a [Request].
enum RequestRedirectValues with JSEnum {
  /// The default behavior.
  default$,

  /// Automatically follow redirects.
  follow,

  /// Abort with an error if a redirect occurs.
  error,

  /// Caller intends to process the response in another context.
  manual,
}
