// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

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
    List<_i2.ConformancePackInputParameter>? conformancePackInputParameters,
    String? deliveryS3Bucket,
    String? deliveryS3KeyPrefix,
    List<String>? excludedAccounts,
    required DateTime lastUpdateTime,
    required String organizationConformancePackArn,
    required String organizationConformancePackName,
  }) {
    return _$OrganizationConformancePack._(
      conformancePackInputParameters: conformancePackInputParameters == null
          ? null
          : _i3.BuiltList(conformancePackInputParameters),
      deliveryS3Bucket: deliveryS3Bucket,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      excludedAccounts:
          excludedAccounts == null ? null : _i3.BuiltList(excludedAccounts),
      lastUpdateTime: lastUpdateTime,
      organizationConformancePackArn: organizationConformancePackArn,
      organizationConformancePackName: organizationConformancePackName,
    );
  }

  /// An organization conformance pack that has information about conformance packs that Config creates in member accounts.
  factory OrganizationConformancePack.build(
          [void Function(OrganizationConformancePackBuilder) updates]) =
      _$OrganizationConformancePack;

  const OrganizationConformancePack._();

  static const List<_i4.SmithySerializer> serializers = [
    OrganizationConformancePackAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OrganizationConformancePackBuilder b) {}

  /// A list of `ConformancePackInputParameter` objects.
  _i3.BuiltList<_i2.ConformancePackInputParameter>?
      get conformancePackInputParameters;

  /// The name of the Amazon S3 bucket where Config stores conformance pack templates.
  ///
  /// This field is optional.
  String? get deliveryS3Bucket;

  /// Any folder structure you want to add to an Amazon S3 bucket.
  ///
  /// This field is optional.
  String? get deliveryS3KeyPrefix;

  /// A comma-separated list of accounts excluded from organization conformance pack.
  _i3.BuiltList<String>? get excludedAccounts;

  /// Last time when organization conformation pack was updated.
  DateTime get lastUpdateTime;

  /// Amazon Resource Name (ARN) of organization conformance pack.
  String get organizationConformancePackArn;

  /// The name you assign to an organization conformance pack.
  String get organizationConformancePackName;
  @override
  List<Object?> get props => [
        conformancePackInputParameters,
        deliveryS3Bucket,
        deliveryS3KeyPrefix,
        excludedAccounts,
        lastUpdateTime,
        organizationConformancePackArn,
        organizationConformancePackName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OrganizationConformancePack');
    helper.add(
      'conformancePackInputParameters',
      conformancePackInputParameters,
    );
    helper.add(
      'deliveryS3Bucket',
      deliveryS3Bucket,
    );
    helper.add(
      'deliveryS3KeyPrefix',
      deliveryS3KeyPrefix,
    );
    helper.add(
      'excludedAccounts',
      excludedAccounts,
    );
    helper.add(
      'lastUpdateTime',
      lastUpdateTime,
    );
    helper.add(
      'organizationConformancePackArn',
      organizationConformancePackArn,
    );
    helper.add(
      'organizationConformancePackName',
      organizationConformancePackName,
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
      switch (key) {
        case 'ConformancePackInputParameters':
          if (value != null) {
            result.conformancePackInputParameters
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConformancePackInputParameter)],
              ),
            ) as _i3.BuiltList<_i2.ConformancePackInputParameter>));
          }
          break;
        case 'DeliveryS3Bucket':
          if (value != null) {
            result.deliveryS3Bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DeliveryS3KeyPrefix':
          if (value != null) {
            result.deliveryS3KeyPrefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExcludedAccounts':
          if (value != null) {
            result.excludedAccounts.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'LastUpdateTime':
          result.lastUpdateTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'OrganizationConformancePackArn':
          result.organizationConformancePackArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'OrganizationConformancePackName':
          result.organizationConformancePackName = (serializers.deserialize(
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
    final payload = (object as OrganizationConformancePack);
    final result = <Object?>[
      'LastUpdateTime',
      serializers.serialize(
        payload.lastUpdateTime,
        specifiedType: const FullType(DateTime),
      ),
      'OrganizationConformancePackArn',
      serializers.serialize(
        payload.organizationConformancePackArn,
        specifiedType: const FullType(String),
      ),
      'OrganizationConformancePackName',
      serializers.serialize(
        payload.organizationConformancePackName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.conformancePackInputParameters != null) {
      result
        ..add('ConformancePackInputParameters')
        ..add(serializers.serialize(
          payload.conformancePackInputParameters!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.ConformancePackInputParameter)],
          ),
        ));
    }
    if (payload.deliveryS3Bucket != null) {
      result
        ..add('DeliveryS3Bucket')
        ..add(serializers.serialize(
          payload.deliveryS3Bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deliveryS3KeyPrefix != null) {
      result
        ..add('DeliveryS3KeyPrefix')
        ..add(serializers.serialize(
          payload.deliveryS3KeyPrefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.excludedAccounts != null) {
      result
        ..add('ExcludedAccounts')
        ..add(serializers.serialize(
          payload.excludedAccounts!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
