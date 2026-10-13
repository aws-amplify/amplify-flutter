// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:amplify_event_enrichment_dart/amplify_event_enrichment_dart.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';

/// A [EnrichedEventSender] that prints each enriched envelope, standing in for a real
/// transport such as the Kinesis or Firehose client.
///
/// Sending is asynchronous, so a transport that suspends can be awaited and its
/// failures observed. This one does no async work and still satisfies the
/// contract with an `async` body.
class PrintingSender implements EnrichedEventSender {
  @override
  Future<void> send(EnrichedEvent event) async {
    print(jsonEncode(event.toJson()));
  }
}

Future<void> main() async {
  // Pure Dart has no platform providers, so app, device and SDK metadata and
  // the client id are supplied directly. The amplify_event_enrichment Flutter
  // package resolves all four for you and tracks the app lifecycle.
  //
  // Constructing the client starts a session, which prints a
  // zSessionStartEventType ("_session.start") envelope before anything below
  // runs. The initial user id and globals are applied first, so that envelope
  // carries them; setUserId and addGlobalAttribute afterwards would be too
  // late for it.
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
