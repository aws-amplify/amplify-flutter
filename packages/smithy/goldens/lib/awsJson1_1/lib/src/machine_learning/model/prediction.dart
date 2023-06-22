// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v1.machine_learning.model.prediction; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:aws_json1_1_v1/src/machine_learning/model/details_attributes.dart'
    as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'prediction.g.dart';

abstract class Prediction
    with _i1.AWSEquatable<Prediction>
    implements Built<Prediction, PredictionBuilder> {
  factory Prediction({
    String? predictedLabel,
    double? predictedValue,
    Map<String, double>? predictedScores,
    Map<_i2.DetailsAttributes, String>? details,
  }) {
    return _$Prediction._(
      predictedLabel: predictedLabel,
      predictedValue: predictedValue,
      predictedScores:
          predictedScores == null ? null : _i3.BuiltMap(predictedScores),
      details: details == null ? null : _i3.BuiltMap(details),
    );
  }

  factory Prediction.build([void Function(PredictionBuilder) updates]) =
      _$Prediction;

  const Prediction._();

  static const List<_i4.SmithySerializer<Prediction>> serializers = [
    PredictionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PredictionBuilder b) {}
  String? get predictedLabel;
  double? get predictedValue;
  _i3.BuiltMap<String, double>? get predictedScores;
  _i3.BuiltMap<_i2.DetailsAttributes, String>? get details;
  @override
  List<Object?> get props => [
        predictedLabel,
        predictedValue,
        predictedScores,
        details,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Prediction')
      ..add(
        'predictedLabel',
        predictedLabel,
      )
      ..add(
        'predictedValue',
        predictedValue,
      )
      ..add(
        'predictedScores',
        predictedScores,
      )
      ..add(
        'details',
        details,
      );
    return helper.toString();
  }
}

class PredictionAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<Prediction> {
  const PredictionAwsJson11Serializer() : super('Prediction');

  @override
  Iterable<Type> get types => const [
        Prediction,
        _$Prediction,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  Prediction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PredictionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'predictedLabel':
          result.predictedLabel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'predictedValue':
          result.predictedValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'predictedScores':
          result.predictedScores.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(double),
              ],
            ),
          ) as _i3.BuiltMap<String, double>));
        case 'details':
          result.details.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(_i2.DetailsAttributes),
                FullType(String),
              ],
            ),
          ) as _i3.BuiltMap<_i2.DetailsAttributes, String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Prediction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Prediction(
      :predictedLabel,
      :predictedValue,
      :predictedScores,
      :details
    ) = object;
    if (predictedLabel != null) {
      result$
        ..add('predictedLabel')
        ..add(serializers.serialize(
          predictedLabel,
          specifiedType: const FullType(String),
        ));
    }
    if (predictedValue != null) {
      result$
        ..add('predictedValue')
        ..add(serializers.serialize(
          predictedValue,
          specifiedType: const FullType(double),
        ));
    }
    if (predictedScores != null) {
      result$
        ..add('predictedScores')
        ..add(serializers.serialize(
          predictedScores,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(double),
            ],
          ),
        ));
    }
    if (details != null) {
      result$
        ..add('details')
        ..add(serializers.serialize(
          details,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(_i2.DetailsAttributes),
              FullType(String),
            ],
          ),
        ));
    }
    return result$;
  }
}
