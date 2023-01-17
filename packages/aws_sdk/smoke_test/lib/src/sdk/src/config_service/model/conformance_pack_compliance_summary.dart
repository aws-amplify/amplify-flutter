// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.conformance_pack_compliance_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_compliance_type.dart'
    as _i2;

part 'conformance_pack_compliance_summary.g.dart';

/// Summary includes the name and status of the conformance pack.
abstract class ConformancePackComplianceSummary
    with
        _i1.AWSEquatable<ConformancePackComplianceSummary>
    implements
        Built<ConformancePackComplianceSummary,
            ConformancePackComplianceSummaryBuilder> {
  /// Summary includes the name and status of the conformance pack.
  factory ConformancePackComplianceSummary({
    required _i2.ConformancePackComplianceType conformancePackComplianceStatus,
    required String conformancePackName,
  }) {
    return _$ConformancePackComplianceSummary._(
      conformancePackComplianceStatus: conformancePackComplianceStatus,
      conformancePackName: conformancePackName,
    );
  }

  /// Summary includes the name and status of the conformance pack.
  factory ConformancePackComplianceSummary.build(
          [void Function(ConformancePackComplianceSummaryBuilder) updates]) =
      _$ConformancePackComplianceSummary;

  const ConformancePackComplianceSummary._();

  static const List<_i3.SmithySerializer> serializers = [
    ConformancePackComplianceSummaryAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackComplianceSummaryBuilder b) {}

  /// The status of the conformance pack. The allowed values are `COMPLIANT`, `NON_COMPLIANT` and `INSUFFICIENT_DATA`.
  _i2.ConformancePackComplianceType get conformancePackComplianceStatus;

  /// The name of the conformance pack name.
  String get conformancePackName;
  @override
  List<Object?> get props => [
        conformancePackComplianceStatus,
        conformancePackName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ConformancePackComplianceSummary');
    helper.add(
      'conformancePackComplianceStatus',
      conformancePackComplianceStatus,
    );
    helper.add(
      'conformancePackName',
      conformancePackName,
    );
    return helper.toString();
  }
}

class ConformancePackComplianceSummaryAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<ConformancePackComplianceSummary> {
  const ConformancePackComplianceSummaryAwsJson11Serializer()
      : super('ConformancePackComplianceSummary');

  @override
  Iterable<Type> get types => const [
        ConformancePackComplianceSummary,
        _$ConformancePackComplianceSummary,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackComplianceSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackComplianceSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ConformancePackComplianceStatus':
          result.conformancePackComplianceStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ConformancePackComplianceType),
          ) as _i2.ConformancePackComplianceType);
          break;
        case 'ConformancePackName':
          result.conformancePackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as ConformancePackComplianceSummary);
    final result = <Object?>[
      'ConformancePackComplianceStatus',
      serializers.serialize(
        payload.conformancePackComplianceStatus,
        specifiedType: const FullType(_i2.ConformancePackComplianceType),
      ),
      'ConformancePackName',
      serializers.serialize(
        payload.conformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
