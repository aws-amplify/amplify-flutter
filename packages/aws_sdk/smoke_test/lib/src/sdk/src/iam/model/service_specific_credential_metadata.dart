// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.service_specific_credential_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart';

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
    required StatusType status,
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

  static const List<_i2.SmithySerializer<ServiceSpecificCredentialMetadata>>
      serializers = [ServiceSpecificCredentialMetadataAwsQuerySerializer()];

  /// The name of the IAM user associated with the service-specific credential.
  String get userName;

  /// The status of the service-specific credential. `Active` means that the key is valid for API calls, while `Inactive` means it is not.
  StatusType get status;

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
        newBuiltValueToStringHelper('ServiceSpecificCredentialMetadata')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'status',
            status,
          )
          ..add(
            'serviceUserName',
            serviceUserName,
          )
          ..add(
            'createDate',
            createDate,
          )
          ..add(
            'serviceSpecificCredentialId',
            serviceSpecificCredentialId,
          )
          ..add(
            'serviceName',
            serviceName,
          );
    return helper.toString();
  }
}

class ServiceSpecificCredentialMetadataAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ServiceSpecificCredentialMetadata> {
  const ServiceSpecificCredentialMetadataAwsQuerySerializer()
      : super('ServiceSpecificCredentialMetadata');

  @override
  Iterable<Type> get types => const [
        ServiceSpecificCredentialMetadata,
        _$ServiceSpecificCredentialMetadata,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(StatusType),
          ) as StatusType);
        case 'ServiceUserName':
          result.serviceUserName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'ServiceSpecificCredentialId':
          result.serviceSpecificCredentialId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServiceSpecificCredentialMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ServiceSpecificCredentialMetadataResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ServiceSpecificCredentialMetadata(
      :userName,
      :status,
      :serviceUserName,
      :createDate,
      :serviceSpecificCredentialId,
      :serviceName
    ) = object;
    result$
      ..add(const _i2.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType(StatusType),
      ));
    result$
      ..add(const _i2.XmlElementName('ServiceUserName'))
      ..add(serializers.serialize(
        serviceUserName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('CreateDate'))
      ..add(serializers.serialize(
        createDate,
        specifiedType: const FullType(DateTime),
      ));
    result$
      ..add(const _i2.XmlElementName('ServiceSpecificCredentialId'))
      ..add(serializers.serialize(
        serviceSpecificCredentialId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        serviceName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
