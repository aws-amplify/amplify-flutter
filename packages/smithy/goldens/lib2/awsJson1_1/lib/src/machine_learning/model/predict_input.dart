// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.machine_learning.model.predict_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'predict_input.g.dart';

abstract class PredictInput
    with _i1.HttpInput<PredictInput>, _i2.AWSEquatable<PredictInput>
    implements Built<PredictInput, PredictInputBuilder> {
  factory PredictInput({
    required String mlModelId,
    required Map<String, String> record,
    required String predictEndpoint,
  }) {
    return _$PredictInput._(
      mlModelId: mlModelId,
      record: _i3.BuiltMap(record),
      predictEndpoint: predictEndpoint,
    );
  }

  factory PredictInput.build([void Function(PredictInputBuilder) updates]) =
      _$PredictInput;

  const PredictInput._();

  factory PredictInput.fromRequest(
    PredictInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PredictInput>> serializers = [
    PredictInputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PredictInputBuilder b) {}
  String get mlModelId;
  _i3.BuiltMap<String, String> get record;
  String get predictEndpoint;
  @override
  PredictInput getPayload() => this;
  @override
  List<Object?> get props => [
        mlModelId,
        record,
        predictEndpoint,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PredictInput')
      ..add(
        'mlModelId',
        mlModelId,
      )
      ..add(
        'record',
        record,
      )
      ..add(
        'predictEndpoint',
        predictEndpoint,
      );
    return helper.toString();
  }
}

class PredictInputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PredictInput> {
  const PredictInputAwsJson11Serializer() : super('PredictInput');

  @override
  Iterable<Type> get types => const [
        PredictInput,
        _$PredictInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PredictInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MLModelId':
          result.mlModelId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Record':
          result.record.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<String, String>));
        case 'PredictEndpoint':
          result.predictEndpoint = (serializers.deserialize(
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
    PredictInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PredictInput(:mlModelId, :record, :predictEndpoint) = object;
    result$.addAll([
      'MLModelId',
      serializers.serialize(
        mlModelId,
        specifiedType: const FullType(String),
      ),
      'Record',
      serializers.serialize(
        record,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ),
      'PredictEndpoint',
      serializers.serialize(
        predictEndpoint,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
