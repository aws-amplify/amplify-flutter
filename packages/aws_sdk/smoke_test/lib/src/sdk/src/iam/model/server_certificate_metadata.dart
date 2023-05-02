// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.server_certificate_metadata; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'server_certificate_metadata.g.dart';

/// Contains information about a server certificate without its certificate body, certificate chain, and private key.
///
/// This data type is used as a response element in the UploadServerCertificate and ListServerCertificates operations.
abstract class ServerCertificateMetadata
    with _i1.AWSEquatable<ServerCertificateMetadata>
    implements
        Built<ServerCertificateMetadata, ServerCertificateMetadataBuilder> {
  /// Contains information about a server certificate without its certificate body, certificate chain, and private key.
  ///
  /// This data type is used as a response element in the UploadServerCertificate and ListServerCertificates operations.
  factory ServerCertificateMetadata({
    required String path,
    required String serverCertificateName,
    required String serverCertificateId,
    required String arn,
    DateTime? uploadDate,
    DateTime? expiration,
  }) {
    return _$ServerCertificateMetadata._(
      path: path,
      serverCertificateName: serverCertificateName,
      serverCertificateId: serverCertificateId,
      arn: arn,
      uploadDate: uploadDate,
      expiration: expiration,
    );
  }

  /// Contains information about a server certificate without its certificate body, certificate chain, and private key.
  ///
  /// This data type is used as a response element in the UploadServerCertificate and ListServerCertificates operations.
  factory ServerCertificateMetadata.build(
          [void Function(ServerCertificateMetadataBuilder) updates]) =
      _$ServerCertificateMetadata;

  const ServerCertificateMetadata._();

  static const List<_i2.SmithySerializer> serializers = [
    ServerCertificateMetadataAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerCertificateMetadataBuilder b) {}

  /// The path to the server certificate. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get path;

  /// The name that identifies the server certificate.
  String get serverCertificateName;

  /// The stable and unique string identifying the server certificate. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get serverCertificateId;

  /// The Amazon Resource Name (ARN) specifying the server certificate. For more information about ARNs and how to use them in policies, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String get arn;

  /// The date when the server certificate was uploaded.
  DateTime? get uploadDate;

  /// The date on which the certificate is set to expire.
  DateTime? get expiration;
  @override
  List<Object?> get props => [
        path,
        serverCertificateName,
        serverCertificateId,
        arn,
        uploadDate,
        expiration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServerCertificateMetadata');
    helper.add(
      'path',
      path,
    );
    helper.add(
      'serverCertificateName',
      serverCertificateName,
    );
    helper.add(
      'serverCertificateId',
      serverCertificateId,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'uploadDate',
      uploadDate,
    );
    helper.add(
      'expiration',
      expiration,
    );
    return helper.toString();
  }
}

class ServerCertificateMetadataAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ServerCertificateMetadata> {
  const ServerCertificateMetadataAwsQuerySerializer()
      : super('ServerCertificateMetadata');

  @override
  Iterable<Type> get types => const [
        ServerCertificateMetadata,
        _$ServerCertificateMetadata,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServerCertificateMetadata deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerCertificateMetadataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Path':
          result.path = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServerCertificateName':
          result.serverCertificateName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServerCertificateId':
          result.serverCertificateId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Arn':
          result.arn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'UploadDate':
          if (value != null) {
            result.uploadDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Expiration':
          if (value != null) {
            result.expiration = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
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
    final payload = (object as ServerCertificateMetadata);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ServerCertificateMetadataResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Path'))
      ..add(serializers.serialize(
        payload.path,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        payload.serverCertificateName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('ServerCertificateId'))
      ..add(serializers.serialize(
        payload.serverCertificateId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('Arn'))
      ..add(serializers.serialize(
        payload.arn,
        specifiedType: const FullType(String),
      ));
    if (payload.uploadDate != null) {
      result
        ..add(const _i2.XmlElementName('UploadDate'))
        ..add(serializers.serialize(
          payload.uploadDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.expiration != null) {
      result
        ..add(const _i2.XmlElementName('Expiration'))
        ..add(serializers.serialize(
          payload.expiration!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
