// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i2.SmithySerializer<AccessDetail>> serializers = [
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
  /// This field is null if no principals in the reported Organizations entity attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get region;

  /// The path of the Organizations entity (root, organizational unit, or account) from which an authenticated principal last attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no principals (IAM users, IAM roles, or root user) in the reported Organizations entity attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get entityPath;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when an authenticated principal most recently attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no principals in the reported Organizations entity attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  DateTime? get lastAuthenticatedTime;

  /// The number of accounts with authenticated principals (root user, IAM users, and IAM roles) that attempted to access the service in the tracking period.
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
    final helper = newBuiltValueToStringHelper('AccessDetail')
      ..add(
        'serviceName',
        serviceName,
      )
      ..add(
        'serviceNamespace',
        serviceNamespace,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'entityPath',
        entityPath,
      )
      ..add(
        'lastAuthenticatedTime',
        lastAuthenticatedTime,
      )
      ..add(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ServiceNamespace':
          result.serviceNamespace = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EntityPath':
          result.entityPath = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastAuthenticatedTime':
          result.lastAuthenticatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'TotalAuthenticatedEntities':
          result.totalAuthenticatedEntities = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AccessDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AccessDetailResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final AccessDetail(
      :serviceName,
      :serviceNamespace,
      :region,
      :entityPath,
      :lastAuthenticatedTime,
      :totalAuthenticatedEntities
    ) = object;
    result$
      ..add(const _i2.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        serviceName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('ServiceNamespace'))
      ..add(serializers.serialize(
        serviceNamespace,
        specifiedType: const FullType(String),
      ));
    if (region != null) {
      result$
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          region,
          specifiedType: const FullType(String),
        ));
    }
    if (entityPath != null) {
      result$
        ..add(const _i2.XmlElementName('EntityPath'))
        ..add(serializers.serialize(
          entityPath,
          specifiedType: const FullType(String),
        ));
    }
    if (lastAuthenticatedTime != null) {
      result$
        ..add(const _i2.XmlElementName('LastAuthenticatedTime'))
        ..add(serializers.serialize(
          lastAuthenticatedTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (totalAuthenticatedEntities != null) {
      result$
        ..add(const _i2.XmlElementName('TotalAuthenticatedEntities'))
        ..add(serializers.serialize(
          totalAuthenticatedEntities,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
