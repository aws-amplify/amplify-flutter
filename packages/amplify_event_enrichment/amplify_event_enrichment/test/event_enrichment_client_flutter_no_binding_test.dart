// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_event_enrichment/amplify_event_enrichment.dart';
import 'package:flutter_test/flutter_test.dart';

class _RecordingSender implements EnrichedEventSender {
  final List<EnrichedEvent> events = [];

  @override
  Future<void> send(EnrichedEvent event) async => events.add(event);
}

class _FixedClientIdProvider implements ClientIdProvider {
  @override
  Future<String> getClientId() async => 'fixed-id';
}

// No binding is initialized in this file.
void main() {
  test('create() without a binding throws before sending anything', () async {
    final sender = _RecordingSender();
    await expectLater(
      EventEnrichmentClientFlutter.create(
        appId: 'test-app',
        sdkMetadata: const SdkMetadata(name: 'n', version: 'v'),
        clientIdProvider: _FixedClientIdProvider(),
        sender: sender,
      ),
      throwsA(anything),
    );
    await pumpEventQueue();
    expect(sender.events, isEmpty);
  });
}
