// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library custom_v2.custom.model.default_values_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:custom_v2/src/custom/model/default_enum.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'default_values_input.g.dart';

abstract class DefaultValuesInput
    with _i1.HttpInput<DefaultValuesInput>, _i2.AWSEquatable<DefaultValuesInput>
    implements Built<DefaultValuesInput, DefaultValuesInputBuilder> {
  factory DefaultValuesInput({
    int? requiredDefaultInt,
    int? optionalDefaultInt,
    int? nullifiedDefaultInt,
    String? requiredDefaultString,
    String? optionalDefaultString,
    String? nullifiedDefaultString,
    DefaultEnum? requiredDefaultEnum,
    DefaultEnum? optionalDefaultEnum,
    DefaultEnum? nullifiedDefaultEnum,
    List<String>? requiredDefaultList,
    List<String>? optionalDefaultList,
    List<String>? nullifiedDefaultList,
    Map<String, String>? requiredDefaultMap,
    Map<String, String>? optionalDefaultMap,
    Map<String, String>? nullifiedDefaultMap,
    bool? requiredDefaultBool,
    bool? optionalDefaultBool,
    bool? nullifiedDefaultBool,
  }) {
    requiredDefaultInt ??= 42;
    optionalDefaultInt ??= 42;
    requiredDefaultString ??= r'default';
    optionalDefaultString ??= r'default';
    requiredDefaultEnum ??= DefaultEnum.a;
    optionalDefaultEnum ??= DefaultEnum.a;
    requiredDefaultList ??= const [];
    optionalDefaultList ??= const [];
    requiredDefaultMap ??= const {};
    optionalDefaultMap ??= const {};
    requiredDefaultBool ??= true;
    optionalDefaultBool ??= true;
    return _$DefaultValuesInput._(
      requiredDefaultInt: requiredDefaultInt,
      optionalDefaultInt: optionalDefaultInt,
      nullifiedDefaultInt: nullifiedDefaultInt,
      requiredDefaultString: requiredDefaultString,
      optionalDefaultString: optionalDefaultString,
      nullifiedDefaultString: nullifiedDefaultString,
      requiredDefaultEnum: requiredDefaultEnum,
      optionalDefaultEnum: optionalDefaultEnum,
      nullifiedDefaultEnum: nullifiedDefaultEnum,
      requiredDefaultList: _i3.BuiltList(requiredDefaultList),
      optionalDefaultList: _i3.BuiltList(optionalDefaultList),
      nullifiedDefaultList: nullifiedDefaultList == null
          ? null
          : _i3.BuiltList(nullifiedDefaultList),
      requiredDefaultMap: _i3.BuiltMap(requiredDefaultMap),
      optionalDefaultMap: _i3.BuiltMap(optionalDefaultMap),
      nullifiedDefaultMap: nullifiedDefaultMap == null
          ? null
          : _i3.BuiltMap(nullifiedDefaultMap),
      requiredDefaultBool: requiredDefaultBool,
      optionalDefaultBool: optionalDefaultBool,
      nullifiedDefaultBool: nullifiedDefaultBool,
    );
  }

  factory DefaultValuesInput.build(
          [void Function(DefaultValuesInputBuilder) updates]) =
      _$DefaultValuesInput;

  const DefaultValuesInput._();

  factory DefaultValuesInput.fromRequest(
    DefaultValuesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DefaultValuesInput>> serializers = [
    DefaultValuesInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DefaultValuesInputBuilder b) {
    b
      ..requiredDefaultInt = 42
      ..optionalDefaultInt = 42
      ..requiredDefaultString = r'default'
      ..optionalDefaultString = r'default'
      ..requiredDefaultEnum = DefaultEnum.a
      ..optionalDefaultEnum = DefaultEnum.a
      ..requiredDefaultList.addAll(const [])
      ..optionalDefaultList.addAll(const [])
      ..requiredDefaultMap.addAll(const {})
      ..optionalDefaultMap.addAll(const {})
      ..requiredDefaultBool = true
      ..optionalDefaultBool = true;
  }

  int get requiredDefaultInt;
  int get optionalDefaultInt;
  int? get nullifiedDefaultInt;
  String get requiredDefaultString;
  String get optionalDefaultString;
  String? get nullifiedDefaultString;
  DefaultEnum get requiredDefaultEnum;
  DefaultEnum get optionalDefaultEnum;
  DefaultEnum? get nullifiedDefaultEnum;
  _i3.BuiltList<String> get requiredDefaultList;
  _i3.BuiltList<String> get optionalDefaultList;
  _i3.BuiltList<String>? get nullifiedDefaultList;
  _i3.BuiltMap<String, String> get requiredDefaultMap;
  _i3.BuiltMap<String, String> get optionalDefaultMap;
  _i3.BuiltMap<String, String>? get nullifiedDefaultMap;
  bool get requiredDefaultBool;
  bool get optionalDefaultBool;
  bool? get nullifiedDefaultBool;
  @override
  DefaultValuesInput getPayload() => this;

  @override
  List<Object?> get props => [
        requiredDefaultInt,
        optionalDefaultInt,
        nullifiedDefaultInt,
        requiredDefaultString,
        optionalDefaultString,
        nullifiedDefaultString,
        requiredDefaultEnum,
        optionalDefaultEnum,
        nullifiedDefaultEnum,
        requiredDefaultList,
        optionalDefaultList,
        nullifiedDefaultList,
        requiredDefaultMap,
        optionalDefaultMap,
        nullifiedDefaultMap,
        requiredDefaultBool,
        optionalDefaultBool,
        nullifiedDefaultBool,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DefaultValuesInput')
      ..add(
        'requiredDefaultInt',
        requiredDefaultInt,
      )
      ..add(
        'optionalDefaultInt',
        optionalDefaultInt,
      )
      ..add(
        'nullifiedDefaultInt',
        nullifiedDefaultInt,
      )
      ..add(
        'requiredDefaultString',
        requiredDefaultString,
      )
      ..add(
        'optionalDefaultString',
        optionalDefaultString,
      )
      ..add(
        'nullifiedDefaultString',
        nullifiedDefaultString,
      )
      ..add(
        'requiredDefaultEnum',
        requiredDefaultEnum,
      )
      ..add(
        'optionalDefaultEnum',
        optionalDefaultEnum,
      )
      ..add(
        'nullifiedDefaultEnum',
        nullifiedDefaultEnum,
      )
      ..add(
        'requiredDefaultList',
        requiredDefaultList,
      )
      ..add(
        'optionalDefaultList',
        optionalDefaultList,
      )
      ..add(
        'nullifiedDefaultList',
        nullifiedDefaultList,
      )
      ..add(
        'requiredDefaultMap',
        requiredDefaultMap,
      )
      ..add(
        'optionalDefaultMap',
        optionalDefaultMap,
      )
      ..add(
        'nullifiedDefaultMap',
        nullifiedDefaultMap,
      )
      ..add(
        'requiredDefaultBool',
        requiredDefaultBool,
      )
      ..add(
        'optionalDefaultBool',
        optionalDefaultBool,
      )
      ..add(
        'nullifiedDefaultBool',
        nullifiedDefaultBool,
      );
    return helper.toString();
  }
}

class DefaultValuesInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<DefaultValuesInput> {
  const DefaultValuesInputRestJson1Serializer() : super('DefaultValuesInput');

  @override
  Iterable<Type> get types => const [
        DefaultValuesInput,
        _$DefaultValuesInput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  DefaultValuesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultValuesInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nullifiedDefaultBool':
          result.nullifiedDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'nullifiedDefaultEnum':
          result.nullifiedDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'nullifiedDefaultInt':
          result.nullifiedDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nullifiedDefaultList':
          result.nullifiedDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'nullifiedDefaultMap':
          result.nullifiedDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'nullifiedDefaultString':
          result.nullifiedDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'optionalDefaultBool':
          result.optionalDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'optionalDefaultEnum':
          result.optionalDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'optionalDefaultInt':
          result.optionalDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'optionalDefaultList':
          result.optionalDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'optionalDefaultMap':
          result.optionalDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'optionalDefaultString':
          result.optionalDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'requiredDefaultBool':
          result.requiredDefaultBool = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'requiredDefaultEnum':
          result.requiredDefaultEnum = (serializers.deserialize(
            value,
            specifiedType: const FullType(DefaultEnum),
          ) as DefaultEnum);
        case 'requiredDefaultInt':
          result.requiredDefaultInt = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'requiredDefaultList':
          result.requiredDefaultList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'requiredDefaultMap':
          result.requiredDefaultMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'requiredDefaultString':
          result.requiredDefaultString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DefaultValuesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DefaultValuesInput(
      :nullifiedDefaultBool,
      :nullifiedDefaultEnum,
      :nullifiedDefaultInt,
      :nullifiedDefaultList,
      :nullifiedDefaultMap,
      :nullifiedDefaultString,
      :optionalDefaultBool,
      :optionalDefaultEnum,
      :optionalDefaultInt,
      :optionalDefaultList,
      :optionalDefaultMap,
      :optionalDefaultString,
      :requiredDefaultBool,
      :requiredDefaultEnum,
      :requiredDefaultInt,
      :requiredDefaultList,
      :requiredDefaultMap,
      :requiredDefaultString
    ) = object;
    result$.addAll([
      'optionalDefaultBool',
      serializers.serialize(
        optionalDefaultBool,
        specifiedType: const FullType(bool),
      ),
      'optionalDefaultEnum',
      serializers.serialize(
        optionalDefaultEnum,
        specifiedType: const FullType(DefaultEnum),
      ),
      'optionalDefaultInt',
      serializers.serialize(
        optionalDefaultInt,
        specifiedType: const FullType(int),
      ),
      'optionalDefaultList',
      serializers.serialize(
        optionalDefaultList,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
      'optionalDefaultMap',
      serializers.serialize(
        optionalDefaultMap,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ),
      'optionalDefaultString',
      serializers.serialize(
        optionalDefaultString,
        specifiedType: const FullType(String),
      ),
      'requiredDefaultBool',
      serializers.serialize(
        requiredDefaultBool,
        specifiedType: const FullType(bool),
      ),
      'requiredDefaultEnum',
      serializers.serialize(
        requiredDefaultEnum,
        specifiedType: const FullType(DefaultEnum),
      ),
      'requiredDefaultInt',
      serializers.serialize(
        requiredDefaultInt,
        specifiedType: const FullType(int),
      ),
      'requiredDefaultList',
      serializers.serialize(
        requiredDefaultList,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ),
      'requiredDefaultMap',
      serializers.serialize(
        requiredDefaultMap,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ),
      'requiredDefaultString',
      serializers.serialize(
        requiredDefaultString,
        specifiedType: const FullType(String),
      ),
    ]);
    if (nullifiedDefaultBool != null) {
      result$
        ..add('nullifiedDefaultBool')
        ..add(serializers.serialize(
          nullifiedDefaultBool,
          specifiedType: const FullType(bool),
        ));
    }
    if (nullifiedDefaultEnum != null) {
      result$
        ..add('nullifiedDefaultEnum')
        ..add(serializers.serialize(
          nullifiedDefaultEnum,
          specifiedType: const FullType(DefaultEnum),
        ));
    }
    if (nullifiedDefaultInt != null) {
      result$
        ..add('nullifiedDefaultInt')
        ..add(serializers.serialize(
          nullifiedDefaultInt,
          specifiedType: const FullType(int),
        ));
    }
    if (nullifiedDefaultList != null) {
      result$
        ..add('nullifiedDefaultList')
        ..add(serializers.serialize(
          nullifiedDefaultList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (nullifiedDefaultMap != null) {
      result$
        ..add('nullifiedDefaultMap')
        ..add(serializers.serialize(
          nullifiedDefaultMap,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (nullifiedDefaultString != null) {
      result$
        ..add('nullifiedDefaultString')
        ..add(serializers.serialize(
          nullifiedDefaultString,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
