// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// To regenerate, run `make pigeons`.

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/messages.cupertino.g.dart',
    // TODO(Jordan-Nelson): Switch to use swift when it
    // is no longer considered experimental.
    objcOptions: ObjcOptions(
      header: 'Messages.h',
    ),
    objcHeaderOut: '../amplify_secure_storage/macos/Classes/pigeons/Messages.h',
    objcSourceOut: '../amplify_secure_storage/macos/Classes/pigeons/Messages.m',
    copyrightHeader: 'pigeons/copyright.txt',
  ),
)
@HostApi()
abstract class NSUserDefaultsAPI {
  @async
  void setBool(String key, bool value);

  @async
  bool boolFor(String key);
}
