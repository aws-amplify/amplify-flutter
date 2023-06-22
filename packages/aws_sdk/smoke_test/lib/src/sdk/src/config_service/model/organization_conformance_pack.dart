// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.organization_conformance_pack; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/conformance_pack_input_parameter.dart'
    as _i2;

part 'organization_conformance_pack.g.dart';

/// An organization conformance pack that has information about conformance packs that Config creates in member accounts.
abstract class OrganizationConformancePack
    with _i1.AWSEquatable<OrganizationConformancePack>
    implements
        Built<OrganizationConformancePack, OrganizationConformancePackBuilder> {
  /// An organization conformance pack that has information about conformance packs that Config creates in member accounts.
  factory OrganizationConformancePack({
    required String organizationConformancePackName,
    required String organizationConformancePackArn,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    List<_i2.ConformancePackInputParameter>? conformancePackInputParameters,
    List<String>? excludedAccounts,
    required DateTime lastUpdateTime,
  }) {
    return _$OrganizationConformancePack._(
      organizationConformancePackName: organizationConformancePackName,
      organizationConformancePackArn: organizationConformancePackArn,
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i3.BuiltList(conformancePackInputParameters),
      excludedAccounts:
          excludedAccounts == null ? null : _i3.BuiltList(excludedAccounts),
      lastUpdateTime: lastUpdateTime,
    );
  }

  /// An organization conformance pack that has information about conformance packs that Config creates in member accounts.
  factory OrganizationConformancePack.build(
          [void Function(OrganizationConformancePackBuilder) updates]) =
      _$OrganizationConformancePack;

  const OrganizationConformancePack._();

  static const List<_i4.SmithySerializer<OrganizationConformancePack>>
      serializers = [OrganizationConformancePackAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConformancePackBuilder b) {}

  /// The name you assign to an organization conformance pack.
  String get organizationConformancePackName;

  /// Amazon Resource Name (ARN) of organization conformance pack.
  String get organizationConformancePackArn;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional.
  String? get deliveryS3Bucket;

  /// Any folder structure you want to add to an Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A list of `ConformancePackInputParameter` objects.
  _i3.BuiltList<_i2.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// A comma-separated list of accounts excluded from organization conformance pack.
  _i3.BuiltList<String>? get excludedAccounts;

  /// Last time when organization conformation pack was updated.
  DateTime get lastUpdateTime;
  @override
  List<Object?> get props => [
        organizationConformancePackName,
        organizationConformancePackArn,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        conformancePackInputParameters,
        excludedAccounts,
        lastUpdateTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationConformancePack')
      ..add(
        'organizationConformancePackName',
        organizationConformancePackName,
      )
      ..add(
        'organizationConformancePackArn',
        organizationConformancePackArn,
      )
      ..add(
        'deliveryS3Bucket',
        deliveryS3Bucket,
      )
      ..add(
        'deliveryS3KeyPrefix',
        deliveryS3KeyPrefix,
      )
      ..add(
        'conformancePackInputParameters',
        conformancePackInputParameters,
      )
      ..add(
        'excludedAccounts',
        excludedAccounts,
      )
      ..add(
        'lastUpdateTime',
        lastUpdateTime,
      );
    return helper.toString();
  }
}

class OrganizationConformancePackAwsJson11Serializer
    extends _i4.StructuredSmithySerializer<OrganizationConformancePack> {
  const OrganizationConformancePackAwsJson11Serializer()
      : super('OrganizationConformancePack');

  @override
  Iterable<Type> get types => const [
        OrganizationConformancePack,
        _$OrganizationConformancePack,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  OrganizationConformancePack deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrganizationConformancePackBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OrganizationConformancePackArn':
          result.organizationConformancePackArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliveryS3Bucket':
          result.deliveryS3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DeliveryS3KeyPrefix':
          result.deliveryS3KeyPrefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ConformancePackInputParameters':
          result.conformancePackInputParameters
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.ConformancePackInputParameter)],
            ),
          ) as _i3.BuiltList<_i2.ConformancePackInputParameter>));
        case 'ExcludedAccounts':
          result.excludedAccounts.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'LastUpdateTime':
          result.lastUpdateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    OrganizationConformancePack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final OrganizationConformancePack(
      :organizationConformancePackName,
      :organizationConformancePackArn,
      :deliveryS3Bucket,
      :deliveryS3KeyPrefix,
      :conformancePackInputParameters,
      :excludedAccounts,
      :lastUpdateTime
    ) = object;
    result$.addAll([
      'OrganizationConformancePackName',
      serializers.serialize(
        organizationConformancePackName,
        specifiedType: const FullType(String),
      ),
      'OrganizationConformancePackArn',
      serializers.serialize(
        organizationConformancePackArn,
        specifiedType: const FullType(String),
      ),
      'LastUpdateTime',
      serializers.serialize(
        lastUpdateTime,
        specifiedType: const FullType(DateTime),
      ),
    ]);
    if (deliveryS3Bucket != null) {
      result$
        ..add('DeliveryS3Bucket')
        ..add(serializers.serialize(
          deliveryS3Bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (deliveryS3KeyPrefix != null) {
      result$
        ..add('DeliveryS3KeyPrefix')
        ..add(serializers.serialize(
          deliveryS3KeyPrefix,
          specifiedType: const FullType(String),
        ));
    }
    if (conformancePackInputParameters != null) {
      result$
        ..add('ConformancePackInputParameters')
        ..add(serializers.serialize(
          conformancePackInputParameters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConformancePackInputParameter)],
          ),
        ));
    }
    if (excludedAccounts != null) {
      result$
        ..add('ExcludedAccounts')
        ..add(serializers.serialize(
          excludedAccounts,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
