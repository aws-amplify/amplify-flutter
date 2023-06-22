// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.server_certificate; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'server_certificate.g.dart';

/// Contains information about a server certificate.
///
/// This data type is used as a response element in the GetServerCertificate operation.
abstract class ServerCertificate
    with _i1.AWSEquatable<ServerCertificate>
    implements Built<ServerCertificate, ServerCertificateBuilder> {
  /// Contains information about a server certificate.
  ///
  /// This data type is used as a response element in the GetServerCertificate operation.
  factory ServerCertificate({
    required _i2.ServerCertificateMetadata serverCertificateMetadata,
    required String certificateBody,
    String? certificateChain,
    List<_i3.Tag>? tags,
  }) {
    return _$ServerCertificate._(
      serverCertificateMetadata: serverCertificateMetadata,
      certificateBody: certificateBody,
      certificateChain: certificateChain,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Contains information about a server certificate.
  ///
  /// This data type is used as a response element in the GetServerCertificate operation.
  factory ServerCertificate.build(
      [void Function(ServerCertificateBuilder) updates]) = _$ServerCertificate;

  const ServerCertificate._();

  static const List<_i5.SmithySerializer<ServerCertificate>> serializers = [
    ServerCertificateAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServerCertificateBuilder b) {}

  /// The meta information of the server certificate, such as its name, path, ID, and ARN.
  _i2.ServerCertificateMetadata get serverCertificateMetadata;

  /// The contents of the public key certificate.
  String get certificateBody;

  /// The contents of the public key certificate chain.
  String? get certificateChain;

  /// A list of tags that are attached to the server certificate. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        serverCertificateMetadata,
        certificateBody,
        certificateChain,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServerCertificate')
      ..add(
        'serverCertificateMetadata',
        serverCertificateMetadata,
      )
      ..add(
        'certificateBody',
        certificateBody,
      )
      ..add(
        'certificateChain',
        certificateChain,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class ServerCertificateAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<ServerCertificate> {
  const ServerCertificateAwsQuerySerializer() : super('ServerCertificate');

  @override
  Iterable<Type> get types => const [
        ServerCertificate,
        _$ServerCertificate,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ServerCertificate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServerCertificateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ServerCertificateMetadata':
          result.serverCertificateMetadata.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ServerCertificateMetadata),
          ) as _i2.ServerCertificateMetadata));
        case 'CertificateBody':
          result.certificateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CertificateChain':
          result.certificateChain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Tag)],
            ),
          ) as _i4.BuiltList<_i3.Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ServerCertificate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'ServerCertificateResponse',
        _i5.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ServerCertificate(
      :serverCertificateMetadata,
      :certificateBody,
      :certificateChain,
      :tags
    ) = object;
    result$
      ..add(const _i5.XmlElementName('ServerCertificateMetadata'))
      ..add(serializers.serialize(
        serverCertificateMetadata,
        specifiedType: const FullType(_i2.ServerCertificateMetadata),
      ));
    result$
      ..add(const _i5.XmlElementName('CertificateBody'))
      ..add(serializers.serialize(
        certificateBody,
        specifiedType: const FullType(String),
      ));
    if (certificateChain != null) {
      result$
        ..add(const _i5.XmlElementName('CertificateChain'))
        ..add(serializers.serialize(
          certificateChain,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i5.XmlElementName('Tags'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result$;
  }
}
