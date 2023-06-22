// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.upload_server_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'upload_server_certificate_request.g.dart';

abstract class UploadServerCertificateRequest
    with
        _i1.HttpInput<UploadServerCertificateRequest>,
        _i2.AWSEquatable<UploadServerCertificateRequest>
    implements
        Built<UploadServerCertificateRequest,
            UploadServerCertificateRequestBuilder> {
  factory UploadServerCertificateRequest({
    String? path,
    required String serverCertificateName,
    required String certificateBody,
    required String privateKey,
    String? certificateChain,
    List<_i3.Tag>? tags,
  }) {
    return _$UploadServerCertificateRequest._(
      path: path,
      serverCertificateName: serverCertificateName,
      certificateBody: certificateBody,
      privateKey: privateKey,
      certificateChain: certificateChain,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  factory UploadServerCertificateRequest.build(
          [void Function(UploadServerCertificateRequestBuilder) updates]) =
      _$UploadServerCertificateRequest;

  const UploadServerCertificateRequest._();

  factory UploadServerCertificateRequest.fromRequest(
    UploadServerCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UploadServerCertificateRequest>>
      serializers = [UploadServerCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadServerCertificateRequestBuilder b) {}

  /// The path for the server certificate. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  ///
  /// This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (`\\u0021`) through the DEL character (`\\u007F`), including most punctuation characters, digits, and upper and lowercased letters.
  ///
  /// If you are uploading a server certificate specifically for use with Amazon CloudFront distributions, you must specify a path using the `path` parameter. The path must begin with `/cloudfront` and must include a trailing slash (for example, `/cloudfront/test/`).
  String? get path;

  /// The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serverCertificateName;

  /// The contents of the public key certificate in PEM-encoded format.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get certificateBody;

  /// The contents of the private key in PEM-encoded format.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String get privateKey;

  /// The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.
  ///
  /// The [regex pattern](http://wikipedia.org/wiki/regex) used to validate this parameter is a string of characters consisting of the following:
  ///
  /// *   Any printable ASCII character ranging from the space character (`\\u0020`) through the end of the ASCII character range
  ///
  /// *   The printable characters in the Basic Latin and Latin-1 Supplement character set (through `\\u00FF`)
  ///
  /// *   The special characters tab (`\\u0009`), line feed (`\\u000A`), and carriage return (`\\u000D`)
  String? get certificateChain;

  /// A list of tags that you want to attach to the new IAM server certificate resource. Each tag consists of a key name and an associated value. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  ///
  /// If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request fails and the resource is not created.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  UploadServerCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        path,
        serverCertificateName,
        certificateBody,
        privateKey,
        certificateChain,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UploadServerCertificateRequest')
      ..add(
        'path',
        path,
      )
      ..add(
        'serverCertificateName',
        serverCertificateName,
      )
      ..add(
        'certificateBody',
        certificateBody,
      )
      ..add(
        'privateKey',
        '***SENSITIVE***',
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

class UploadServerCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UploadServerCertificateRequest> {
  const UploadServerCertificateRequestAwsQuerySerializer()
      : super('UploadServerCertificateRequest');

  @override
  Iterable<Type> get types => const [
        UploadServerCertificateRequest,
        _$UploadServerCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UploadServerCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadServerCertificateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ServerCertificateName':
          result.serverCertificateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CertificateBody':
          result.certificateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PrivateKey':
          result.privateKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CertificateChain':
          result.certificateChain = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.awsQueryList)
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
    UploadServerCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UploadServerCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadServerCertificateRequest(
      :path,
      :serverCertificateName,
      :certificateBody,
      :privateKey,
      :certificateChain,
      :tags
    ) = object;
    if (path != null) {
      result$
        ..add(const _i1.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        serverCertificateName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('CertificateBody'))
      ..add(serializers.serialize(
        certificateBody,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('PrivateKey'))
      ..add(serializers.serialize(
        privateKey,
        specifiedType: const FullType(String),
      ));
    if (certificateChain != null) {
      result$
        ..add(const _i1.XmlElementName('CertificateChain'))
        ..add(serializers.serialize(
          certificateChain,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i1.XmlElementName('Tags'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.awsQueryList)
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
