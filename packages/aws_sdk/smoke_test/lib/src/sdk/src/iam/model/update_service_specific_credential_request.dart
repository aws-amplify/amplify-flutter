// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.update_service_specific_credential_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/status_type.dart' as _i3;

part 'update_service_specific_credential_request.g.dart';

abstract class UpdateServiceSpecificCredentialRequest
    with
        _i1.HttpInput<UpdateServiceSpecificCredentialRequest>,
        _i2.AWSEquatable<UpdateServiceSpecificCredentialRequest>
    implements
        Built<UpdateServiceSpecificCredentialRequest,
            UpdateServiceSpecificCredentialRequestBuilder> {
  factory UpdateServiceSpecificCredentialRequest({
    String? userName,
    required String serviceSpecificCredentialId,
    required _i3.StatusType status,
  }) {
    return _$UpdateServiceSpecificCredentialRequest._(
      userName: userName,
      serviceSpecificCredentialId: serviceSpecificCredentialId,
      status: status,
    );
  }

  factory UpdateServiceSpecificCredentialRequest.build(
      [void Function(UpdateServiceSpecificCredentialRequestBuilder)
          updates]) = _$UpdateServiceSpecificCredentialRequest;

  const UpdateServiceSpecificCredentialRequest._();

  factory UpdateServiceSpecificCredentialRequest.fromRequest(
    UpdateServiceSpecificCredentialRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<UpdateServiceSpecificCredentialRequest>>
      serializers = [
    UpdateServiceSpecificCredentialRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateServiceSpecificCredentialRequestBuilder b) {}

  /// The name of the IAM user associated with the service-specific credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The unique identifier of the service-specific credential.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get serviceSpecificCredentialId;

  /// The status to be assigned to the service-specific credential.
  _i3.StatusType get status;
  @override
  UpdateServiceSpecificCredentialRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serviceSpecificCredentialId,
        status,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateServiceSpecificCredentialRequest')
          ..add(
            'userName',
            userName,
          )
          ..add(
            'serviceSpecificCredentialId',
            serviceSpecificCredentialId,
          )
          ..add(
            'status',
            status,
          );
    return helper.toString();
  }
}

class UpdateServiceSpecificCredentialRequestAwsQuerySerializer extends _i1
    .StructuredSmithySerializer<UpdateServiceSpecificCredentialRequest> {
  const UpdateServiceSpecificCredentialRequestAwsQuerySerializer()
      : super('UpdateServiceSpecificCredentialRequest');

  @override
  Iterable<Type> get types => const [
        UpdateServiceSpecificCredentialRequest,
        _$UpdateServiceSpecificCredentialRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateServiceSpecificCredentialRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateServiceSpecificCredentialRequestBuilder();
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
        case 'ServiceSpecificCredentialId':
          result.serviceSpecificCredentialId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StatusType),
          ) as _i3.StatusType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UpdateServiceSpecificCredentialRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateServiceSpecificCredentialRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UpdateServiceSpecificCredentialRequest(
      :userName,
      :serviceSpecificCredentialId,
      :status
    ) = object;
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ServiceSpecificCredentialId'))
      ..add(serializers.serialize(
        serviceSpecificCredentialId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i3.StatusType),
      ));
    return result$;
  }
}
