// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// {@template amplify_datastore.amplify_is_in_root_isolate}
/// Whether the current isolate is a root isolate, meaning it owns a Flutter
/// engine and may therefore drive the process-wide native Amplify SDK.
///
/// True on an app's main isolate and on the root isolate of a headless
/// `FlutterEngine`. False only inside an isolate started with `Isolate.spawn`,
/// which has no engine of its own. Always true on the web, which has no
/// isolates.
///
/// This is a copy of `amplifyIsInRootIsolate` in
/// `packages/amplify/amplify_flutter/lib/src/amplify_isolate.dart`, which is the
/// canonical definition — keep the two identical. It is duplicated rather than
/// imported because `amplify_datastore` does not depend on `amplify_flutter`,
/// and adding that dependency to share four lines would invert the plugin
/// dependency graph. The predicate cannot live in `amplify_core`, which is
/// deliberately Flutter-free.
/// {@endtemplate}
@internal
bool get amplifyIsInRootIsolate {
  // `RootIsolateToken.instance` throws on the web rather than returning null.
  if (kIsWeb) return true;
  return ServicesBinding.rootIsolateToken != null;
}
