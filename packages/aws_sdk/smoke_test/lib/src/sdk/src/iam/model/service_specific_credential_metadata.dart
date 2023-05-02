// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.service_specific_credential_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i2;

part 'service_specific_credential_metadata.g.dart';

/// Contains additional details about a service-specific credential.
abstract class ServiceSpecificCredentialMetadata
    with
        _i1.AWSEquatable<ServiceSpecificCredentialMetadata>
    implements
        Built<ServiceSpecificCredentialMetadata,
            ServiceSpecificCredentialMetadataBuilder> {
  /// Contains additional details about a service-specific credential.
  factory ServiceSpecificCredentialMetadata({
    required String userName,
    required _i2.StatusType status,
    required String serviceUserName,
    required DateTime createDate,
    required String serviceSpecificCredentialId,
    required String serviceName,
  }) {
    return _$ServiceSpecificCredentialMetadata._(
      userName: userName,
      status: status,
      serviceUserName: serviceUserName,
      createDate: createDate,
      serviceSpecificCredentialId: serviceSpecificCredentialId,
      serviceName: serviceName,
    );
  }

  /// Contains additional details about a service-specific credential.
  factory ServiceSpecificCredentialMetadata.build(
          [void Function(ServiceSpecificCredentialMetadataBuilder) updates]) =
      _$ServiceSpecificCredentialMetadata;

  const ServiceSpecificCredentialMetadata._();

  static const List<_i3.SmithySerializer> serializers = [
    ServiceSpecificCredentialMetadataAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceSpecificCredentialMetadataBuilder b) {}

  /// The name of the IAM user associated with the service-specific credential.
  String get userName;

  /// The status of the service-specific credential. `Active` means that the key is valid for API calls, while `Inactive` means it is not.
  _i2.StatusType get status;

  /// The generated user name for the service-specific credential.
  String get serviceUserName;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the service-specific credential were created.
  DateTime get createDate;

  /// The unique identifier for the service-specific credential.
  String get serviceSpecificCredentialId;

  /// The name of the service associated with the service-specific credential.
  String get serviceName;
  @override
  List<Object?> get props => [
        userName,
        status,
        serviceUserName,
        createDate,
        serviceSpecificCredentialId,
        serviceName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ServiceSpecificCredentialMetadata');
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'serviceUserName',
      serviceUserName,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'serviceSpecificCredentialId',
      serviceSpecificCredentialId,
    );
    helper.add(
      'serviceName',
      serviceName,
    );
    return helper.toString();
  }
}

class ServiceSpecificCredentialMetadataAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ServiceSpecificCredentialMetadata> {
  const ServiceSpecificCredentialMetadataAwsQuerySerializer()
      : super('ServiceSpecificCredentialMetadata');

  @override
  Iterable<Type> get types => const [
        ServiceSpecificCredentialMetadata,
        _$ServiceSpecificCredentialMetadata,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServiceSpecificCredentialMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceSpecificCredentialMetadataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'UserName':
          result.userName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.StatusType),
          ) as _i2.StatusType);
          break;
        case 'ServiceUserName':
          result.serviceUserName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'ServiceSpecificCredentialId':
          result.serviceSpecificCredentialId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
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
    final payload = (object as ServiceSpecificCredentialMetadata);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ServiceSpecificCredentialMetadataResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('UserName'))
      ..add(serializers.serialize(
        payload.userName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i2.StatusType),
      ));
    result
      ..add(const _i3.XmlElementName('ServiceUserName'))
      ..add(serializers.serialize(
        payload.serviceUserName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        payload.createDate,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result
      ..add(const _i3.XmlElementName('ServiceSpecificCredentialId'))
      ..add(serializers.serialize(
        payload.serviceSpecificCredentialId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i3.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        payload.serviceName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
