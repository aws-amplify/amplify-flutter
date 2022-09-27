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

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/messages.android.g.dart',
    javaOut:
        'android/src/main/java/com/amazonaws/amplify/amplify_secure_storage/amplify_secure_storage/pigeons/Messages.java',
    javaOptions: JavaOptions(
      className: "Messages",
      package:
          'com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage.pigeons',
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
