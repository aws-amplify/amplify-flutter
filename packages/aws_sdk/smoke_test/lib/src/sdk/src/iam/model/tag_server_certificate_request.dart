// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.tag_server_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'tag_server_certificate_request.g.dart';

abstract class TagServerCertificateRequest
    with
        _i1.HttpInput<TagServerCertificateRequest>,
        _i2.AWSEquatable<TagServerCertificateRequest>
    implements
        Built<TagServerCertificateRequest, TagServerCertificateRequestBuilder> {
  factory TagServerCertificateRequest({
    required String serverCertificateName,
    required List<_i3.Tag> tags,
  }) {
    return _$TagServerCertificateRequest._(
      serverCertificateName: serverCertificateName,
      tags: _i4.BuiltList(tags),
    );
  }

  factory TagServerCertificateRequest.build(
          [void Function(TagServerCertificateRequestBuilder) updates]) =
      _$TagServerCertificateRequest;

  const TagServerCertificateRequest._();

  factory TagServerCertificateRequest.fromRequest(
    TagServerCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TagServerCertificateRequest>>
      serializers = [TagServerCertificateRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagServerCertificateRequestBuilder b) {}

  /// The name of the IAM server certificate to which you want to add tags.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serverCertificateName;

  /// The list of tags that you want to attach to the IAM server certificate. Each tag consists of a key name and an associated value.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  TagServerCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serverCertificateName,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagServerCertificateRequest')
      ..add(
        'serverCertificateName',
        serverCertificateName,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagServerCertificateRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<TagServerCertificateRequest> {
  const TagServerCertificateRequestAwsQuerySerializer()
      : super('TagServerCertificateRequest');

  @override
  Iterable<Type> get types => const [
        TagServerCertificateRequest,
        _$TagServerCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TagServerCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagServerCertificateRequestBuilder();
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
    TagServerCertificateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'TagServerCertificateRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final TagServerCertificateRequest(:serverCertificateName, :tags) = object;
    result$
      ..add(const _i1.XmlElementName('ServerCertificateName'))
      ..add(serializers.serialize(
        serverCertificateName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('Tags'))
      ..add(
          const _i1.XmlBuiltListSerializer(indexer: _i1.XmlIndexer.awsQueryList)
              .serialize(
        serializers,
        tags,
        specifiedType: const FullType.nullable(
          _i4.BuiltList,
          [FullType(_i3.Tag)],
        ),
      ));
    return result$;
  }
}
