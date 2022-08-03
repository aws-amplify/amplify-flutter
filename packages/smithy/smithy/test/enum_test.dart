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

import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

class _MyEnum extends SmithyEnum<_MyEnum> {
  const _MyEnum._(int index, String name, String value)
      : super(index, name, value);

  const _MyEnum._sdkUnknown(String value) : super.sdkUnknown(value);

  static const bar = _MyEnum._(0, 'BAR', 'Bar');

  static const baz = _MyEnum._(1, 'BAZ', 'Baz');

  static const foo = _MyEnum._(2, 'FOO', 'Foo');

  /// All values of [_MyEnum].
  static const values = <_MyEnum>[
    _MyEnum.bar,
    _MyEnum.baz,
    _MyEnum.foo,
  ];

  // ignore: unused_field
  static const List<SmithySerializer<_MyEnum>> serializers = [
    SmithyEnumSerializer(
      '_MyEnum',
      values: values,
      sdkUnknown: _MyEnum._sdkUnknown,
      supportedProtocols: [],
    )
  ];
}

extension _MyEnumHelpers on List<_MyEnum> {
  /// Returns the value of [_MyEnum] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  _MyEnum byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [_MyEnum] whose value matches [value].
  _MyEnum byValue(String value) => firstWhere((el) => el.value == value);
}

void main() {
  group('SmithyEnum', () {
    test('can switch', () {
      _MyEnum getEnum() => _MyEnum.bar;
      switch (getEnum()) {
        case _MyEnum.bar:
          break;
        default:
          fail('Did not switch correctly');
      }
    });

    test('byName', () {
      expect(
        _MyEnum.values.byName('foo'),
        equals(_MyEnum.foo),
      );
    });

    test('byValue', () {
      expect(
        _MyEnum.values.byValue('Foo'),
        equals(_MyEnum.foo),
      );
    });

    test('byValue (unknown)', () {
      expect(
        () => _MyEnum.values.byValue('UNKNOWN'),
        throwsStateError,
      );
    });
  });
}
