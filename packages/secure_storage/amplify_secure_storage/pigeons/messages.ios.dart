// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/messages.cupertino.g.dart',
    objcOptions: ObjcOptions(
      header: 'Messages.h',
    ),
    objcHeaderOut: '../amplify_secure_storage/ios/Classes/pigeons/Messages.h',
    objcSourceOut: '../amplify_secure_storage/ios/Classes/pigeons/Messages.m',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
@HostApi()
abstract class NSUserDefaultsAPI {
  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  void setBool(String key, bool value);

  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  bool boolFor(String key);
}
