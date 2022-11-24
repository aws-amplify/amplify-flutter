// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_object_versions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_entry.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/object_version.dart' as _i5;

part 'list_object_versions_output.g.dart';

abstract class ListObjectVersionsOutput
    with _i1.AWSEquatable<ListObjectVersionsOutput>
    implements
        Built<ListObjectVersionsOutput, ListObjectVersionsOutputBuilder> {
  factory ListObjectVersionsOutput({
    List<_i2.CommonPrefix>? commonPrefixes,
    List<_i3.DeleteMarkerEntry>? deleteMarkers,
    String? delimiter,
    _i4.EncodingType? encodingType,
    bool? isTruncated,
    String? keyMarker,
    int? maxKeys,
    String? name,
    String? nextKeyMarker,
    String? nextVersionIdMarker,
    String? prefix,
    String? versionIdMarker,
    List<_i5.ObjectVersion>? versions,
  }) {
    return _$ListObjectVersionsOutput._(
      commonPrefixes:
          commonPrefixes == null ? null : _i6.BuiltList(commonPrefixes),
      deleteMarkers:
          deleteMarkers == null ? null : _i6.BuiltList(deleteMarkers),
      delimiter: delimiter,
      encodingType: encodingType,
      isTruncated: isTruncated,
      keyMarker: keyMarker,
      maxKeys: maxKeys,
      name: name,
      nextKeyMarker: nextKeyMarker,
      nextVersionIdMarker: nextVersionIdMarker,
      prefix: prefix,
      versionIdMarker: versionIdMarker,
      versions: versions == null ? null : _i6.BuiltList(versions),
    );
  }

  factory ListObjectVersionsOutput.build(
          [void Function(ListObjectVersionsOutputBuilder) updates]) =
      _$ListObjectVersionsOutput;

  const ListObjectVersionsOutput._();

  /// Constructs a [ListObjectVersionsOutput] from a [payload] and [response].
  factory ListObjectVersionsOutput.fromResponse(
    ListObjectVersionsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i7.SmithySerializer> serializers = [
    ListObjectVersionsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectVersionsOutputBuilder b) {}

  /// All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
  _i6.BuiltList<_i2.CommonPrefix>? get commonPrefixes;

  /// Container for an object that is a delete marker.
  _i6.BuiltList<_i3.DeleteMarkerEntry>? get deleteMarkers;

  /// The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `KeyMarker, NextKeyMarker, Prefix, Key`, and `Delimiter`.
  _i4.EncodingType? get encodingType;

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.
  bool? get isTruncated;

  /// Marks the last key returned in a truncated response.
  String? get keyMarker;

  /// Specifies the maximum number of objects to return.
  int? get maxKeys;

  /// The bucket name.
  String? get name;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextKeyMarker` specifies the first key not returned that satisfies the search criteria. Use this value for the key-marker request parameter in a subsequent request.
  String? get nextKeyMarker;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextVersionIdMarker` specifies the first object version not returned that satisfies the search criteria. Use this value for the version-id-marker request parameter in a subsequent request.
  String? get nextVersionIdMarker;

  /// Selects objects that start with the value supplied by this parameter.
  String? get prefix;

  /// Marks the last version of the key returned in a truncated response.
  String? get versionIdMarker;

  /// Container for version information.
  _i6.BuiltList<_i5.ObjectVersion>? get versions;
  @override
  List<Object?> get props => [
        commonPrefixes,
        deleteMarkers,
        delimiter,
        encodingType,
        isTruncated,
        keyMarker,
        maxKeys,
        name,
        nextKeyMarker,
        nextVersionIdMarker,
        prefix,
        versionIdMarker,
        versions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectVersionsOutput');
    helper.add(
      'commonPrefixes',
      commonPrefixes,
    );
    helper.add(
      'deleteMarkers',
      deleteMarkers,
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
      'keyMarker',
      keyMarker,
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
      'nextKeyMarker',
      nextKeyMarker,
    );
    helper.add(
      'nextVersionIdMarker',
      nextVersionIdMarker,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'versionIdMarker',
      versionIdMarker,
    );
    helper.add(
      'versions',
      versions,
    );
    return helper.toString();
  }
}

class ListObjectVersionsOutputRestXmlSerializer
    extends _i7.StructuredSmithySerializer<ListObjectVersionsOutput> {
  const ListObjectVersionsOutputRestXmlSerializer()
      : super('ListObjectVersionsOutput');

  @override
  Iterable<Type> get types => const [
        ListObjectVersionsOutput,
        _$ListObjectVersionsOutput,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectVersionsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectVersionsOutputBuilder();
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
        case 'DeleteMarker':
          if (value != null) {
            result.deleteMarkers.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DeleteMarkerEntry),
            ) as _i3.DeleteMarkerEntry));
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
        case 'NextKeyMarker':
          if (value != null) {
            result.nextKeyMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NextVersionIdMarker':
          if (value != null) {
            result.nextVersionIdMarker = (serializers.deserialize(
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
        case 'VersionIdMarker':
          if (value != null) {
            result.versionIdMarker = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Version':
          if (value != null) {
            result.versions.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ObjectVersion),
            ) as _i5.ObjectVersion));
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
    final payload = (object as ListObjectVersionsOutput);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ListVersionsResult',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.commonPrefixes != null) {
      result.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        payload.commonPrefixes!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i2.CommonPrefix)],
        ),
      ));
    }
    if (payload.deleteMarkers != null) {
      result.addAll(const _i7.XmlBuiltListSerializer(memberName: 'DeleteMarker')
          .serialize(
        serializers,
        payload.deleteMarkers!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.DeleteMarkerEntry)],
        ),
      ));
    }
    if (payload.delimiter != null) {
      result
        ..add(const _i7.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          payload.delimiter!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.encodingType != null) {
      result
        ..add(const _i7.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          payload.encodingType!,
          specifiedType: const FullType.nullable(_i4.EncodingType),
        ));
    }
    if (payload.isTruncated != null) {
      result
        ..add(const _i7.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.keyMarker != null) {
      result
        ..add(const _i7.XmlElementName('KeyMarker'))
        ..add(serializers.serialize(
          payload.keyMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxKeys != null) {
      result
        ..add(const _i7.XmlElementName('MaxKeys'))
        ..add(serializers.serialize(
          payload.maxKeys!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i7.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextKeyMarker != null) {
      result
        ..add(const _i7.XmlElementName('NextKeyMarker'))
        ..add(serializers.serialize(
          payload.nextKeyMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextVersionIdMarker != null) {
      result
        ..add(const _i7.XmlElementName('NextVersionIdMarker'))
        ..add(serializers.serialize(
          payload.nextVersionIdMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i7.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionIdMarker != null) {
      result
        ..add(const _i7.XmlElementName('VersionIdMarker'))
        ..add(serializers.serialize(
          payload.versionIdMarker!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versions != null) {
      result.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'Version').serialize(
        serializers,
        payload.versions!,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i5.ObjectVersion)],
        ),
      ));
    }
    return result;
  }
}
