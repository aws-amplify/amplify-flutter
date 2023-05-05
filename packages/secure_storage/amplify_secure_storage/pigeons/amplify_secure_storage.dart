// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/pigeons/amplify_secure_storage_pigeon.g.dart',
    kotlinOptions: KotlinOptions(
      package: 'com.amazonaws.amplify.amplify_secure_storage.pigeons',
    ),
    kotlinOut:
        'android/src/main/kotlin/com/amazonaws/amplify/amplify_secure_storage/pigeons/AmplifySecureStoragePigeon.kt',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)

/// A pigeon for interacting with the native AmplifySecureStorage implementation
/// on Android.
@HostApi()
abstract class AmplifySecureStoragePigeon {
  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  String? read(String namespace, String key);

  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  void write(String namespace, String key, String? value);

  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  void delete(String namespace, String key);

  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  void removeAll(String namespace);
}
