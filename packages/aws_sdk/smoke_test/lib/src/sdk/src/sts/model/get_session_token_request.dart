// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.get_session_token_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_session_token_request.g.dart';

abstract class GetSessionTokenRequest
    with
        _i1.HttpInput<GetSessionTokenRequest>,
        _i2.AWSEquatable<GetSessionTokenRequest>
    implements Built<GetSessionTokenRequest, GetSessionTokenRequestBuilder> {
  factory GetSessionTokenRequest({
    int? durationSeconds,
    String? serialNumber,
    String? tokenCode,
  }) {
    return _$GetSessionTokenRequest._(
      durationSeconds: durationSeconds,
      serialNumber: serialNumber,
      tokenCode: tokenCode,
    );
  }

  factory GetSessionTokenRequest.build(
          [void Function(GetSessionTokenRequestBuilder) updates]) =
      _$GetSessionTokenRequest;

  const GetSessionTokenRequest._();

  factory GetSessionTokenRequest.fromRequest(
    GetSessionTokenRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetSessionTokenRequest>> serializers =
      [GetSessionTokenRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSessionTokenRequestBuilder b) {}

  /// The duration, in seconds, that the credentials should remain valid. Acceptable durations for IAM user sessions range from 900 seconds (15 minutes) to 129,600 seconds (36 hours), with 43,200 seconds (12 hours) as the default. Sessions for Amazon Web Services account owners are restricted to a maximum of 3,600 seconds (one hour). If the duration is longer than one hour, the session for Amazon Web Services account owners defaults to one hour.
  int? get durationSeconds;

  /// The identification number of the MFA device that is associated with the IAM user who is making the `GetSessionToken` call. Specify this value if the IAM user has a policy that requires MFA authentication. The value is either the serial number for a hardware device (such as `GAHT12345678`) or an Amazon Resource Name (ARN) for a virtual device (such as `arn:aws:iam::123456789012:mfa/user`). You can find the device for an IAM user by going to the Amazon Web Services Management Console and viewing the user's security credentials.
  ///
  /// The regex used to validate this parameter is a string of characters consisting of upper- and lower-case alphanumeric characters with no spaces. You can also include underscores or any of the following characters: =,.@:/-
  String? get serialNumber;

  /// The value provided by the MFA device, if MFA is required. If any policy requires the IAM user to submit an MFA code, specify this value. If MFA authentication is required, the user must provide a code when requesting a set of temporary security credentials. A user who fails to provide the code receives an "access denied" response when requesting resources that require MFA authentication.
  ///
  /// The format for this parameter, as described by its regex pattern, is a sequence of six numeric digits.
  String? get tokenCode;
  @override
  GetSessionTokenRequest getPayload() => this;
  @override
  List<Object?> get props => [
        durationSeconds,
        serialNumber,
        tokenCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSessionTokenRequest')
      ..add(
        'durationSeconds',
        durationSeconds,
      )
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'tokenCode',
        tokenCode,
      );
    return helper.toString();
  }
}

class GetSessionTokenRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetSessionTokenRequest> {
  const GetSessionTokenRequestAwsQuerySerializer()
      : super('GetSessionTokenRequest');

  @override
  Iterable<Type> get types => const [
        GetSessionTokenRequest,
        _$GetSessionTokenRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSessionTokenRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSessionTokenRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DurationSeconds':
          result.durationSeconds = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TokenCode':
          result.tokenCode = (serializers.deserialize(
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
    GetSessionTokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetSessionTokenRequestResponse',
        _i1.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final GetSessionTokenRequest(:durationSeconds, :serialNumber, :tokenCode) =
        object;
    if (durationSeconds != null) {
      result$
        ..add(const _i1.XmlElementName('DurationSeconds'))
        ..add(serializers.serialize(
          durationSeconds,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (serialNumber != null) {
      result$
        ..add(const _i1.XmlElementName('SerialNumber'))
        ..add(serializers.serialize(
          serialNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (tokenCode != null) {
      result$
        ..add(const _i1.XmlElementName('TokenCode'))
        ..add(serializers.serialize(
          tokenCode,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
