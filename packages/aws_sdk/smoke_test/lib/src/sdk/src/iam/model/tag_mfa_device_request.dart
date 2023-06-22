// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.tag_mfa_device_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i3;

part 'tag_mfa_device_request.g.dart';

abstract class TagMfaDeviceRequest
    with
        _i1.HttpInput<TagMfaDeviceRequest>,
        _i2.AWSEquatable<TagMfaDeviceRequest>
    implements Built<TagMfaDeviceRequest, TagMfaDeviceRequestBuilder> {
  factory TagMfaDeviceRequest({
    required String serialNumber,
    required List<_i3.Tag> tags,
  }) {
    return _$TagMfaDeviceRequest._(
      serialNumber: serialNumber,
      tags: _i4.BuiltList(tags),
    );
  }

  factory TagMfaDeviceRequest.build(
          [void Function(TagMfaDeviceRequestBuilder) updates]) =
      _$TagMfaDeviceRequest;

  const TagMfaDeviceRequest._();

  factory TagMfaDeviceRequest.fromRequest(
    TagMfaDeviceRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<TagMfaDeviceRequest>> serializers = [
    TagMfaDeviceRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TagMfaDeviceRequestBuilder b) {}

  /// The unique identifier for the IAM virtual MFA device to which you want to add tags. For virtual MFA devices, the serial number is the same as the ARN.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get serialNumber;

  /// The list of tags that you want to attach to the IAM virtual MFA device. Each tag consists of a key name and an associated value.
  _i4.BuiltList<_i3.Tag> get tags;
  @override
  TagMfaDeviceRequest getPayload() => this;
  @override
  List<Object?> get props => [
        serialNumber,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TagMfaDeviceRequest')
      ..add(
        'serialNumber',
        serialNumber,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TagMfaDeviceRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<TagMfaDeviceRequest> {
  const TagMfaDeviceRequestAwsQuerySerializer() : super('TagMfaDeviceRequest');

  @override
  Iterable<Type> get types => const [
        TagMfaDeviceRequest,
        _$TagMfaDeviceRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TagMfaDeviceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagMfaDeviceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SerialNumber':
          result.serialNumber = (serializers.deserialize(
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
    TagMfaDeviceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'TagMfaDeviceRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final TagMfaDeviceRequest(:serialNumber, :tags) = object;
    result$
      ..add(const _i1.XmlElementName('SerialNumber'))
      ..add(serializers.serialize(
        serialNumber,
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
