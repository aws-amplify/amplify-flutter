// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v1.machine_learning.model.predict_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v1/src/machine_learning/model/prediction.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'predict_output.g.dart';

abstract class PredictOutput
    with _i1.AWSEquatable<PredictOutput>
    implements Built<PredictOutput, PredictOutputBuilder> {
  factory PredictOutput({_i2.Prediction? prediction}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    PredictOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PredictOutputBuilder b) {}
  _i2.Prediction? get prediction;
  @override
  List<Object?> get props => [prediction];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PredictOutput');
    helper.add(
      'prediction',
      prediction,
    );
    return helper.toString();
  }
}

class PredictOutputAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<PredictOutput> {
  const PredictOutputAwsJson11Serializer() : super('PredictOutput');

  @override
  Iterable<Type> get types => const [
        PredictOutput,
        _$PredictOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'Prediction':
          if (value != null) {
            result.prediction.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Prediction),
            ) as _i2.Prediction));
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
    final payload = (object as PredictOutput);
    final result = <Object?>[];
    if (payload.prediction != null) {
      result
        ..add('Prediction')
        ..add(serializers.serialize(
          payload.prediction!,
          specifiedType: const FullType(_i2.Prediction),
        ));
    }
    return result;
  }
}
