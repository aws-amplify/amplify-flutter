// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// {@template amplify_flutter.amplify_root_isolate_token}
/// The root isolate's token, to be passed to a secondary isolate for
/// [ensureAmplifyIsolateInitialized].
///
/// This is `null` when there is no root isolate to bootstrap from: on the web,
/// where isolates do not exist, and in a plain Dart VM process with no Flutter
/// engine. It is also `null` when read from a secondary isolate, so it must be
/// read on the root isolate and sent across.
/// {@endtemplate}
@internal
RootIsolateToken? get amplifyRootIsolateToken {
  // On the web `RootIsolateToken.instance` throws `UnsupportedError: Root
  // isolate not identifiable on web.` rather than returning null, so web has to
  // be short-circuited to keep this getter safe to read anywhere.
  if (kIsWeb) return null;
  return RootIsolateToken.instance;
}

/// {@template amplify_flutter.amplify_is_in_root_isolate}
/// Whether the current isolate is a root isolate, meaning it owns a Flutter
/// engine and therefore drives the process-wide native Amplify SDKs.
///
/// True on an app's main isolate, and also on the root isolate of a headless
/// `FlutterEngine` — for example the entry point that records a push
/// notification while the app is killed. Both of those own an engine, so both
/// may configure native Amplify.
///
/// False only in an isolate started with `Isolate.spawn`, which has no engine
/// of its own. Such an isolate can still use categories that run entirely in
/// Dart, but the native SDKs already belong to the root isolate.
///
/// Always true on the web, which has no isolates.
/// {@endtemplate}
@internal
bool get amplifyIsInRootIsolate {
  // `RootIsolateToken.instance` throws on the web rather than returning null.
  if (kIsWeb) return true;
  return ServicesBinding.rootIsolateToken != null;
}

/// {@template amplify_flutter.amplify_isolate_is_initialized}
/// Whether the current isolate can reach Amplify's platform channels.
///
/// True on the root isolate, and on a secondary isolate once
/// [ensureAmplifyIsolateInitialized] has run. Mirrors how Flutter itself
/// resolves the messenger for a channel.
/// {@endtemplate}
@internal
bool get amplifyIsolateIsInitialized {
  // The web has no isolates, so channels are always reachable from its single
  // execution context.
  if (kIsWeb) return true;
  // A non-null token means this is the root isolate, which resolves channels
  // through `ServicesBinding` rather than a background messenger.
  if (ServicesBinding.rootIsolateToken != null) return true;
  try {
    BackgroundIsolateBinaryMessenger.instance;
    return true;
  } on StateError {
    return false;
  }
}

/// {@template amplify_flutter.ensure_amplify_isolate_initialized}
/// Makes Amplify's platform channels usable from the current isolate, using the
/// root isolate's [token].
///
/// Amplify's Dart state is already isolate-local, so a secondary isolate builds
/// its own `Amplify` instance and configures it independently of the root
/// isolate. What a secondary isolate does *not* inherit is a [BinaryMessenger],
/// so every plugin backed by a platform channel fails there — with a
/// [StateError] raised while looking up the messenger, before a message is ever
/// sent. Calling this repairs that.
///
/// Read [amplifyRootIsolateToken] on the root isolate, pass it to the secondary
/// isolate, and call this there before using Amplify:
///
/// ```dart
/// final token = amplifyRootIsolateToken!;
/// await Isolate.spawn(_worker, token);
///
/// Future<void> _worker(RootIsolateToken token) async {
///   ensureAmplifyIsolateInitialized(token);
///   // Platform channels now work in this isolate.
/// }
/// ```
///
/// It is safe to call more than once, and it is a no-op on the root isolate —
/// registering a background messenger there would replace the root isolate's
/// platform message handler.
///
/// This only restores the messenger. [ServicesBinding.instance] is still
/// unavailable in a secondary isolate, so code reaching for the binding
/// directly continues to fail. Note also that the native Amplify SDKs are a
/// single instance per process: configuring again from a secondary isolate
/// reaches an already-configured native SDK, which reports
/// `AmplifyAlreadyConfiguredException`.
///
/// There is nothing to call this with on the web, where
/// [amplifyRootIsolateToken] is always `null`.
/// {@endtemplate}
@internal
void ensureAmplifyIsolateInitialized(RootIsolateToken token) {
  if (ServicesBinding.rootIsolateToken != null) return;
  BackgroundIsolateBinaryMessenger.ensureInitialized(token);
}
