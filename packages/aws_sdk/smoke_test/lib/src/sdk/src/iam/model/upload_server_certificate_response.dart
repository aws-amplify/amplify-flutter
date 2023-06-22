// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.upload_server_certificate_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/server_certificate_metadata.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'upload_server_certificate_response.g.dart';

/// Contains the response to a successful UploadServerCertificate request.
abstract class UploadServerCertificateResponse
    with
        _i1.AWSEquatable<UploadServerCertificateResponse>
    implements
        Built<UploadServerCertificateResponse,
            UploadServerCertificateResponseBuilder> {
  /// Contains the response to a successful UploadServerCertificate request.
  factory UploadServerCertificateResponse({
    _i2.ServerCertificateMetadata? serverCertificateMetadata,
    List<_i3.Tag>? tags,
  }) {
    return _$UploadServerCertificateResponse._(
      serverCertificateMetadata: serverCertificateMetadata,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Contains the response to a successful UploadServerCertificate request.
  factory UploadServerCertificateResponse.build(
          [void Function(UploadServerCertificateResponseBuilder) updates]) =
      _$UploadServerCertificateResponse;

  const UploadServerCertificateResponse._();

  /// Constructs a [UploadServerCertificateResponse] from a [payload] and [response].
  factory UploadServerCertificateResponse.fromResponse(
    UploadServerCertificateResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer<UploadServerCertificateResponse>>
      serializers = [UploadServerCertificateResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UploadServerCertificateResponseBuilder b) {}

  /// The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.
  _i2.ServerCertificateMetadata? get serverCertificateMetadata;

  /// A list of tags that are attached to the new IAM server certificate. The returned list of tags is sorted by tag key. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        serverCertificateMetadata,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UploadServerCertificateResponse')
          ..add(
            'serverCertificateMetadata',
            serverCertificateMetadata,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class UploadServerCertificateResponseAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<UploadServerCertificateResponse> {
  const UploadServerCertificateResponseAwsQuerySerializer()
      : super('UploadServerCertificateResponse');

  @override
  Iterable<Type> get types => const [
        UploadServerCertificateResponse,
        _$UploadServerCertificateResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UploadServerCertificateResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UploadServerCertificateResponseBuilder();
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
    UploadServerCertificateResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'UploadServerCertificateResponseResponse',
        _i5.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UploadServerCertificateResponse(:serverCertificateMetadata, :tags) =
        object;
    if (serverCertificateMetadata != null) {
      result$
        ..add(const _i5.XmlElementName('ServerCertificateMetadata'))
        ..add(serializers.serialize(
          serverCertificateMetadata,
          specifiedType: const FullType(_i2.ServerCertificateMetadata),
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
