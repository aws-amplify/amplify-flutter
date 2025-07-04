// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_storage_s3_dart.s3.model.list_objects_v2_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/common_prefix.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/encoding_type.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/object.dart';
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart';
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;

part 'list_objects_v2_output.g.dart';

abstract class ListObjectsV2Output
    with _i1.AWSEquatable<ListObjectsV2Output>
    implements
        Built<ListObjectsV2Output, ListObjectsV2OutputBuilder>,
        _i2.HasPayload<ListObjectsV2OutputPayload> {
  factory ListObjectsV2Output({
    bool? isTruncated,
    List<S3Object>? contents,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<CommonPrefix>? commonPrefixes,
    EncodingType? encodingType,
    int? keyCount,
    String? continuationToken,
    String? nextContinuationToken,
    String? startAfter,
    RequestCharged? requestCharged,
  }) {
    return _$ListObjectsV2Output._(
      isTruncated: isTruncated,
      contents: contents == null ? null : _i3.BuiltList(contents),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes: commonPrefixes == null
          ? null
          : _i3.BuiltList(commonPrefixes),
      encodingType: encodingType,
      keyCount: keyCount,
      continuationToken: continuationToken,
      nextContinuationToken: nextContinuationToken,
      startAfter: startAfter,
      requestCharged: requestCharged,
    );
  }

  factory ListObjectsV2Output.build([
    void Function(ListObjectsV2OutputBuilder) updates,
  ]) = _$ListObjectsV2Output;

  const ListObjectsV2Output._();

  /// Constructs a [ListObjectsV2Output] from a [payload] and [response].
  factory ListObjectsV2Output.fromResponse(
    ListObjectsV2OutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) => ListObjectsV2Output.build((b) {
    if (payload.commonPrefixes != null) {
      b.commonPrefixes.replace(payload.commonPrefixes!);
    }
    if (payload.contents != null) {
      b.contents.replace(payload.contents!);
    }
    b.continuationToken = payload.continuationToken;
    b.delimiter = payload.delimiter;
    b.encodingType = payload.encodingType;
    b.isTruncated = payload.isTruncated;
    b.keyCount = payload.keyCount;
    b.maxKeys = payload.maxKeys;
    b.name = payload.name;
    b.nextContinuationToken = payload.nextContinuationToken;
    b.prefix = payload.prefix;
    b.startAfter = payload.startAfter;
    if (response.headers['x-amz-request-charged'] != null) {
      b.requestCharged = RequestCharged.values.byValue(
        response.headers['x-amz-request-charged']!,
      );
    }
  });

  static const List<_i2.SmithySerializer<ListObjectsV2OutputPayload>>
  serializers = [ListObjectsV2OutputRestXmlSerializer()];

  /// Set to `false` if all of the results were returned. Set to `true` if more keys are available to return. If the number of results exceeds that specified by `MaxKeys`, all of the results might not be returned.
  bool? get isTruncated;

  /// Metadata about each object returned.
  _i3.BuiltList<S3Object>? get contents;

  /// The bucket name.
  String? get name;

  /// Keys that begin with the indicated prefix.
  ///
  /// **Directory buckets** \- For directory buckets, only prefixes that end in a delimiter (`/`) are supported.
  String? get prefix;

  /// Causes keys that contain the same string between the `prefix` and the first occurrence of the delimiter to be rolled up into a single result element in the `CommonPrefixes` collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the `MaxKeys` value.
  ///
  /// **Directory buckets** \- For directory buckets, `/` is the only supported delimiter.
  String? get delimiter;

  /// Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
  int? get maxKeys;

  /// All of the keys (up to 1,000) that share the same prefix are grouped together. When counting the total numbers of returns by this API operation, this group of keys is considered as one item.
  ///
  /// A response can contain `CommonPrefixes` only if you specify a delimiter.
  ///
  /// `CommonPrefixes` contains all (if there are any) keys between `Prefix` and the next occurrence of the string specified by a delimiter.
  ///
  /// `CommonPrefixes` lists keys that act like subdirectories in the directory specified by `Prefix`.
  ///
  /// For example, if the prefix is `notes/` and the delimiter is a slash (`/`) as in `notes/summer/july`, the common prefix is `notes/summer/`. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
  ///
  /// *   **Directory buckets** \- For directory buckets, only prefixes that end in a delimiter (`/`) are supported.
  ///
  /// *   **Directory buckets** \- When you query `ListObjectsV2` with a delimiter during in-progress multipart uploads, the `CommonPrefixes` response parameter contains the prefixes that are associated with the in-progress multipart uploads. For more information about multipart uploads, see [Multipart Upload Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in the _Amazon S3 User Guide_.
  _i3.BuiltList<CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify the `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `Delimiter, Prefix, Key,` and `StartAfter`.
  EncodingType? get encodingType;

  /// `KeyCount` is the number of keys returned with this request. `KeyCount` will always be less than or equal to the `MaxKeys` field. For example, if you ask for 50 keys, your result will include 50 keys or fewer.
  int? get keyCount;

  /// If `ContinuationToken` was sent with the request, it is included in the response. You can use the returned `ContinuationToken` for pagination of the list response. You can use this `ContinuationToken` for pagination of the list results.
  String? get continuationToken;

  /// `NextContinuationToken` is sent when `isTruncated` is true, which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this `NextContinuationToken`. `NextContinuationToken` is obfuscated and is not a real key
  String? get nextContinuationToken;

  /// If StartAfter was sent with the request, it is included in the response.
  ///
  /// This functionality is not supported for directory buckets.
  String? get startAfter;

  /// If present, indicates that the requester was successfully charged for the request.
  ///
  /// This functionality is not supported for directory buckets.
  RequestCharged? get requestCharged;
  @override
  ListObjectsV2OutputPayload getPayload() => ListObjectsV2OutputPayload((b) {
    if (commonPrefixes != null) {
      b.commonPrefixes.replace(commonPrefixes!);
    }
    if (contents != null) {
      b.contents.replace(contents!);
    }
    b.continuationToken = continuationToken;
    b.delimiter = delimiter;
    b.encodingType = encodingType;
    b.isTruncated = isTruncated;
    b.keyCount = keyCount;
    b.maxKeys = maxKeys;
    b.name = name;
    b.nextContinuationToken = nextContinuationToken;
    b.prefix = prefix;
    b.startAfter = startAfter;
  });

  @override
  List<Object?> get props => [
    isTruncated,
    contents,
    name,
    prefix,
    delimiter,
    maxKeys,
    commonPrefixes,
    encodingType,
    keyCount,
    continuationToken,
    nextContinuationToken,
    startAfter,
    requestCharged,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsV2Output')
      ..add('isTruncated', isTruncated)
      ..add('contents', contents)
      ..add('name', name)
      ..add('prefix', prefix)
      ..add('delimiter', delimiter)
      ..add('maxKeys', maxKeys)
      ..add('commonPrefixes', commonPrefixes)
      ..add('encodingType', encodingType)
      ..add('keyCount', keyCount)
      ..add('continuationToken', continuationToken)
      ..add('nextContinuationToken', nextContinuationToken)
      ..add('startAfter', startAfter)
      ..add('requestCharged', requestCharged);
    return helper.toString();
  }
}

@_i4.internal
abstract class ListObjectsV2OutputPayload
    with _i1.AWSEquatable<ListObjectsV2OutputPayload>
    implements
        Built<ListObjectsV2OutputPayload, ListObjectsV2OutputPayloadBuilder> {
  factory ListObjectsV2OutputPayload([
    void Function(ListObjectsV2OutputPayloadBuilder) updates,
  ]) = _$ListObjectsV2OutputPayload;

  const ListObjectsV2OutputPayload._();

  /// All of the keys (up to 1,000) that share the same prefix are grouped together. When counting the total numbers of returns by this API operation, this group of keys is considered as one item.
  ///
  /// A response can contain `CommonPrefixes` only if you specify a delimiter.
  ///
  /// `CommonPrefixes` contains all (if there are any) keys between `Prefix` and the next occurrence of the string specified by a delimiter.
  ///
  /// `CommonPrefixes` lists keys that act like subdirectories in the directory specified by `Prefix`.
  ///
  /// For example, if the prefix is `notes/` and the delimiter is a slash (`/`) as in `notes/summer/july`, the common prefix is `notes/summer/`. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
  ///
  /// *   **Directory buckets** \- For directory buckets, only prefixes that end in a delimiter (`/`) are supported.
  ///
  /// *   **Directory buckets** \- When you query `ListObjectsV2` with a delimiter during in-progress multipart uploads, the `CommonPrefixes` response parameter contains the prefixes that are associated with the in-progress multipart uploads. For more information about multipart uploads, see [Multipart Upload Overview](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html) in the _Amazon S3 User Guide_.
  _i3.BuiltList<CommonPrefix>? get commonPrefixes;

  /// Metadata about each object returned.
  _i3.BuiltList<S3Object>? get contents;

  /// If `ContinuationToken` was sent with the request, it is included in the response. You can use the returned `ContinuationToken` for pagination of the list response. You can use this `ContinuationToken` for pagination of the list results.
  String? get continuationToken;

  /// Causes keys that contain the same string between the `prefix` and the first occurrence of the delimiter to be rolled up into a single result element in the `CommonPrefixes` collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the `MaxKeys` value.
  ///
  /// **Directory buckets** \- For directory buckets, `/` is the only supported delimiter.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify the `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `Delimiter, Prefix, Key,` and `StartAfter`.
  EncodingType? get encodingType;

  /// Set to `false` if all of the results were returned. Set to `true` if more keys are available to return. If the number of results exceeds that specified by `MaxKeys`, all of the results might not be returned.
  bool? get isTruncated;

  /// `KeyCount` is the number of keys returned with this request. `KeyCount` will always be less than or equal to the `MaxKeys` field. For example, if you ask for 50 keys, your result will include 50 keys or fewer.
  int? get keyCount;

  /// Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
  int? get maxKeys;

  /// The bucket name.
  String? get name;

  /// `NextContinuationToken` is sent when `isTruncated` is true, which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this `NextContinuationToken`. `NextContinuationToken` is obfuscated and is not a real key
  String? get nextContinuationToken;

  /// Keys that begin with the indicated prefix.
  ///
  /// **Directory buckets** \- For directory buckets, only prefixes that end in a delimiter (`/`) are supported.
  String? get prefix;

  /// If StartAfter was sent with the request, it is included in the response.
  ///
  /// This functionality is not supported for directory buckets.
  String? get startAfter;
  @override
  List<Object?> get props => [
    commonPrefixes,
    contents,
    continuationToken,
    delimiter,
    encodingType,
    isTruncated,
    keyCount,
    maxKeys,
    name,
    nextContinuationToken,
    prefix,
    startAfter,
  ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsV2OutputPayload')
      ..add('commonPrefixes', commonPrefixes)
      ..add('contents', contents)
      ..add('continuationToken', continuationToken)
      ..add('delimiter', delimiter)
      ..add('encodingType', encodingType)
      ..add('isTruncated', isTruncated)
      ..add('keyCount', keyCount)
      ..add('maxKeys', maxKeys)
      ..add('name', name)
      ..add('nextContinuationToken', nextContinuationToken)
      ..add('prefix', prefix)
      ..add('startAfter', startAfter);
    return helper.toString();
  }
}

