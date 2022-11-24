// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_objects_v2_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/object.dart' as _i3;

part 'list_objects_v2_output.g.dart';

abstract class ListObjectsV2Output
    with _i1.AWSEquatable<ListObjectsV2Output>
    implements Built<ListObjectsV2Output, ListObjectsV2OutputBuilder> {
  factory ListObjectsV2Output({
    List<_i2.CommonPrefix>? commonPrefixes,
    List<_i3.S3Object>? contents,
    String? continuationToken,
    String? delimiter,
    _i4.EncodingType? encodingType,
    bool? isTruncated,
    int? keyCount,
    int? maxKeys,
    String? name,
    String? nextContinuationToken,
    String? prefix,
    String? startAfter,
  }) {
    return _$ListObjectsV2Output._(
      commonPrefixes:
          commonPrefixes == null ? null : _i5.BuiltList(commonPrefixes),
      contents: contents == null ? null : _i5.BuiltList(contents),
      continuationToken: continuationToken,
      delimiter: delimiter,
      encodingType: encodingType,
      isTruncated: isTruncated,
      keyCount: keyCount,
      maxKeys: maxKeys,
      name: name,
      nextContinuationToken: nextContinuationToken,
      prefix: prefix,
      startAfter: startAfter,
    );
  }

  factory ListObjectsV2Output.build(
          [void Function(ListObjectsV2OutputBuilder) updates]) =
      _$ListObjectsV2Output;

  const ListObjectsV2Output._();

  /// Constructs a [ListObjectsV2Output] from a [payload] and [response].
  factory ListObjectsV2Output.fromResponse(
    ListObjectsV2Output payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    ListObjectsV2OutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsV2OutputBuilder b) {}

  /// All of the keys (up to 1,000) rolled up into a common prefix count as a single return when calculating the number of returns.
  ///
  /// A response can contain `CommonPrefixes` only if you specify a delimiter.
  ///
  /// `CommonPrefixes` contains all (if there are any) keys between `Prefix` and the next occurrence of the string specified by a delimiter.
  ///
  /// `CommonPrefixes` lists keys that act like subdirectories in the directory specified by `Prefix`.
  ///
  /// For example, if the prefix is `notes/` and the delimiter is a slash (`/`) as in `notes/summer/july`, the common prefix is `notes/summer/`. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
  _i5.BuiltList<_i2.CommonPrefix>? get commonPrefixes;

  /// Metadata about each object returned.
  _i5.BuiltList<_i3.S3Object>? get contents;

  /// If ContinuationToken was sent with the request, it is included in the response.
  String? get continuationToken;

  /// Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the CommonPrefixes collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the `MaxKeys` value.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify the encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `Delimiter, Prefix, Key,` and `StartAfter`.
  _i4.EncodingType? get encodingType;

  /// Set to false if all of the results were returned. Set to true if more keys are available to return. If the number of results exceeds that specified by MaxKeys, all of the results might not be returned.
  bool? get isTruncated;

  /// KeyCount is the number of keys returned with this request. KeyCount will always be less than or equals to MaxKeys field. Say you ask for 50 keys, your result will include less than equals 50 keys
  int? get keyCount;

  /// Sets the maximum number of keys returned in the response. By default the action returns up to 1,000 key names. The response might contain fewer keys but will never contain more.
  int? get maxKeys;

  /// The bucket name.
  ///
  /// When using this action with an access point, you must direct requests to the access point hostname. The access point hostname takes the form _AccessPointName_-_AccountId_.s3-accesspoint._Region_.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see [Using access points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html) in the _Amazon S3 User Guide_.
  ///
  /// When using this action with Amazon S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the form `_AccessPointName_-_AccountId_._outpostID_.s3-outposts._Region_.amazonaws.com`. When using this action with S3 on Outposts through the Amazon Web Services SDKs, you provide the Outposts bucket ARN in place of the bucket name. For more information about S3 on Outposts ARNs, see [Using Amazon S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html) in the _Amazon S3 User Guide_.
  String? get name;

  /// `NextContinuationToken` is sent when `isTruncated` is true, which means there are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with this `NextContinuationToken`. `NextContinuationToken` is obfuscated and is not a real key
  String? get nextContinuationToken;

  /// Keys that begin with the indicated prefix.
  String? get prefix;

  /// If StartAfter was sent with the request, it is included in the response.
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
    final helper = newBuiltValueToStringHelper('ListObjectsV2Output');
    helper.add(
      'commonPrefixes',
      commonPrefixes,
    );
    helper.add(
      'contents',
      contents,
    );
    helper.add(
      'continuationToken',
      continuationToken,
    );
    helper.add(
      'delimiter',
      delimiter,
    );
    helper.add(
      'encodingType',
      encodingType,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'keyCount',
      keyCount,
    );
    helper.add(
      'maxKeys',
      maxKeys,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'nextContinuationToken',
      nextContinuationToken,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'startAfter',
      startAfter,
    );
    return helper.toString();
  }
}

class ListObjectsV2OutputRestXmlSerializer
    extends _i6.StructuredSmithySerializer<ListObjectsV2Output> {
  const ListObjectsV2OutputRestXmlSerializer() : super('ListObjectsV2Output');

  @override
  Iterable<Type> get types => const [
        ListObjectsV2Output,
        _$ListObjectsV2Output,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectsV2Output deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsV2OutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CommonPrefixes':
          if (value != null) {
            result.commonPrefixes.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CommonPrefix),
            ) as _i2.CommonPrefix));
          }
          break;
        case 'Contents':
          if (value != null) {
            result.contents.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.S3Object),
            ) as _i3.S3Object));
          }
          break;
        case 'ContinuationToken':
          if (value != null) {
            result.continuationToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'KeyCount':
          if (value != null) {
            result.keyCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'MaxKeys':
          if (value != null) {
            result.maxKeys = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NextContinuationToken':
          if (value != null) {
            result.nextContinuationToken = (serializers.deserialize(
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
        case 'StartAfter':
          if (value != null) {
            result.startAfter = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ListObjectsV2Output);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ListBucketResult',
        _i6.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.commonPrefixes != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        payload.commonPrefixes!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i2.CommonPrefix)],
        ),
      ));
    }
    if (payload.contents != null) {
      result.addAll(
          const _i6.XmlBuiltListSerializer(memberName: 'Contents').serialize(
        serializers,
        payload.contents!,
        specifiedType: const FullType.nullable(
          _i5.BuiltList,
          [FullType(_i3.S3Object)],
        ),
      ));
    }
    if (payload.continuationToken != null) {
      result
        ..add(const _i6.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          payload.continuationToken!,
          specifiedType: const FullType(String),
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
    if (payload.keyCount != null) {
      result
        ..add(const _i6.XmlElementName('KeyCount'))
        ..add(serializers.serialize(
          payload.keyCount!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.maxKeys != null) {
      result
        ..add(const _i6.XmlElementName('MaxKeys'))
        ..add(serializers.serialize(
          payload.maxKeys!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i6.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextContinuationToken != null) {
      result
        ..add(const _i6.XmlElementName('NextContinuationToken'))
        ..add(serializers.serialize(
          payload.nextContinuationToken!,
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
    if (payload.startAfter != null) {
      result
        ..add(const _i6.XmlElementName('StartAfter'))
        ..add(serializers.serialize(
          payload.startAfter!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
