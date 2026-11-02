// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// Prints each enriched envelope as JSON.
class PrintingSender implements EnrichedEventSender {
  @override
  Future<void> send(EnrichedEvent event) async {
    print(jsonEncode(event.toJson()));
  }
}

Future<void> main() async {
  // The standalone client takes metadata and a client ID directly. The Flutter
  // wrapper supplies device metadata and a client ID and tracks lifecycle.
  // Construction emits the default session-start event before later mutators,
  // so pass initial user and global values to include them in that event.
  final client = EventEnrichmentClient(
    appMetadata: const AppMetadata(appId: 'my-app', versionName: '1.0.0'),
    deviceMetadata: const DeviceMetadata(platform: 'macOS', locale: 'en_US'),
    sdkMetadata: const SdkMetadata(name: 'amplify-flutter', version: '2.0.0'),
    clientId: 'a-stable-per-install-id',
    initialUserId: 'user-1',
    initialGlobalAttributes: const {'env': 'prod'},
    sender: PrintingSender(),
  );

  // record() never throws: a sender failure comes back as an error Result.
  final result = await client.record(
    'button_clicked',
    attributes: {'screen': 'home'},
  );
  switch (result) {
    case Ok(:final value):
      print('recorded ${value.eventType} in session ${value.session.id}');
    case Error(:final error):
      print('failed to record: $error');
  }

  // Ends the session, printing a zSessionStopEventType ("_session.stop")
  // envelope that carries the session's stop timestamp and duration. Awaiting
  // it means the event has reached the sender.
  await client.stopSession();

  // The session already ended, so closing emits nothing further. Closing while
  // a session is still running would emit its stop here instead.
  await client.close();
}
