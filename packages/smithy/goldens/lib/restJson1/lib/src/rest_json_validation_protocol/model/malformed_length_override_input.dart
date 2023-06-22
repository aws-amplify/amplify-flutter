// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_validation_protocol.model.malformed_length_override_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_length_override_input.g.dart';

abstract class MalformedLengthOverrideInput
    with
        _i1.HttpInput<MalformedLengthOverrideInput>,
        _i2.AWSEquatable<MalformedLengthOverrideInput>
    implements
        Built<MalformedLengthOverrideInput,
            MalformedLengthOverrideInputBuilder> {
  factory MalformedLengthOverrideInput({
    _i3.Uint8List? blob,
    String? string,
    String? minString,
    String? maxString,
    List<String>? list,
    Map<String, List<String>>? map,
  }) {
    return _$MalformedLengthOverrideInput._(
      blob: blob,
      string: string,
      minString: minString,
      maxString: maxString,
      list: list == null ? null : _i4.BuiltList(list),
      map: map == null ? null : _i4.BuiltListMultimap(map),
    );
  }

  factory MalformedLengthOverrideInput.build(
          [void Function(MalformedLengthOverrideInputBuilder) updates]) =
      _$MalformedLengthOverrideInput;

  const MalformedLengthOverrideInput._();

  factory MalformedLengthOverrideInput.fromRequest(
    MalformedLengthOverrideInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedLengthOverrideInput>>
      serializers = [MalformedLengthOverrideInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedLengthOverrideInputBuilder b) {}
  _i3.Uint8List? get blob;
  String? get string;
  String? get minString;
  String? get maxString;
  _i4.BuiltList<String>? get list;
  _i4.BuiltListMultimap<String, String>? get map;
  @override
  MalformedLengthOverrideInput getPayload() => this;
  @override
  List<Object?> get props => [
        blob,
        string,
        minString,
        maxString,
        list,
        map,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedLengthOverrideInput')
      ..add(
        'blob',
        blob,
      )
      ..add(
        'string',
        string,
      )
      ..add(
        'minString',
        minString,
      )
      ..add(
        'maxString',
        maxString,
      )
      ..add(
        'list',
        list,
      )
      ..add(
        'map',
        map,
      );
    return helper.toString();
  }
}

class MalformedLengthOverrideInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedLengthOverrideInput> {
  const MalformedLengthOverrideInputRestJson1Serializer()
      : super('MalformedLengthOverrideInput');

  @override
  Iterable<Type> get types => const [
        MalformedLengthOverrideInput,
        _$MalformedLengthOverrideInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedLengthOverrideInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedLengthOverrideInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'blob':
          result.blob = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Uint8List),
          ) as _i3.Uint8List);
        case 'list':
          result.list.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'map':
          result.map.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltListMultimap<String, String>));
        case 'maxString':
          result.maxString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'minString':
          result.minString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'string':
          result.string = (serializers.deserialize(
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
    MalformedLengthOverrideInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedLengthOverrideInput(
      :blob,
      :list,
      :map,
      :maxString,
      :minString,
      :string
    ) = object;
    if (blob != null) {
      result$
        ..add('blob')
        ..add(serializers.serialize(
          blob,
          specifiedType: const FullType(_i3.Uint8List),
        ));
    }
    if (list != null) {
      result$
        ..add('list')
        ..add(serializers.serialize(
          list,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (map != null) {
      result$
        ..add('map')
        ..add(serializers.serialize(
          map,
          specifiedType: const FullType(
            _i4.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (maxString != null) {
      result$
        ..add('maxString')
        ..add(serializers.serialize(
          maxString,
          specifiedType: const FullType(String),
        ));
    }
    if (minString != null) {
      result$
        ..add('minString')
        ..add(serializers.serialize(
          minString,
          specifiedType: const FullType(String),
        ));
    }
    if (string != null) {
      result$
        ..add('string')
        ..add(serializers.serialize(
          string,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
