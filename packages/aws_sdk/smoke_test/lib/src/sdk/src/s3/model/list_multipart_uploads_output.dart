// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.list_multipart_uploads_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/multipart_upload.dart' as _i2;

part 'list_multipart_uploads_output.g.dart';

abstract class ListMultipartUploadsOutput
    with _i1.AWSEquatable<ListMultipartUploadsOutput>
    implements
        Built<ListMultipartUploadsOutput, ListMultipartUploadsOutputBuilder> {
  factory ListMultipartUploadsOutput({
    String? bucket,
    String? keyMarker,
    String? uploadIdMarker,
    String? nextKeyMarker,
    String? prefix,
    String? delimiter,
    String? nextUploadIdMarker,
    int? maxUploads,
    bool? isTruncated,
    List<_i2.MultipartUpload>? uploads,
    List<_i3.CommonPrefix>? commonPrefixes,
    _i4.EncodingType? encodingType,
  }) {
    return _$ListMultipartUploadsOutput._(
      bucket: bucket,
      keyMarker: keyMarker,
      uploadIdMarker: uploadIdMarker,
      nextKeyMarker: nextKeyMarker,
      prefix: prefix,
      delimiter: delimiter,
      nextUploadIdMarker: nextUploadIdMarker,
      maxUploads: maxUploads,
      isTruncated: isTruncated,
      uploads: uploads == null ? null : _i5.BuiltList(uploads),
      commonPrefixes:
          commonPrefixes == null ? null : _i5.BuiltList(commonPrefixes),
      encodingType: encodingType,
    );
  }

  factory ListMultipartUploadsOutput.build(
          [void Function(ListMultipartUploadsOutputBuilder) updates]) =
      _$ListMultipartUploadsOutput;

  const ListMultipartUploadsOutput._();

  /// Constructs a [ListMultipartUploadsOutput] from a [payload] and [response].
  factory ListMultipartUploadsOutput.fromResponse(
    ListMultipartUploadsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    ListMultipartUploadsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListMultipartUploadsOutputBuilder b) {}

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  String? get bucket;

  /// The key at or after which the listing began.
  String? get keyMarker;

  /// Upload ID after which listing began.
  String? get uploadIdMarker;

  /// When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.
  String? get nextKeyMarker;

  /// When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.
  String? get prefix;

  /// Contains the delimiter you specified in the request. If you don't specify a delimiter in your request, this element is absent from the response.
  String? get delimiter;

  /// When a list is truncated, this element specifies the value that should be used for the `upload-id-marker` request parameter in a subsequent request.
  String? get nextUploadIdMarker;

  /// Maximum number of multipart uploads that could have been included in the response.
  int? get maxUploads;

  /// Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.
  bool? get isTruncated;

  /// Container for elements related to a particular multipart upload. A response can contain zero or more `Upload` elements.
  _i5.BuiltList<_i2.MultipartUpload>? get uploads;

  /// If you specify a delimiter in the request, then the result returns each distinct key prefix containing the delimiter in a `CommonPrefixes` element. The distinct key prefixes are returned in the `Prefix` child element.
  _i5.BuiltList<_i3.CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  ///
  /// If you specify `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `Delimiter`, `KeyMarker`, `Prefix`, `NextKeyMarker`, `Key`.
  _i4.EncodingType? get encodingType;
  @override
  List<Object?> get props => [
        bucket,
        keyMarker,
        uploadIdMarker,
        nextKeyMarker,
        prefix,
        delimiter,
        nextUploadIdMarker,
        maxUploads,
        isTruncated,
        uploads,
        commonPrefixes,
        encodingType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListMultipartUploadsOutput');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'keyMarker',
      keyMarker,
    );
    helper.add(
      'uploadIdMarker',
      uploadIdMarker,
    );
    helper.add(
      'nextKeyMarker',
      nextKeyMarker,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'delimiter',
      delimiter,
    );
    helper.add(
      'nextUploadIdMarker',
      nextUploadIdMarker,
    );
    helper.add(
      'maxUploads',
      maxUploads,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'uploads',
      uploads,
    );
    helper.add(
      'commonPrefixes',
      commonPrefixes,
    );
    helper.add(
      'encodingType',
      encodingType,
    );
    return helper.toString();
  }
}

class ListMultipartUploadsOutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<ListMultipartUploadsOutput> {
  const ListMultipartUploadsOutputRestXmlSerializer()
      : super('ListMultipartUploadsOutput');

  @override
  Iterable<Type> get types => const [
        ListMultipartUploadsOutput,
        _$ListMultipartUploadsOutput,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListMultipartUploadsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMultipartUploadsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Bucket':
          if (value != null) {
            result.bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CommonPrefixes':
          if (value != null) {
            result.commonPrefixes.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CommonPrefix),
            ) as _i3.CommonPrefix));
          }
          break;
        case 'Delimiter':
          if (value != null) {
            result.delimiter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EncodingType':
          if (value != null) {
            result.encodingType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.EncodingType),
            ) as _i4.EncodingType);
          }
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'KeyMarker':
          if (value != null) {
            result.keyMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxUploads':
          if (value != null) {
            result.maxUploads = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'NextKeyMarker':
          if (value != null) {
            result.nextKeyMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NextUploadIdMarker':
          if (value != null) {
            result.nextUploadIdMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UploadIdMarker':
          if (value != null) {
            result.uploadIdMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Upload':
          if (value != null) {
            result.uploads.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MultipartUpload),
            ) as _i2.MultipartUpload));
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
    final payload = (object as ListMultipartUploadsOutput);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ListMultipartUploadsResult',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.bucket != null) {
      result
        ..add(const _i6.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          payload.bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.commonPrefixes != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        payload.commonPrefixes!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.CommonPrefix)],
        ),
      ));
    }
    if (payload.delimiter != null) {
      result
        ..add(const _i6.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          payload.delimiter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.encodingType != null) {
      result
        ..add(const _i6.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          payload.encodingType!,
          specifiedType: const FullType.nullable(_i4.EncodingType),
        ));
    }
    if (payload.isTruncated != null) {
      result
        ..add(const _i6.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.keyMarker != null) {
      result
        ..add(const _i6.XmlElementName('KeyMarker'))
        ..add(serializers.serialize(
          payload.keyMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxUploads != null) {
      result
        ..add(const _i6.XmlElementName('MaxUploads'))
        ..add(serializers.serialize(
          payload.maxUploads!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.nextKeyMarker != null) {
      result
        ..add(const _i6.XmlElementName('NextKeyMarker'))
        ..add(serializers.serialize(
          payload.nextKeyMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextUploadIdMarker != null) {
      result
        ..add(const _i6.XmlElementName('NextUploadIdMarker'))
        ..add(serializers.serialize(
          payload.nextUploadIdMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i6.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.uploadIdMarker != null) {
      result
        ..add(const _i6.XmlElementName('UploadIdMarker'))
        ..add(serializers.serialize(
          payload.uploadIdMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.uploads != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'Upload').serialize(
        serializers,
        payload.uploads!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i2.MultipartUpload)],
        ),
      ));
    }
    return result;
  }
}
