// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_length_override_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

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
    List<String>? list,
    Map<String, List<String>>? map,
    String? maxString,
    String? minString,
    String? string,
  }) {
    return _$MalformedLengthOverrideInput._(
      blob: blob,
      list: list == null ? null : _i4.BuiltList(list),
      map: map == null ? null : _i4.BuiltListMultimap(map),
      maxString: maxString,
      minString: minString,
      string: string,
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

  static const List<_i1.SmithySerializer> serializers = [
    MalformedLengthOverrideInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedLengthOverrideInputBuilder b) {}
  _i3.Uint8List? get blob;
  _i4.BuiltList<String>? get list;
  _i4.BuiltListMultimap<String, String>? get map;
  String? get maxString;
  String? get minString;
  String? get string;
  @override
  MalformedLengthOverrideInput getPayload() => this;
  @override
  List<Object?> get props => [
        blob,
        list,
        map,
        maxString,
        minString,
        string,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedLengthOverrideInput');
    helper.add(
      'blob',
      blob,
    );
    helper.add(
      'list',
      list,
    );
    helper.add(
      'map',
      map,
    );
    helper.add(
      'maxString',
      maxString,
    );
    helper.add(
      'minString',
      minString,
    );
    helper.add(
      'string',
      string,
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
      switch (key) {
        case 'blob':
          if (value != null) {
            result.blob = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Uint8List),
            ) as _i3.Uint8List);
          }
          break;
        case 'list':
          if (value != null) {
            result.list.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'map':
          if (value != null) {
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
          }
          break;
        case 'maxString':
          if (value != null) {
            result.maxString = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'minString':
          if (value != null) {
            result.minString = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'string':
          if (value != null) {
            result.string = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as MalformedLengthOverrideInput);
    final result = <Object?>[];
    if (payload.blob != null) {
      result
        ..add('blob')
        ..add(serializers.serialize(
          payload.blob!,
          specifiedType: const FullType(_i3.Uint8List),
        ));
    }
    if (payload.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(
          payload.list!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.map != null) {
      result
        ..add('map')
        ..add(serializers.serialize(
          payload.map!,
          specifiedType: const FullType(
            _i4.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.maxString != null) {
      result
        ..add('maxString')
        ..add(serializers.serialize(
          payload.maxString!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.minString != null) {
      result
        ..add('minString')
        ..add(serializers.serialize(
          payload.minString!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(
          payload.string!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
