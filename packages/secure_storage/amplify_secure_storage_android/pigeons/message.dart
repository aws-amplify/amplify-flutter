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

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/messages.g.dart',
    javaOut:
        'android/src/main/java/com/amazonaws/amplify/amplify_secure_storage/amplify_secure_storage_android/Messages.java',
    javaOptions: JavaOptions(
      package:
          'com.amazonaws.amplify.amplify_secure_storage.amplify_secure_storage_android',
    ),
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
@HostApi()
abstract class AmplifySecureStorageApi {
  String? read(String packageId, String scope, String key);
  void write(String packageId, String scope, String key, String? value);
  void delete(String packageId, String scope, String key);
}
