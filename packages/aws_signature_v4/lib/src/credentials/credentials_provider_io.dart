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

import 'dart:io';

import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@macro aws_signature_v4.environment_credentials_provider}
class EnvironmentCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.environment_credentials_provider}
  const EnvironmentCredentialsProvider();

  @override
  AWSCredentials retrieve() {
    // On Android and iOS, use the Dart VM's environment instead of the OS's.
    if (Platform.isAndroid || Platform.isIOS) {
      return const DartEnvironmentCredentialsProvider().retrieve();
    }

    final accessKeyId = Platform.environment[$awsAccessKeyId] ?? '';
    final secretAccessKey = Platform.environment[$awsSecretAccessKey] ?? '';
    final sessionToken = Platform.environment[$awsSessionToken];

    if (accessKeyId.isEmpty || secretAccessKey.isEmpty) {
      throw const InvalidCredentialsException.couldNotLoad();
    }

    return AWSCredentials(
      accessKeyId,
      secretAccessKey,
      sessionToken == null || sessionToken.isEmpty ? null : sessionToken,
    );
  }
}
