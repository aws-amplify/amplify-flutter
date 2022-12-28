// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';

/// The stubbed implementation of [AWSPathProvider].
///
/// {@macro aws_common.aws_path_provider}
class AWSPathProviderImpl extends AWSPathProvider {
  /// {@macro aws_common.aws_path_provider}
  const AWSPathProviderImpl() : super.protected();

  static final _logger = AWSLogger('AWSPathProvider');

  @override
  Future<String?> getHomeDirectory({String? forUser}) async {
    _logger.warn('Home directory lookup not available on this platform');
    return null;
  }
}
