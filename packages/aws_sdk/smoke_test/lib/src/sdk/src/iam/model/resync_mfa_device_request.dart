// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.resync_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'resync_mfa_device_request.g.dart';

abstract class ResyncMfaDeviceRequest
    with
        _i1.HttpInput<ResyncMfaDeviceRequest>,
        _i2.AWSEquatable<ResyncMfaDeviceRequest>
    implements Built<ResyncMfaDeviceRequest, ResyncMfaDeviceRequestBuilder> {
  factory ResyncMfaDeviceRequest({
    required String userName,
    required String serialNumber,
    required String authenticationCode1,
    required String authenticationCode2,
  }) {
    return _$ResyncMfaDeviceRequest._(
      userName: userName,
      serialNumber: serialNumber,
      authenticationCode1: authenticationCode1,
      authenticationCode2: authenticationCode2,
    );
  }

  factory ResyncMfaDeviceRequest.build(
          [void Function(ResyncMfaDeviceRequestBuilder) updates]) =
      _$ResyncMfaDeviceRequest;

  const ResyncMfaDeviceRequest._();

  factory ResyncMfaDeviceRequest.fromRequest(
    ResyncMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ResyncMfaDeviceRequest>> serializers =
      [ResyncMfaDeviceRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResyncMfaDeviceRequestBuilder b) {}

  /// The name of the user whose MFA device you want to resynchronize.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get userName;

  /// Serial number that uniquely identifies the MFA device.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serialNumber;

  /// An authentication code emitted by the device.
  ///
  /// The format for this parameter is a sequence of six digits.
  String get authenticationCode1;

  /// A subsequent authentication code emitted by the device.
  ///
  /// The format for this parameter is a sequence of six digits.
  String get authenticationCode2;
  @override
  ResyncMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        serialNumber,
        authenticationCode1,
        authenticationCode2,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResyncMfaDeviceRequest')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'authenticationCode1',
        authenticationCode1,
      )
      ..add(
        'authenticationCode2',
        authenticationCode2,
      );
    return helper.toString();
  }
}

class ResyncMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ResyncMfaDeviceRequest> {
  const ResyncMfaDeviceRequestAwsQuerySerializer()
      : super('ResyncMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        ResyncMfaDeviceRequest,
        _$ResyncMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResyncMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResyncMfaDeviceRequestBuilder();
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
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthenticationCode1':
          result.authenticationCode1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AuthenticationCode2':
          result.authenticationCode2 = (serializers.deserialize(
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
    ResyncMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ResyncMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ResyncMfaDeviceRequest(
      :userName,
      :serialNumber,
      :authenticationCode1,
      :authenticationCode2
    ) = object;
    result$
      ..add(const _i1.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('AuthenticationCode1'))
      ..add(serializers.serialize(
        authenticationCode1,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('AuthenticationCode2'))
      ..add(serializers.serialize(
        authenticationCode2,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
