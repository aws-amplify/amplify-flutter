// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_server_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_server_certificate_request.g.dart';

abstract class GetServerCertificateRequest
    with
        _i1.HttpInput<GetServerCertificateRequest>,
        _i2.AWSEquatable<GetServerCertificateRequest>
    implements
        Built<GetServerCertificateRequest, GetServerCertificateRequestBuilder> {
  factory GetServerCertificateRequest({required String serverCertificateName}) {
    return _$GetServerCertificateRequest._(
        serverCertificateName: serverCertificateName);
  }

  factory GetServerCertificateRequest.build(
          [void Function(GetServerCertificateRequestBuilder) updates]) =
      _$GetServerCertificateRequest;

  const GetServerCertificateRequest._();

  factory GetServerCertificateRequest.fromRequest(
    GetServerCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetServerCertificateRequest>>
      serializers = [GetServerCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetServerCertificateRequestBuilder b) {}

  /// The name of the server certificate you want to retrieve information about.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serverCertificateName;
  @override
  GetServerCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [serverCertificateName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetServerCertificateRequest')
      ..add(
        'serverCertificateName',
        serverCertificateName,
      );
    return helper.toString();
  }
}

class GetServerCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetServerCertificateRequest> {
  const GetServerCertificateRequestAwsQuerySerializer()
      : super('GetServerCertificateRequest');

  @override
  Iterable<Type> get types => const [
        GetServerCertificateRequest,
        _$GetServerCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetServerCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetServerCertificateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServerCertificateName':
          result.serverCertificateName = (serializers.deserialize(
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
    GetServerCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetServerCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetServerCertificateRequest(:serverCertificateName) = object;
    result$
      ..add(const _i1.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        serverCertificateName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
