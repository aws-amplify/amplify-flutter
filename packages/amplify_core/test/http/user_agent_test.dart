// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/platform/platform.dart';
import 'package:aws_common/testing.dart';
import 'package:test/test.dart';

void main() {
  group('User-Agent', () {
    test('Chrome', testOn: 'chrome', () {
      expect(osIdentifier, matches(RegExp(r'^Chrome/[\d\.]+$')));
    });

    test('Firefox', testOn: 'firefox', () {
      expect(osIdentifier, matches(RegExp(r'^Firefox/[\d\.]+$')));
    });

    test('Safari', testOn: 'safari', () {
      expect(osIdentifier, matches(RegExp(r'^Safari/[\d\.]+$')));
    });

    test('Windows', testOn: 'windows', () {
      expect(osIdentifier, matches(RegExp(r'^windows/[\d\.]+$')));
    });

    test('macOS', testOn: 'mac-os', () {
      expect(osIdentifier, matches(RegExp(r'^macos/[\d\.]+$')));
    });

    test('Linux', testOn: 'linux', () {
      expect(osIdentifier, matches(RegExp(r'^linux/[\d\.]+$')));
    });
  });

  test('AmplifyUserAgent', () async {
    const myUserAgent = 'my-user-agent';

    final dependencies = AmplifyDependencyManager();
    final httpClient = MockAWSHttpClient(
      expectAsync2(
        (request, isCancelled) {
          expect(
            request.headers[AWSHeaders.platformUserAgent],
            contains(osIdentifier),
            reason: 'should contain default user agent component',
          );
          expect(
            request.headers[AWSHeaders.platformUserAgent],
            contains(myUserAgent),
            reason: 'should contain custom user agent component',
          );
          return AWSHttpResponse(statusCode: 200);
        },
      ),
    );

    dependencies.addInstance<AWSHttpClient>(httpClient);
    dependencies.getOrCreate<AmplifyUserAgent>().addComponent(myUserAgent);

    final response = await dependencies
        .getOrCreate<AmplifyHttpClient>()
        .send(
          AWSHttpRequest.get(Uri.parse('https://example.com')),
        )
        .response;
    expect(response.statusCode, 200);
  });
}
