// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.completed_multipart_upload; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/completed_part.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'completed_multipart_upload.g.dart';

/// The container for the completed multipart upload details.
abstract class CompletedMultipartUpload
    with _i1.AWSEquatable<CompletedMultipartUpload>
    implements
        Built<CompletedMultipartUpload, CompletedMultipartUploadBuilder> {
  /// The container for the completed multipart upload details.
  factory CompletedMultipartUpload({List<_i2.CompletedPart>? parts}) {
    return _$CompletedMultipartUpload._(
        parts: parts == null ? null : _i3.BuiltList(parts));
  }

  /// The container for the completed multipart upload details.
  factory CompletedMultipartUpload.build(
          [void Function(CompletedMultipartUploadBuilder) updates]) =
      _$CompletedMultipartUpload;

  const CompletedMultipartUpload._();

  static const List<_i4.SmithySerializer<CompletedMultipartUpload>>
      serializers = [CompletedMultipartUploadRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CompletedMultipartUploadBuilder b) {}

  /// Array of CompletedPart data types.
  ///
  /// If you do not supply a valid `Part` with your request, the service sends back an HTTP 400 response.
  _i3.BuiltList<_i2.CompletedPart>? get parts;
  @override
  List<Object?> get props => [parts];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CompletedMultipartUpload')
      ..add(
        'parts',
        parts,
      );
    return helper.toString();
  }
}

class CompletedMultipartUploadRestXmlSerializer
    extends _i4.StructuredSmithySerializer<CompletedMultipartUpload> {
  const CompletedMultipartUploadRestXmlSerializer()
      : super('CompletedMultipartUpload');

  @override
  Iterable<Type> get types => const [
        CompletedMultipartUpload,
        _$CompletedMultipartUpload,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CompletedMultipartUpload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompletedMultipartUploadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Part':
          result.parts.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.CompletedPart),
          ) as _i2.CompletedPart));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CompletedMultipartUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'CompletedMultipartUpload',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final CompletedMultipartUpload(:parts) = object;
    if (parts != null) {
      result$.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'Part').serialize(
        serializers,
        parts,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.CompletedPart)],
        ),
      ));
    }
    return result$;
  }
}