class ListObjectsV2OutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ListObjectsV2OutputPayload> {
  const ListObjectsV2OutputRestXmlSerializer() : super('ListObjectsV2Output');

  @override
  Iterable<Type> get types => const [
    ListObjectsV2Output,
    _$ListObjectsV2Output,
    ListObjectsV2OutputPayload,
    _$ListObjectsV2OutputPayload,
  ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
    _i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml'),
  ];

  @override
  ListObjectsV2OutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsV2OutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CommonPrefixes':
          result.commonPrefixes.add(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(CommonPrefix),
                )
                as CommonPrefix),
          );
        case 'Contents':
          result.contents.add(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(S3Object),
                )
                as S3Object),
          );
        case 'ContinuationToken':
          result.continuationToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Delimiter':
          result.delimiter =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'EncodingType':
          result.encodingType =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(EncodingType),
                  )
                  as EncodingType);
        case 'IsTruncated':
          result.isTruncated =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )
                  as bool);
        case 'KeyCount':
          result.keyCount =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'MaxKeys':
          result.maxKeys =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )
                  as int);
        case 'Name':
          result.name =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'NextContinuationToken':
          result.nextContinuationToken =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'Prefix':
          result.prefix =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
        case 'StartAfter':
          result.startAfter =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListObjectsV2OutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ListBucketResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      ),
    ];
    final ListObjectsV2OutputPayload(
      :commonPrefixes,
      :contents,
      :continuationToken,
      :delimiter,
      :encodingType,
      :isTruncated,
      :keyCount,
      :maxKeys,
      :name,
      :nextContinuationToken,
      :prefix,
      :startAfter,
    ) = object;
    if (commonPrefixes != null) {
      result$.addAll(
        const _i2.XmlBuiltListSerializer(
          memberName: 'CommonPrefixes',
        ).serialize(
          serializers,
          commonPrefixes,
          specifiedType: const FullType(_i3.BuiltList, [
            FullType(CommonPrefix),
          ]),
        ),
      );
    }
    if (contents != null) {
      result$.addAll(
        const _i2.XmlBuiltListSerializer(memberName: 'Contents').serialize(
          serializers,
          contents,
          specifiedType: const FullType(_i3.BuiltList, [FullType(S3Object)]),
        ),
      );
    }
    if (continuationToken != null) {
      result$
        ..add(const _i2.XmlElementName('ContinuationToken'))
        ..add(
          serializers.serialize(
            continuationToken,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (delimiter != null) {
      result$
        ..add(const _i2.XmlElementName('Delimiter'))
        ..add(
          serializers.serialize(
            delimiter,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (encodingType != null) {
      result$
        ..add(const _i2.XmlElementName('EncodingType'))
        ..add(
          serializers.serialize(
            encodingType,
            specifiedType: const FullType(EncodingType),
          ),
        );
    }
    if (isTruncated != null) {
      result$
        ..add(const _i2.XmlElementName('IsTruncated'))
        ..add(
          serializers.serialize(
            isTruncated,
            specifiedType: const FullType(bool),
          ),
        );
    }
    if (keyCount != null) {
      result$
        ..add(const _i2.XmlElementName('KeyCount'))
        ..add(
          serializers.serialize(keyCount, specifiedType: const FullType(int)),
        );
    }
    if (maxKeys != null) {
      result$
        ..add(const _i2.XmlElementName('MaxKeys'))
        ..add(
          serializers.serialize(maxKeys, specifiedType: const FullType(int)),
        );
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(
          serializers.serialize(name, specifiedType: const FullType(String)),
        );
    }
    if (nextContinuationToken != null) {
      result$
        ..add(const _i2.XmlElementName('NextContinuationToken'))
        ..add(
          serializers.serialize(
            nextContinuationToken,
            specifiedType: const FullType(String),
          ),
        );
    }
    if (prefix != null) {
      result$
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(
          serializers.serialize(prefix, specifiedType: const FullType(String)),
        );
    }
    if (startAfter != null) {
      result$
        ..add(const _i2.XmlElementName('StartAfter'))
        ..add(
          serializers.serialize(
            startAfter,
            specifiedType: const FullType(String),
          ),
        );
    }
    return result$;
  }
}
