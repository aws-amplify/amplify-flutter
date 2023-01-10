// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')

import 'dart:html';

import 'package:example_common/example_common.dart';
import 'package:test/test.dart';

void main() {
  test('Can create a component and insert it into the DOM', () {
    final component = CenterComponent(child: TextComponent('Hello World!'));
    document.body?.append(component.renderElement());
    final text = document.body?.innerText;
    expect(text, 'Hello World!');
  });
}
