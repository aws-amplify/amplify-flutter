// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_compliance_scores_filters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'conformance_pack_compliance_scores_filters.g.dart';

/// A list of filters to apply to the conformance pack compliance score result set.
abstract class ConformancePackComplianceScoresFilters
    with
        _i1.AWSEquatable<ConformancePackComplianceScoresFilters>
    implements
        Built<ConformancePackComplianceScoresFilters,
            ConformancePackComplianceScoresFiltersBuilder> {
  /// A list of filters to apply to the conformance pack compliance score result set.
  factory ConformancePackComplianceScoresFilters(
      {required List<String> conformancePackNames}) {
    return _$ConformancePackComplianceScoresFilters._(
        conformancePackNames: _i2.BuiltList(conformancePackNames));
  }

  /// A list of filters to apply to the conformance pack compliance score result set.
  factory ConformancePackComplianceScoresFilters.build(
      [void Function(ConformancePackComplianceScoresFiltersBuilder)
          updates]) = _$ConformancePackComplianceScoresFilters;

  const ConformancePackComplianceScoresFilters._();

  static const List<_i3.SmithySerializer> serializers = [
    ConformancePackComplianceScoresFiltersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackComplianceScoresFiltersBuilder b) {}

  /// The names of the conformance packs whose compliance scores you want to include in the conformance pack compliance score result set. You can include up to 25 conformance packs in the `ConformancePackNames` array of strings, each with a character limit of 256 characters for the conformance pack name.
  _i2.BuiltList<String> get conformancePackNames;
  @override
  List<Object?> get props => [conformancePackNames];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackComplianceScoresFilters');
    helper.add(
      'conformancePackNames',
      conformancePackNames,
    );
    return helper.toString();
  }
}

class ConformancePackComplianceScoresFiltersAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<ConformancePackComplianceScoresFilters> {
  const ConformancePackComplianceScoresFiltersAwsJson11Serializer()
      : super('ConformancePackComplianceScoresFilters');

  @override
  Iterable<Type> get types => const [
        ConformancePackComplianceScoresFilters,
        _$ConformancePackComplianceScoresFilters,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackComplianceScoresFilters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackComplianceScoresFiltersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackNames':
          result.conformancePackNames.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
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
    final payload = (object as ConformancePackComplianceScoresFilters);
    final result = <Object?>[
      'ConformancePackNames',
      serializers.serialize(
        payload.conformancePackNames,
        specifiedType: const FullType(
          _i2.BuiltList,
          [FullType(String)],
        ),
      ),
    ];
    return result;
  }
}
