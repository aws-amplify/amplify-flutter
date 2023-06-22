// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.list_objects_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i8;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i6;

part 'list_objects_output.g.dart';

abstract class ListObjectsOutput
    with _i1.AWSEquatable<ListObjectsOutput>
    implements
        Built<ListObjectsOutput, ListObjectsOutputBuilder>,
        _i2.HasPayload<ListObjectsOutputPayload> {
  factory ListObjectsOutput({
    bool? isTruncated,
    String? marker,
    String? nextMarker,
    List<_i3.S3Object>? contents,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<_i4.CommonPrefix>? commonPrefixes,
    _i5.EncodingType? encodingType,
    _i6.RequestCharged? requestCharged,
  }) {
    return _$ListObjectsOutput._(
      isTruncated: isTruncated,
      marker: marker,
      nextMarker: nextMarker,
      contents: contents == null ? null : _i7.BuiltList(contents),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes:
          commonPrefixes == null ? null : _i7.BuiltList(commonPrefixes),
      encodingType: encodingType,
      requestCharged: requestCharged,
    );
  }

  factory ListObjectsOutput.build(
      [void Function(ListObjectsOutputBuilder) updates]) = _$ListObjectsOutput;

  const ListObjectsOutput._();

  /// Constructs a [ListObjectsOutput] from a [payload] and [response].
  factory ListObjectsOutput.fromResponse(
    ListObjectsOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      ListObjectsOutput.build((b) {
        if (payload.commonPrefixes != null) {
          b.commonPrefixes.replace(payload.commonPrefixes!);
        }
        if (payload.contents != null) {
          b.contents.replace(payload.contents!);
        }
        b.delimiter = payload.delimiter;
        b.encodingType = payload.encodingType;
        b.isTruncated = payload.isTruncated;
        b.marker = payload.marker;
        b.maxKeys = payload.maxKeys;
        b.name = payload.name;
        b.nextMarker = payload.nextMarker;
        b.prefix = payload.prefix;
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i6.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<ListObjectsOutputPayload>>
      serializers = [ListObjectsOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsOutputBuilder b) {}

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria.
  bool? get isTruncated;

  /// Indicates where in the bucket listing begins. Marker is included in the response if it was sent with the request.
  String? get marker;

  /// When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMarker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
  String? get nextMarker;

  /// Metadata about each object returned.
  _i7.BuiltList<_i3.S3Object>? get contents;

  /// The bucket name.
  String? get name;

  /// Keys that begin with the indicated prefix.
  String? get prefix;

  /// Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the `CommonPrefixes` collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the `MaxKeys` value.
  String? get delimiter;

  /// The maximum number of keys returned in the response body.
  int? get maxKeys;

  /// All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating the number of returns.
  ///
  /// A response can contain CommonPrefixes only if you specify a delimiter.
  ///
  /// CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by the delimiter.
  ///
  /// CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix.
  ///
  /// For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
  _i7.BuiltList<_i4.CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  _i5.EncodingType? get encodingType;

  /// If present, indicates that the requester was successfully charged for the request.
  _i6.RequestCharged? get requestCharged;
  @override
  ListObjectsOutputPayload getPayload() => ListObjectsOutputPayload((b) {
        if (commonPrefixes != null) {
          b.commonPrefixes.replace(commonPrefixes!);
        }
        if (contents != null) {
          b.contents.replace(contents!);
        }
        b.delimiter = delimiter;
        b.encodingType = encodingType;
        b.isTruncated = isTruncated;
        b.marker = marker;
        b.maxKeys = maxKeys;
        b.name = name;
        b.nextMarker = nextMarker;
        b.prefix = prefix;
      });
  @override
  List<Object?> get props => [
        isTruncated,
        marker,
        nextMarker,
        contents,
        name,
        prefix,
        delimiter,
        maxKeys,
        commonPrefixes,
        encodingType,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsOutput')
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'marker',
        marker,
      )
      ..add(
        'nextMarker',
        nextMarker,
      )
      ..add(
        'contents',
        contents,
      )
      ..add(
        'name',
        name,
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
        'maxKeys',
        maxKeys,
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
abstract class ListObjectsOutputPayload
    with _i1.AWSEquatable<ListObjectsOutputPayload>
    implements
        Built<ListObjectsOutputPayload, ListObjectsOutputPayloadBuilder> {
  factory ListObjectsOutputPayload(
          [void Function(ListObjectsOutputPayloadBuilder) updates]) =
      _$ListObjectsOutputPayload;

  const ListObjectsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectsOutputPayloadBuilder b) {}

  /// All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating the number of returns.
  ///
  /// A response can contain CommonPrefixes only if you specify a delimiter.
  ///
  /// CommonPrefixes contains all (if there are any) keys between Prefix and the next occurrence of the string specified by the delimiter.
  ///
  /// CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix.
  ///
  /// For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/. All of the keys that roll up into a common prefix count as a single return when calculating the number of returns.
  _i7.BuiltList<_i4.CommonPrefix>? get commonPrefixes;

  /// Metadata about each object returned.
  _i7.BuiltList<_i3.S3Object>? get contents;

  /// Causes keys that contain the same string between the prefix and the first occurrence of the delimiter to be rolled up into a single result element in the `CommonPrefixes` collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only one return against the `MaxKeys` value.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object keys in the response.
  _i5.EncodingType? get encodingType;

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria.
  bool? get isTruncated;

  /// Indicates where in the bucket listing begins. Marker is included in the response if it was sent with the request.
  String? get marker;

  /// The maximum number of keys returned in the response body.
  int? get maxKeys;

  /// The bucket name.
  String? get name;

  /// When response is truncated (the IsTruncated element value in the response is true), you can use the key name in this field as marker in the subsequent request to get next set of objects. Amazon S3 lists objects in alphabetical order Note: This element is returned only if you have delimiter request parameter specified. If response does not include the NextMarker and it is truncated, you can use the value of the last Key in the response as the marker in the subsequent request to get the next set of object keys.
  String? get nextMarker;

  /// Keys that begin with the indicated prefix.
  String? get prefix;
  @override
  List<Object?> get props => [
        commonPrefixes,
        contents,
        delimiter,
        encodingType,
        isTruncated,
        marker,
        maxKeys,
        name,
        nextMarker,
        prefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectsOutputPayload')
      ..add(
        'commonPrefixes',
        commonPrefixes,
      )
      ..add(
        'contents',
        contents,
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
        'marker',
        marker,
      )
      ..add(
        'maxKeys',
        maxKeys,
      )
      ..add(
        'name',
        name,
      )
      ..add(
        'nextMarker',
        nextMarker,
      )
      ..add(
        'prefix',
        prefix,
      );
    return helper.toString();
  }
}

class ListObjectsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ListObjectsOutputPayload> {
  const ListObjectsOutputRestXmlSerializer() : super('ListObjectsOutput');

  @override
  Iterable<Type> get types => const [
        ListObjectsOutput,
        _$ListObjectsOutput,
        ListObjectsOutputPayload,
        _$ListObjectsOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectsOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectsOutputPayloadBuilder();
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
          result.commonPrefixes.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CommonPrefix),
          ) as _i4.CommonPrefix));
        case 'Contents':
          result.contents.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.S3Object),
          ) as _i3.S3Object));
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
        case 'Marker':
          result.marker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxKeys':
          result.maxKeys = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextMarker':
          result.nextMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListObjectsOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ListBucketResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListObjectsOutputPayload(
      :commonPrefixes,
      :contents,
      :delimiter,
      :encodingType,
      :isTruncated,
      :marker,
      :maxKeys,
      :name,
      :nextMarker,
      :prefix
    ) = object;
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
    if (contents != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Contents').serialize(
        serializers,
        contents,
        specifiedType: const FullType.nullable(
          _i7.BuiltList,
          [FullType(_i3.S3Object)],
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
    if (marker != null) {
      result$
        ..add(const _i2.XmlElementName('Marker'))
        ..add(serializers.serialize(
          marker,
          specifiedType: const FullType(String),
        ));
    }
    if (maxKeys != null) {
      result$
        ..add(const _i2.XmlElementName('MaxKeys'))
        ..add(serializers.serialize(
          maxKeys,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (nextMarker != null) {
      result$
        ..add(const _i2.XmlElementName('NextMarker'))
        ..add(serializers.serialize(
          nextMarker,
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
    return result$;
  }
}
