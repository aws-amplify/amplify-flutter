// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.service_last_accessed; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tracked_action_last_accessed.dart'
    as _i2;

part 'service_last_accessed.g.dart';

/// Contains details about the most recent attempt to access the service.
///
/// This data type is used as a response element in the GetServiceLastAccessedDetails operation.
abstract class ServiceLastAccessed
    with _i1.AWSEquatable<ServiceLastAccessed>
    implements Built<ServiceLastAccessed, ServiceLastAccessedBuilder> {
  /// Contains details about the most recent attempt to access the service.
  ///
  /// This data type is used as a response element in the GetServiceLastAccessedDetails operation.
  factory ServiceLastAccessed({
    required String serviceName,
    DateTime? lastAuthenticated,
    required String serviceNamespace,
    String? lastAuthenticatedEntity,
    String? lastAuthenticatedRegion,
    int? totalAuthenticatedEntities,
    List<_i2.TrackedActionLastAccessed>? trackedActionsLastAccessed,
  }) {
    return _$ServiceLastAccessed._(
      serviceName: serviceName,
      lastAuthenticated: lastAuthenticated,
      serviceNamespace: serviceNamespace,
      lastAuthenticatedEntity: lastAuthenticatedEntity,
      lastAuthenticatedRegion: lastAuthenticatedRegion,
      totalAuthenticatedEntities: totalAuthenticatedEntities,
      trackedActionsLastAccessed: trackedActionsLastAccessed == null
          ? null
          : _i3.BuiltList(trackedActionsLastAccessed),
    );
  }

  /// Contains details about the most recent attempt to access the service.
  ///
  /// This data type is used as a response element in the GetServiceLastAccessedDetails operation.
  factory ServiceLastAccessed.build(
          [void Function(ServiceLastAccessedBuilder) updates]) =
      _$ServiceLastAccessed;

  const ServiceLastAccessed._();

  static const List<_i4.SmithySerializer<ServiceLastAccessed>> serializers = [
    ServiceLastAccessedAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceLastAccessedBuilder b) {}

  /// The name of the service in which access was attempted.
  String get serviceName;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when an authenticated entity most recently attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no IAM entities attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  DateTime? get lastAuthenticated;

  /// The namespace of the service in which access was attempted.
  ///
  /// To learn the service namespace of a service, see [Actions, resources, and condition keys for Amazon Web Services services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) in the _Service Authorization Reference_. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, `(service prefix: a4b)`. For more information about service namespaces, see [Amazon Web Services Service Namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the _Amazon Web Services General Reference_.
  String get serviceNamespace;

  /// The ARN of the authenticated entity (user or role) that last attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no IAM entities attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get lastAuthenticatedEntity;

  /// The Region from which the authenticated entity (user or role) last attempted to access the service. Amazon Web Services does not report unauthenticated requests.
  ///
  /// This field is null if no IAM entities attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  String? get lastAuthenticatedRegion;

  /// The total number of authenticated principals (root user, IAM users, or IAM roles) that have attempted to access the service.
  ///
  /// This field is null if no principals attempted to access the service within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).
  int? get totalAuthenticatedEntities;

  /// An object that contains details about the most recent attempt to access a tracked action within the service.
  ///
  /// This field is null if there no tracked actions or if the principal did not use the tracked actions within the [tracking period](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period). This field is also null if the report was generated at the service level and not the action level. For more information, see the `Granularity` field in GenerateServiceLastAccessedDetails.
  _i3.BuiltList<_i2.TrackedActionLastAccessed>? get trackedActionsLastAccessed;
  @override
  List<Object?> get props => [
        serviceName,
        lastAuthenticated,
        serviceNamespace,
        lastAuthenticatedEntity,
        lastAuthenticatedRegion,
        totalAuthenticatedEntities,
        trackedActionsLastAccessed,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceLastAccessed')
      ..add(
        'serviceName',
        serviceName,
      )
      ..add(
        'lastAuthenticated',
        lastAuthenticated,
      )
      ..add(
        'serviceNamespace',
        serviceNamespace,
      )
      ..add(
        'lastAuthenticatedEntity',
        lastAuthenticatedEntity,
      )
      ..add(
        'lastAuthenticatedRegion',
        lastAuthenticatedRegion,
      )
      ..add(
        'totalAuthenticatedEntities',
        totalAuthenticatedEntities,
      )
      ..add(
        'trackedActionsLastAccessed',
        trackedActionsLastAccessed,
      );
    return helper.toString();
  }
}

class ServiceLastAccessedAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ServiceLastAccessed> {
  const ServiceLastAccessedAwsQuerySerializer() : super('ServiceLastAccessed');

  @override
  Iterable<Type> get types => const [
        ServiceLastAccessed,
        _$ServiceLastAccessed,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServiceLastAccessed deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceLastAccessedBuilder();
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
        case 'LastAuthenticated':
          result.lastAuthenticated = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ServiceNamespace':
          result.serviceNamespace = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastAuthenticatedEntity':
          result.lastAuthenticatedEntity = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastAuthenticatedRegion':
          result.lastAuthenticatedRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TotalAuthenticatedEntities':
          result.totalAuthenticatedEntities = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'TrackedActionsLastAccessed':
          result.trackedActionsLastAccessed.replace(
              (const _i4.XmlBuiltListSerializer(
                      indexer: _i4.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.TrackedActionLastAccessed)],
            ),
          ) as _i3.BuiltList<_i2.TrackedActionLastAccessed>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceLastAccessed object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ServiceLastAccessedResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ServiceLastAccessed(
      :serviceName,
      :lastAuthenticated,
      :serviceNamespace,
      :lastAuthenticatedEntity,
      :lastAuthenticatedRegion,
      :totalAuthenticatedEntities,
      :trackedActionsLastAccessed
    ) = object;
    result$
      ..add(const _i4.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        serviceName,
        specifiedType: const FullType(String),
      ));
    if (lastAuthenticated != null) {
      result$
        ..add(const _i4.XmlElementName('LastAuthenticated'))
        ..add(serializers.serialize(
          lastAuthenticated,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('ServiceNamespace'))
      ..add(serializers.serialize(
        serviceNamespace,
        specifiedType: const FullType(String),
      ));
    if (lastAuthenticatedEntity != null) {
      result$
        ..add(const _i4.XmlElementName('LastAuthenticatedEntity'))
        ..add(serializers.serialize(
          lastAuthenticatedEntity,
          specifiedType: const FullType(String),
        ));
    }
    if (lastAuthenticatedRegion != null) {
      result$
        ..add(const _i4.XmlElementName('LastAuthenticatedRegion'))
        ..add(serializers.serialize(
          lastAuthenticatedRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (totalAuthenticatedEntities != null) {
      result$
        ..add(const _i4.XmlElementName('TotalAuthenticatedEntities'))
        ..add(serializers.serialize(
          totalAuthenticatedEntities,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (trackedActionsLastAccessed != null) {
      result$
        ..add(const _i4.XmlElementName('TrackedActionsLastAccessed'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          trackedActionsLastAccessed,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TrackedActionLastAccessed)],
          ),
        ));
    }
    return result$;
  }
}
