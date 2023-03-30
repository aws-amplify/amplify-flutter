// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.access_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'access_detail.g.dart';

/// An object that contains details about when a principal in the reported Organizations entity last attempted to access an Amazon Web Services service. A principal can be an IAM user, an IAM role, or the Amazon Web Services account root user within the reported Organizations entity.
///
/// This data type is a response element in the GetOrganizationsAccessReport operation.
abstract class AccessDetail
    with _i1.AWSEquatable<AccessDetail>
    implements Built<AccessDetail, AccessDetailBuilder> {
  /// An object that contains details about when a principal in the reported Organizations entity last attempted to access an Amazon Web Services service. A principal can be an IAM user, an IAM role, or the Amazon Web Services account root user within the reported Organizations entity.
  ///
  /// This data type is a response element in the GetOrganizationsAccessReport operation.
  factory AccessDetail({
    required String serviceName,
    required String serviceNamespace,
    String? region,
    String? entityPath,
    DateTime? lastAuthenticatedTime,
    int? totalAuthenticatedEntities,
  }) {
    return _$AccessDetail._(
      serviceName: serviceName,
      serviceNamespace: serviceNamespace,
      region: region,
      entityPath: entityPath,
      lastAuthenticatedTime: lastAuthenticatedTime,
      totalAuthenticatedEntities: totalAuthenticatedEntities,
    );
  }

  /// An object that contains details about when a principal in the reported Organizations entity last attempted to access an Amazon Web Services service. A principal can be an IAM user, an IAM role, or the Amazon Web Services account root user within the reported Organizations entity.
  ///
  /// This data type is a response element in the GetOrganizationsAccessReport operation.
  factory AccessDetail.build([void Function(AccessDetailBuilder) updates]) =
      _$AccessDetail;

  const AccessDetail._();

  static const List<_i2.SmithySerializer> serializers = [
    AccessDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessDetailBuilder b) {}

  /// The name of the service in which access was attempted.
  String get serviceName;

  /// The namespace of the service in which access was attempted.
  ///
  /// To learn the service namespace of a service, see [Actions, resources, and condition keys for Amazon Web Services services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) in the _Service Authorization Reference_. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, `(service prefix: a4b)`. For more information about service namespaces, see [Amazon Web Services service namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the _Amazon Web Services General Reference_.
  String get serviceNamespace;

  /// The Region where the last service access attempt occurred.
  ///
  /// This field is null if no principals in the reported Organizations entity attempted to access the service within the [reporting period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get region;

  /// The path of the Organizations entity (root, organizational unit, or account) from which an authenticated principal last attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no principals (IAM users, IAM roles, or root users) in the reported Organizations entity attempted to access the service within the [reporting period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get entityPath;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when an authenticated principal most recently attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no principals in the reported Organizations entity attempted to access the service within the [reporting period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  DateTime? get lastAuthenticatedTime;

  /// The number of accounts with authenticated principals (root users, IAM users, and IAM roles) that attempted to access the service in the reporting period.
  int? get totalAuthenticatedEntities;
  @override
  List<Object?> get props => [
        serviceName,
        serviceNamespace,
        region,
        entityPath,
        lastAuthenticatedTime,
        totalAuthenticatedEntities,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessDetail');
    helper.add(
      'serviceName',
      serviceName,
    );
    helper.add(
      'serviceNamespace',
      serviceNamespace,
    );
    helper.add(
      'region',
      region,
    );
    helper.add(
      'entityPath',
      entityPath,
    );
    helper.add(
      'lastAuthenticatedTime',
      lastAuthenticatedTime,
    );
    helper.add(
      'totalAuthenticatedEntities',
      totalAuthenticatedEntities,
    );
    return helper.toString();
  }
}

class AccessDetailAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AccessDetail> {
  const AccessDetailAwsQuerySerializer() : super('AccessDetail');

  @override
  Iterable<Type> get types => const [
        AccessDetail,
        _$AccessDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AccessDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServiceNamespace':
          result.serviceNamespace = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Region':
          if (value != null) {
            result.region = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EntityPath':
          if (value != null) {
            result.entityPath = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LastAuthenticatedTime':
          if (value != null) {
            result.lastAuthenticatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'TotalAuthenticatedEntities':
          if (value != null) {
            result.totalAuthenticatedEntities = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as AccessDetail);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AccessDetailResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        payload.serviceName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('ServiceNamespace'))
      ..add(serializers.serialize(
        payload.serviceNamespace,
        specifiedType: const FullType(String),
      ));
    if (payload.region != null) {
      result
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.entityPath != null) {
      result
        ..add(const _i2.XmlElementName('EntityPath'))
        ..add(serializers.serialize(
          payload.entityPath!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastAuthenticatedTime != null) {
      result
        ..add(const _i2.XmlElementName('LastAuthenticatedTime'))
        ..add(serializers.serialize(
          payload.lastAuthenticatedTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.totalAuthenticatedEntities != null) {
      result
        ..add(const _i2.XmlElementName('TotalAuthenticatedEntities'))
        ..add(serializers.serialize(
          payload.totalAuthenticatedEntities!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
