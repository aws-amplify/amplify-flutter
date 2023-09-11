// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.template_summary_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'template_summary_config.g.dart';

/// Options for the `GetTemplateSummary` API action.
abstract class TemplateSummaryConfig
    with _i1.AWSEquatable<TemplateSummaryConfig>
    implements Built<TemplateSummaryConfig, TemplateSummaryConfigBuilder> {
  /// Options for the `GetTemplateSummary` API action.
  factory TemplateSummaryConfig(
      {bool? treatUnrecognizedResourceTypesAsWarnings}) {
    return _$TemplateSummaryConfig._(
        treatUnrecognizedResourceTypesAsWarnings:
            treatUnrecognizedResourceTypesAsWarnings);
  }

  /// Options for the `GetTemplateSummary` API action.
  factory TemplateSummaryConfig.build(
          [void Function(TemplateSummaryConfigBuilder) updates]) =
      _$TemplateSummaryConfig;

  const TemplateSummaryConfig._();

  static const List<_i2.SmithySerializer<TemplateSummaryConfig>> serializers = [
    TemplateSummaryConfigAwsQuerySerializer()
  ];

  /// If set to `True`, any unrecognized resource types generate warnings and not an error. Any unrecognized resource types are returned in the `Warnings` output parameter.
  bool? get treatUnrecognizedResourceTypesAsWarnings;
  @override
  List<Object?> get props => [treatUnrecognizedResourceTypesAsWarnings];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TemplateSummaryConfig')
      ..add(
        'treatUnrecognizedResourceTypesAsWarnings',
        treatUnrecognizedResourceTypesAsWarnings,
      );
    return helper.toString();
  }
}

class TemplateSummaryConfigAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TemplateSummaryConfig> {
  const TemplateSummaryConfigAwsQuerySerializer()
      : super('TemplateSummaryConfig');

  @override
  Iterable<Type> get types => const [
        TemplateSummaryConfig,
        _$TemplateSummaryConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TemplateSummaryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateSummaryConfigBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TreatUnrecognizedResourceTypesAsWarnings':
          result.treatUnrecognizedResourceTypesAsWarnings =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TemplateSummaryConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TemplateSummaryConfigResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TemplateSummaryConfig(:treatUnrecognizedResourceTypesAsWarnings) =
        object;
    if (treatUnrecognizedResourceTypesAsWarnings != null) {
      result$
        ..add(const _i2.XmlElementName(
            'TreatUnrecognizedResourceTypesAsWarnings'))
        ..add(serializers.serialize(
          treatUnrecognizedResourceTypesAsWarnings,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
