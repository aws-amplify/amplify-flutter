// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_server_certificate_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate.dart'
    as _i2;

part 'get_server_certificate_response.g.dart';

/// Contains the response to a successful GetServerCertificate request.
abstract class GetServerCertificateResponse
    with
        _i1.AWSEquatable<GetServerCertificateResponse>
    implements
        Built<GetServerCertificateResponse,
            GetServerCertificateResponseBuilder> {
  /// Contains the response to a successful GetServerCertificate request.
  factory GetServerCertificateResponse(
      {required _i2.ServerCertificate serverCertificate}) {
    return _$GetServerCertificateResponse._(
        serverCertificate: serverCertificate);
  }

  /// Contains the response to a successful GetServerCertificate request.
  factory GetServerCertificateResponse.build(
          [void Function(GetServerCertificateResponseBuilder) updates]) =
      _$GetServerCertificateResponse;

  const GetServerCertificateResponse._();

  /// Constructs a [GetServerCertificateResponse] from a [payload] and [response].
  factory GetServerCertificateResponse.fromResponse(
    GetServerCertificateResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetServerCertificateResponse>>
      serializers = [GetServerCertificateResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServerCertificateResponseBuilder b) {}

  /// A structure containing details about the server certificate.
  _i2.ServerCertificate get serverCertificate;
  @override
  List<Object?> get props => [serverCertificate];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetServerCertificateResponse')
      ..add(
        'serverCertificate',
        serverCertificate,
      );
    return helper.toString();
  }
}

class GetServerCertificateResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetServerCertificateResponse> {
  const GetServerCertificateResponseAwsQuerySerializer()
      : super('GetServerCertificateResponse');

  @override
  Iterable<Type> get types => const [
        GetServerCertificateResponse,
        _$GetServerCertificateResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServerCertificateResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServerCertificateResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServerCertificate':
          result.serverCertificate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ServerCertificate),
          ) as _i2.ServerCertificate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetServerCertificateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetServerCertificateResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServerCertificateResponse(:serverCertificate) = object;
    result$
      ..add(const _i3.XmlElementName('ServerCertificate'))
      ..add(serializers.serialize(
        serverCertificate,
        specifiedType: const FullType(_i2.ServerCertificate),
      ));
    return result$;
  }
}
