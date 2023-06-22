// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_server_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_server_certificate_request.g.dart';

abstract class DeleteServerCertificateRequest
    with
        _i1.HttpInput<DeleteServerCertificateRequest>,
        _i2.AWSEquatable<DeleteServerCertificateRequest>
    implements
        Built<DeleteServerCertificateRequest,
            DeleteServerCertificateRequestBuilder> {
  factory DeleteServerCertificateRequest(
      {required String serverCertificateName}) {
    return _$DeleteServerCertificateRequest._(
        serverCertificateName: serverCertificateName);
  }

  factory DeleteServerCertificateRequest.build(
          [void Function(DeleteServerCertificateRequestBuilder) updates]) =
      _$DeleteServerCertificateRequest;

  const DeleteServerCertificateRequest._();

  factory DeleteServerCertificateRequest.fromRequest(
    DeleteServerCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteServerCertificateRequest>>
      serializers = [DeleteServerCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteServerCertificateRequestBuilder b) {}

  /// The name of the server certificate you want to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serverCertificateName;
  @override
  DeleteServerCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [serverCertificateName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteServerCertificateRequest')
      ..add(
        'serverCertificateName',
        serverCertificateName,
      );
    return helper.toString();
  }
}

class DeleteServerCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteServerCertificateRequest> {
  const DeleteServerCertificateRequestAwsQuerySerializer()
      : super('DeleteServerCertificateRequest');

  @override
  Iterable<Type> get types => const [
        DeleteServerCertificateRequest,
        _$DeleteServerCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteServerCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteServerCertificateRequestBuilder();
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
    DeleteServerCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteServerCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteServerCertificateRequest(:serverCertificateName) = object;
    result$
      ..add(const _i1.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        serverCertificateName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
