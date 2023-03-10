// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/messages.android.g.dart',
    javaOut:
        'android/src/main/java/com/amazonaws/amplify/amplify_secure_storage/amplify_secure_storage/Messages.java',
    javaOptions: JavaOptions(
      className: 'Messages',
      package:
          'com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage',
    ),
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
@HostApi()
abstract class AmplifySecureStorageApi {
  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  String? read(String namespace, String key);

  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  void write(String namespace, String key, String? value);

  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  void delete(String namespace, String key);
}
