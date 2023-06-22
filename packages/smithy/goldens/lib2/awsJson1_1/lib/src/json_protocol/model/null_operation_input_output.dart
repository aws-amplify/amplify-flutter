// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.model.null_operation_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'null_operation_input_output.g.dart';

abstract class NullOperationInputOutput
    with
        _i1.HttpInput<NullOperationInputOutput>,
        _i2.AWSEquatable<NullOperationInputOutput>
    implements
        Built<NullOperationInputOutput, NullOperationInputOutputBuilder> {
  factory NullOperationInputOutput({
    String? string,
    List<String?>? sparseStringList,
    Map<String, String?>? sparseStringMap,
  }) {
    return _$NullOperationInputOutput._(
      string: string,
      sparseStringList:
          sparseStringList == null ? null : _i3.BuiltList(sparseStringList),
      sparseStringMap:
          sparseStringMap == null ? null : _i3.BuiltMap(sparseStringMap),
    );
  }

  factory NullOperationInputOutput.build(
          [void Function(NullOperationInputOutputBuilder) updates]) =
      _$NullOperationInputOutput;

  const NullOperationInputOutput._();

  factory NullOperationInputOutput.fromRequest(
    NullOperationInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [NullOperationInputOutput] from a [payload] and [response].
  factory NullOperationInputOutput.fromResponse(
    NullOperationInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<NullOperationInputOutput>>
      serializers = [NullOperationInputOutputAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NullOperationInputOutputBuilder b) {}
  String? get string;
  _i3.BuiltList<String?>? get sparseStringList;
  _i3.BuiltMap<String, String?>? get sparseStringMap;
  @override
  NullOperationInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        string,
        sparseStringList,
        sparseStringMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NullOperationInputOutput')
      ..add(
        'string',
        string,
      )
      ..add(
        'sparseStringList',
        sparseStringList,
      )
      ..add(
        'sparseStringMap',
        sparseStringMap,
      );
    return helper.toString();
  }
}

class NullOperationInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<NullOperationInputOutput> {
  const NullOperationInputOutputAwsJson11Serializer()
      : super('NullOperationInputOutput');

  @override
  Iterable<Type> get types => const [
        NullOperationInputOutput,
        _$NullOperationInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NullOperationInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NullOperationInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'string':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sparseStringList':
          result.sparseStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType.nullable(String)],
            ),
          ) as _i3.BuiltList<String?>));
        case 'sparseStringMap':
          result.sparseStringMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType.nullable(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String?>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NullOperationInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NullOperationInputOutput(
      :string,
      :sparseStringList,
      :sparseStringMap
    ) = object;
    if (string != null) {
      result$
        ..add('string')
        ..add(serializers.serialize(
          string,
          specifiedType: const FullType(String),
        ));
    }
    if (sparseStringList != null) {
      result$
        ..add('sparseStringList')
        ..add(serializers.serialize(
          sparseStringList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType.nullable(String)],
          ),
        ));
    }
    if (sparseStringMap != null) {
      result$
        ..add('sparseStringMap')
        ..add(serializers.serialize(
          sparseStringMap,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType.nullable(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
