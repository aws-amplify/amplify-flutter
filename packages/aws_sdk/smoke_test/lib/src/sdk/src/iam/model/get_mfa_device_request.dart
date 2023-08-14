// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_mfa_device_request.g.dart';

abstract class GetMfaDeviceRequest
    with
        _i1.HttpInput<GetMfaDeviceRequest>,
        _i2.AWSEquatable<GetMfaDeviceRequest>
    implements Built<GetMfaDeviceRequest, GetMfaDeviceRequestBuilder> {
  factory GetMfaDeviceRequest({
    required String serialNumber,
    String? userName,
  }) {
    return _$GetMfaDeviceRequest._(
      serialNumber: serialNumber,
      userName: userName,
    );
  }

  factory GetMfaDeviceRequest.build(
          [void Function(GetMfaDeviceRequestBuilder) updates]) =
      _$GetMfaDeviceRequest;

  const GetMfaDeviceRequest._();

  factory GetMfaDeviceRequest.fromRequest(
    GetMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetMfaDeviceRequest>> serializers = [
    GetMfaDeviceRequestAwsQuerySerializer()
  ];

  /// Serial number that uniquely identifies the MFA device. For this API, we only accept FIDO security key [ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html).
  String get serialNumber;

  /// The friendly name identifying the user.
  String? get userName;
  @override
  GetMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serialNumber,
        userName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetMfaDeviceRequest')
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'userName',
        userName,
      );
    return helper.toString();
  }
}

class GetMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetMfaDeviceRequest> {
  const GetMfaDeviceRequestAwsQuerySerializer() : super('GetMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        GetMfaDeviceRequest,
        _$GetMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetMfaDeviceRequestBuilder();
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
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserName':
          result.userName = (serializers.deserialize(
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
    GetMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetMfaDeviceRequest(:serialNumber, :userName) = object;
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    if (userName != null) {
      result$
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
