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

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

class Equated with AWSEquatable<Equated> {
  Equated(this.a, this.b);

  final String a;
  final String b;

  @override
  List<Object?> get props => [a, b];
}

void main() {
  group('AWSEquatable', () {
    test('a == b', () {
      final a = Equated('a', 'b');
      final b = Equated('a', 'b');

      expect(a == b, isTrue);
    });

    test('a != b', () {
      final a = Equated('a', 'b');
      final b = Equated('b', 'a');

      expect(a == b, isFalse);
    });
  });
}
