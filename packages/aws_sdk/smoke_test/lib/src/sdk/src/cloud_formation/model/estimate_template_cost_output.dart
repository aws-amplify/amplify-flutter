// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.estimate_template_cost_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'estimate_template_cost_output.g.dart';

/// The output for a EstimateTemplateCost action.
abstract class EstimateTemplateCostOutput
    with _i1.AWSEquatable<EstimateTemplateCostOutput>
    implements
        Built<EstimateTemplateCostOutput, EstimateTemplateCostOutputBuilder> {
  /// The output for a EstimateTemplateCost action.
  factory EstimateTemplateCostOutput({String? url}) {
    return _$EstimateTemplateCostOutput._(url: url);
  }

  /// The output for a EstimateTemplateCost action.
  factory EstimateTemplateCostOutput.build(
          [void Function(EstimateTemplateCostOutputBuilder) updates]) =
      _$EstimateTemplateCostOutput;

  const EstimateTemplateCostOutput._();

  /// Constructs a [EstimateTemplateCostOutput] from a [payload] and [response].
  factory EstimateTemplateCostOutput.fromResponse(
    EstimateTemplateCostOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<EstimateTemplateCostOutput>>
      serializers = [EstimateTemplateCostOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EstimateTemplateCostOutputBuilder b) {}

  /// An Amazon Web Services Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
  String? get url;
  @override
  List<Object?> get props => [url];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EstimateTemplateCostOutput')
      ..add(
        'url',
        url,
      );
    return helper.toString();
  }
}

class EstimateTemplateCostOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<EstimateTemplateCostOutput> {
  const EstimateTemplateCostOutputAwsQuerySerializer()
      : super('EstimateTemplateCostOutput');

  @override
  Iterable<Type> get types => const [
        EstimateTemplateCostOutput,
        _$EstimateTemplateCostOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  EstimateTemplateCostOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EstimateTemplateCostOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Url':
          result.url = (serializers.deserialize(
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
    EstimateTemplateCostOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'EstimateTemplateCostOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final EstimateTemplateCostOutput(:url) = object;
    if (url != null) {
      result$
        ..add(const _i2.XmlElementName('Url'))
        ..add(serializers.serialize(
          url,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
