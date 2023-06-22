// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.list_multipart_uploads_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i8;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/multipart_upload.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i6;

part 'list_multipart_uploads_output.g.dart';

abstract class ListMultipartUploadsOutput
    with _i1.AWSEquatable<ListMultipartUploadsOutput>
    implements
        Built<ListMultipartUploadsOutput, ListMultipartUploadsOutputBuilder>,
        _i2.HasPayload<ListMultipartUploadsOutputPayload> {
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
    List<_i3.MultipartUpload>? uploads,
    List<_i4.CommonPrefix>? commonPrefixes,
    _i5.EncodingType? encodingType,
    _i6.RequestCharged? requestCharged,
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
      uploads: uploads == null ? null : _i7.BuiltList(uploads),
      commonPrefixes:
          commonPrefixes == null ? null : _i7.BuiltList(commonPrefixes),
      encodingType: encodingType,
      requestCharged: requestCharged,
    );
  }

  factory ListMultipartUploadsOutput.build(
          [void Function(ListMultipartUploadsOutputBuilder) updates]) =
      _$ListMultipartUploadsOutput;

  const ListMultipartUploadsOutput._();

  /// Constructs a [ListMultipartUploadsOutput] from a [payload] and [response].
  factory ListMultipartUploadsOutput.fromResponse(
    ListMultipartUploadsOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      ListMultipartUploadsOutput.build((b) {
        b.bucket = payload.bucket;
        if (payload.commonPrefixes != null) {
          b.commonPrefixes.replace(payload.commonPrefixes!);
        }
        b.delimiter = payload.delimiter;
        b.encodingType = payload.encodingType;
        b.isTruncated = payload.isTruncated;
        b.keyMarker = payload.keyMarker;
        b.maxUploads = payload.maxUploads;
        b.nextKeyMarker = payload.nextKeyMarker;
        b.nextUploadIdMarker = payload.nextUploadIdMarker;
        b.prefix = payload.prefix;
        b.uploadIdMarker = payload.uploadIdMarker;
        if (payload.uploads != null) {
          b.uploads.replace(payload.uploads!);
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i6.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<ListMultipartUploadsOutputPayload>>
      serializers = [ListMultipartUploadsOutputRestXmlSerializer()];

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
  _i7.BuiltList<_i3.MultipartUpload>? get uploads;

  /// If you specify a delimiter in the request, then the result returns each distinct key prefix containing the delimiter in a `CommonPrefixes` element. The distinct key prefixes are returned in the `Prefix` child element.
  _i7.BuiltList<_i4.CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  ///
  /// If you specify `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `Delimiter`, `KeyMarker`, `Prefix`, `NextKeyMarker`, `Key`.
  _i5.EncodingType? get encodingType;

  /// If present, indicates that the requester was successfully charged for the request.
  _i6.RequestCharged? get requestCharged;
  @override
  ListMultipartUploadsOutputPayload getPayload() =>
      ListMultipartUploadsOutputPayload((b) {
        b.bucket = bucket;
        if (commonPrefixes != null) {
          b.commonPrefixes.replace(commonPrefixes!);
        }
        b.delimiter = delimiter;
        b.encodingType = encodingType;
        b.isTruncated = isTruncated;
        b.keyMarker = keyMarker;
        b.maxUploads = maxUploads;
        b.nextKeyMarker = nextKeyMarker;
        b.nextUploadIdMarker = nextUploadIdMarker;
        b.prefix = prefix;
        b.uploadIdMarker = uploadIdMarker;
        if (uploads != null) {
          b.uploads.replace(uploads!);
        }
      });
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
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListMultipartUploadsOutput')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'keyMarker',
        keyMarker,
      )
      ..add(
        'uploadIdMarker',
        uploadIdMarker,
      )
      ..add(
        'nextKeyMarker',
        nextKeyMarker,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'delimiter',
        delimiter,
      )
      ..add(
        'nextUploadIdMarker',
        nextUploadIdMarker,
      )
      ..add(
        'maxUploads',
        maxUploads,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'uploads',
        uploads,
      )
      ..add(
        'commonPrefixes',
        commonPrefixes,
      )
      ..add(
        'encodingType',
        encodingType,
      )
      ..add(
        'requestCharged',
        requestCharged,
      );
    return helper.toString();
  }
}

@_i8.internal
abstract class ListMultipartUploadsOutputPayload
    with
        _i1.AWSEquatable<ListMultipartUploadsOutputPayload>
    implements
        Built<ListMultipartUploadsOutputPayload,
            ListMultipartUploadsOutputPayloadBuilder> {
  factory ListMultipartUploadsOutputPayload(
          [void Function(ListMultipartUploadsOutputPayloadBuilder) updates]) =
      _$ListMultipartUploadsOutputPayload;

  const ListMultipartUploadsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListMultipartUploadsOutputPayloadBuilder b) {}

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  String? get bucket;

  /// If you specify a delimiter in the request, then the result returns each distinct key prefix containing the delimiter in a `CommonPrefixes` element. The distinct key prefixes are returned in the `Prefix` child element.
  _i7.BuiltList<_i4.CommonPrefix>? get commonPrefixes;

  /// Contains the delimiter you specified in the request. If you don't specify a delimiter in your request, this element is absent from the response.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  ///
  /// If you specify `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `Delimiter`, `KeyMarker`, `Prefix`, `NextKeyMarker`, `Key`.
  _i5.EncodingType? get encodingType;

  /// Indicates whether the returned list of multipart uploads is truncated. A value of true indicates that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the limit allowed or specified by max uploads.
  bool? get isTruncated;

  /// The key at or after which the listing began.
  String? get keyMarker;

  /// Maximum number of multipart uploads that could have been included in the response.
  int? get maxUploads;

  /// When a list is truncated, this element specifies the value that should be used for the key-marker request parameter in a subsequent request.
  String? get nextKeyMarker;

  /// When a list is truncated, this element specifies the value that should be used for the `upload-id-marker` request parameter in a subsequent request.
  String? get nextUploadIdMarker;

  /// When a prefix is provided in the request, this field contains the specified prefix. The result contains only keys starting with the specified prefix.
  String? get prefix;

  /// Upload ID after which listing began.
  String? get uploadIdMarker;

  /// Container for elements related to a particular multipart upload. A response can contain zero or more `Upload` elements.
  _i7.BuiltList<_i3.MultipartUpload>? get uploads;
  @override
  List<Object?> get props => [
        bucket,
        commonPrefixes,
        delimiter,
        encodingType,
        isTruncated,
        keyMarker,
        maxUploads,
        nextKeyMarker,
        nextUploadIdMarker,
        prefix,
        uploadIdMarker,
        uploads,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListMultipartUploadsOutputPayload')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'commonPrefixes',
            commonPrefixes,
          )
          ..add(
            'delimiter',
            delimiter,
          )
          ..add(
            'encodingType',
            encodingType,
          )
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'keyMarker',
            keyMarker,
          )
          ..add(
            'maxUploads',
            maxUploads,
          )
          ..add(
            'nextKeyMarker',
            nextKeyMarker,
          )
          ..add(
            'nextUploadIdMarker',
            nextUploadIdMarker,
          )
          ..add(
            'prefix',
            prefix,
          )
          ..add(
            'uploadIdMarker',
            uploadIdMarker,
          )
          ..add(
            'uploads',
            uploads,
          );
    return helper.toString();
  }
}

class ListMultipartUploadsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ListMultipartUploadsOutputPayload> {
  const ListMultipartUploadsOutputRestXmlSerializer()
      : super('ListMultipartUploadsOutput');

  @override
  Iterable<Type> get types => const [
        ListMultipartUploadsOutput,
        _$ListMultipartUploadsOutput,
        ListMultipartUploadsOutputPayload,
        _$ListMultipartUploadsOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListMultipartUploadsOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListMultipartUploadsOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CommonPrefixes':
          result.commonPrefixes.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CommonPrefix),
          ) as _i4.CommonPrefix));
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.EncodingType),
          ) as _i5.EncodingType);
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'KeyMarker':
          result.keyMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxUploads':
          result.maxUploads = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextKeyMarker':
          result.nextKeyMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextUploadIdMarker':
          result.nextUploadIdMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UploadIdMarker':
          result.uploadIdMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Upload':
          result.uploads.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.MultipartUpload),
          ) as _i3.MultipartUpload));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListMultipartUploadsOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ListMultipartUploadsResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListMultipartUploadsOutputPayload(
      :bucket,
      :commonPrefixes,
      :delimiter,
      :encodingType,
      :isTruncated,
      :keyMarker,
      :maxUploads,
      :nextKeyMarker,
      :nextUploadIdMarker,
      :prefix,
      :uploadIdMarker,
      :uploads
    ) = object;
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (commonPrefixes != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        commonPrefixes,
        specifiedType: const FullType.nullable(
          _i7.BuiltList,
          [FullType(_i4.CommonPrefix)],
        ),
      ));
    }
    if (delimiter != null) {
      result$
        ..add(const _i2.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          delimiter,
          specifiedType: const FullType(String),
        ));
    }
    if (encodingType != null) {
      result$
        ..add(const _i2.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          encodingType,
          specifiedType: const FullType.nullable(_i5.EncodingType),
        ));
    }
    if (isTruncated != null) {
      result$
        ..add(const _i2.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (keyMarker != null) {
      result$
        ..add(const _i2.XmlElementName('KeyMarker'))
        ..add(serializers.serialize(
          keyMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (maxUploads != null) {
      result$
        ..add(const _i2.XmlElementName('MaxUploads'))
        ..add(serializers.serialize(
          maxUploads,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (nextKeyMarker != null) {
      result$
        ..add(const _i2.XmlElementName('NextKeyMarker'))
        ..add(serializers.serialize(
          nextKeyMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (nextUploadIdMarker != null) {
      result$
        ..add(const _i2.XmlElementName('NextUploadIdMarker'))
        ..add(serializers.serialize(
          nextUploadIdMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (uploadIdMarker != null) {
      result$
        ..add(const _i2.XmlElementName('UploadIdMarker'))
        ..add(serializers.serialize(
          uploadIdMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (uploads != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Upload').serialize(
        serializers,
        uploads,
        specifiedType: const FullType.nullable(
          _i7.BuiltList,
          [FullType(_i3.MultipartUpload)],
        ),
      ));
    }
    return result$;
  }
}
