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
