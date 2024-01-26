// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.machine_learning.model.predict_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v2/src/machine_learning/model/prediction.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'predict_output.g.dart';

abstract class PredictOutput
    with _i1.AWSEquatable<PredictOutput>
    implements Built<PredictOutput, PredictOutputBuilder> {
  factory PredictOutput({Prediction? prediction}) {
    return _$PredictOutput._(prediction: prediction);
  }

  factory PredictOutput.build([void Function(PredictOutputBuilder) updates]) =
      _$PredictOutput;

  const PredictOutput._();

  /// Constructs a [PredictOutput] from a [payload] and [response].
  factory PredictOutput.fromResponse(
    PredictOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<PredictOutput>> serializers = [
    PredictOutputAwsJson11Serializer()
  ];

  Prediction? get prediction;
  @override
  List<Object?> get props => [prediction];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PredictOutput')
      ..add(
        'prediction',
        prediction,
      );
    return helper.toString();
  }
}

class PredictOutputAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PredictOutput> {
  const PredictOutputAwsJson11Serializer() : super('PredictOutput');

  @override
  Iterable<Type> get types => const [
        PredictOutput,
        _$PredictOutput,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  PredictOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Prediction':
          result.prediction.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Prediction),
          ) as Prediction));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PredictOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PredictOutput(:prediction) = object;
    if (prediction != null) {
      result$
        ..add('Prediction')
        ..add(serializers.serialize(
          prediction,
          specifiedType: const FullType(Prediction),
        ));
    }
    return result$;
  }
}
