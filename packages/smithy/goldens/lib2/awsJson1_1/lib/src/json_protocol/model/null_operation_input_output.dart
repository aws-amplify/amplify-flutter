// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    List<String?>? sparseStringList,
    Map<String, String?>? sparseStringMap,
    String? string,
  }) {
    return _$NullOperationInputOutput._(
      sparseStringList:
          sparseStringList == null ? null : _i3.BuiltList(sparseStringList),
      sparseStringMap:
          sparseStringMap == null ? null : _i3.BuiltMap(sparseStringMap),
      string: string,
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

  static const List<_i1.SmithySerializer> serializers = [
    NullOperationInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NullOperationInputOutputBuilder b) {}
  _i3.BuiltList<String?>? get sparseStringList;
  _i3.BuiltMap<String, String?>? get sparseStringMap;
  String? get string;
  @override
  NullOperationInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        sparseStringList,
        sparseStringMap,
        string,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NullOperationInputOutput');
    helper.add(
      'sparseStringList',
      sparseStringList,
    );
    helper.add(
      'sparseStringMap',
      sparseStringMap,
    );
    helper.add(
      'string',
      string,
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
      switch (key) {
        case 'sparseStringList':
          if (value != null) {
            result.sparseStringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType.nullable(String)],
              ),
            ) as _i3.BuiltList<String?>));
          }
          break;
        case 'sparseStringMap':
          if (value != null) {
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
    final payload = (object as NullOperationInputOutput);
    final result = <Object?>[];
    if (payload.sparseStringList != null) {
      result
        ..add('sparseStringList')
        ..add(serializers.serialize(
          payload.sparseStringList!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType.nullable(String)],
          ),
        ));
    }
    if (payload.sparseStringMap != null) {
      result
        ..add('sparseStringMap')
        ..add(serializers.serialize(
          payload.sparseStringMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType.nullable(String),
            ],
          ),
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
