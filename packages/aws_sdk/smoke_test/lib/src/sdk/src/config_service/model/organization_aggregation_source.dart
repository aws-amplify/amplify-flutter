// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.organization_aggregation_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'organization_aggregation_source.g.dart';

/// This object contains regions to set up the aggregator and an IAM role to retrieve organization details.
abstract class OrganizationAggregationSource
    with
        _i1.AWSEquatable<OrganizationAggregationSource>
    implements
        Built<OrganizationAggregationSource,
            OrganizationAggregationSourceBuilder> {
  /// This object contains regions to set up the aggregator and an IAM role to retrieve organization details.
  factory OrganizationAggregationSource({
    required String roleArn,
    List<String>? awsRegions,
    bool? allAwsRegions,
  }) {
    return _$OrganizationAggregationSource._(
      roleArn: roleArn,
      awsRegions: awsRegions == null ? null : _i2.BuiltList(awsRegions),
      allAwsRegions: allAwsRegions,
    );
  }

  /// This object contains regions to set up the aggregator and an IAM role to retrieve organization details.
  factory OrganizationAggregationSource.build(
          [void Function(OrganizationAggregationSourceBuilder) updates]) =
      _$OrganizationAggregationSource;

  const OrganizationAggregationSource._();

  static const List<_i3.SmithySerializer> serializers = [
    OrganizationAggregationSourceAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationAggregationSourceBuilder b) {}

  /// ARN of the IAM role used to retrieve Amazon Web Services Organization details associated with the aggregator account.
  String get roleArn;

  /// The source regions being aggregated.
  _i2.BuiltList<String>? get awsRegions;

  /// If true, aggregate existing Config regions and future regions.
  bool? get allAwsRegions;
  @override
  List<Object?> get props => [
        roleArn,
        awsRegions,
        allAwsRegions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationAggregationSource');
    helper.add(
      'roleArn',
      roleArn,
    );
    helper.add(
      'awsRegions',
      awsRegions,
    );
    helper.add(
      'allAwsRegions',
      allAwsRegions,
    );
    return helper.toString();
  }
}

class OrganizationAggregationSourceAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<OrganizationAggregationSource> {
  const OrganizationAggregationSourceAwsJson11Serializer()
      : super('OrganizationAggregationSource');

  @override
  Iterable<Type> get types => const [
        OrganizationAggregationSource,
        _$OrganizationAggregationSource,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationAggregationSource deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationAggregationSourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RoleArn':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsRegions':
          result.awsRegions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'AllAwsRegions':
          result.allAwsRegions = (serializers.deserialize(
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
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as OrganizationAggregationSource);
    final result = <Object?>[
      'RoleArn',
      serializers.serialize(
        payload.roleArn,
        specifiedType: const FullType(String),
      ),
    ];
    final OrganizationAggregationSource(:awsRegions, :allAwsRegions) = payload;
    if (awsRegions != null) {
      result
        ..add('AwsRegions')
        ..add(serializers.serialize(
          awsRegions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (allAwsRegions != null) {
      result
        ..add('AllAwsRegions')
        ..add(serializers.serialize(
          allAwsRegions,
          specifiedType: const FullType(bool),
        ));
    }
    return result;
  }
}
