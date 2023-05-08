// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.list_object_versions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_entry.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/object_version.dart' as _i2;

part 'list_object_versions_output.g.dart';

abstract class ListObjectVersionsOutput
    with _i1.AWSEquatable<ListObjectVersionsOutput>
    implements
        Built<ListObjectVersionsOutput, ListObjectVersionsOutputBuilder> {
  factory ListObjectVersionsOutput({
    bool? isTruncated,
    String? keyMarker,
    String? versionIdMarker,
    String? nextKeyMarker,
    String? nextVersionIdMarker,
    List<_i2.ObjectVersion>? versions,
    List<_i3.DeleteMarkerEntry>? deleteMarkers,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<_i4.CommonPrefix>? commonPrefixes,
    _i5.EncodingType? encodingType,
  }) {
    return _$ListObjectVersionsOutput._(
      isTruncated: isTruncated,
      keyMarker: keyMarker,
      versionIdMarker: versionIdMarker,
      nextKeyMarker: nextKeyMarker,
      nextVersionIdMarker: nextVersionIdMarker,
      versions: versions == null ? null : _i6.BuiltList(versions),
      deleteMarkers:
          deleteMarkers == null ? null : _i6.BuiltList(deleteMarkers),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes:
          commonPrefixes == null ? null : _i6.BuiltList(commonPrefixes),
      encodingType: encodingType,
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

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request using the NextKeyMarker and NextVersionIdMarker response parameters as a starting place in another request to return the rest of the results.
  bool? get isTruncated;

  /// Marks the last key returned in a truncated response.
  String? get keyMarker;

  /// Marks the last version of the key returned in a truncated response.
  String? get versionIdMarker;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextKeyMarker` specifies the first key not returned that satisfies the search criteria. Use this value for the key-marker request parameter in a subsequent request.
  String? get nextKeyMarker;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextVersionIdMarker` specifies the first object version not returned that satisfies the search criteria. Use this value for the version-id-marker request parameter in a subsequent request.
  String? get nextVersionIdMarker;

  /// Container for version information.
  _i6.BuiltList<_i2.ObjectVersion>? get versions;

  /// Container for an object that is a delete marker.
  _i6.BuiltList<_i3.DeleteMarkerEntry>? get deleteMarkers;

  /// The bucket name.
  String? get name;

  /// Selects objects that start with the value supplied by this parameter.
  String? get prefix;

  /// The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Specifies the maximum number of objects to return.
  int? get maxKeys;

  /// All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
  _i6.BuiltList<_i4.CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `KeyMarker, NextKeyMarker, Prefix, Key`, and `Delimiter`.
  _i5.EncodingType? get encodingType;
  @override
  List<Object?> get props => [
        isTruncated,
        keyMarker,
        versionIdMarker,
        nextKeyMarker,
        nextVersionIdMarker,
        versions,
        deleteMarkers,
        name,
        prefix,
        delimiter,
        maxKeys,
        commonPrefixes,
        encodingType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectVersionsOutput');
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'keyMarker',
      keyMarker,
    );
    helper.add(
      'versionIdMarker',
      versionIdMarker,
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
      'versions',
      versions,
    );
    helper.add(
      'deleteMarkers',
      deleteMarkers,
    );
    helper.add(
      'name',
      name,
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
      'maxKeys',
      maxKeys,
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
        case 'DeleteMarker':
          result.deleteMarkers.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DeleteMarkerEntry),
          ) as _i3.DeleteMarkerEntry));
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
        case 'NextKeyMarker':
          result.nextKeyMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextVersionIdMarker':
          result.nextVersionIdMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionIdMarker':
          result.versionIdMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Version':
          result.versions.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ObjectVersion),
          ) as _i2.ObjectVersion));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListObjectVersionsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i7.XmlElementName(
        'ListVersionsResult',
        _i7.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListObjectVersionsOutput(
      :commonPrefixes,
      :deleteMarkers,
      :delimiter,
      :encodingType,
      :isTruncated,
      :keyMarker,
      :maxKeys,
      :name,
      :nextKeyMarker,
      :nextVersionIdMarker,
      :prefix,
      :versionIdMarker,
      :versions
    ) = object;
    if (commonPrefixes != null) {
      result$.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        commonPrefixes,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i4.CommonPrefix)],
        ),
      ));
    }
    if (deleteMarkers != null) {
      result$.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'DeleteMarker')
              .serialize(
        serializers,
        deleteMarkers,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i3.DeleteMarkerEntry)],
        ),
      ));
    }
    if (delimiter != null) {
      result$
        ..add(const _i7.XmlElementName('Delimiter'))
        ..add(serializers.serialize(
          delimiter,
          specifiedType: const FullType(String),
        ));
    }
    if (encodingType != null) {
      result$
        ..add(const _i7.XmlElementName('EncodingType'))
        ..add(serializers.serialize(
          encodingType,
          specifiedType: const FullType.nullable(_i5.EncodingType),
        ));
    }
    if (isTruncated != null) {
      result$
        ..add(const _i7.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (keyMarker != null) {
      result$
        ..add(const _i7.XmlElementName('KeyMarker'))
        ..add(serializers.serialize(
          keyMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (maxKeys != null) {
      result$
        ..add(const _i7.XmlElementName('MaxKeys'))
        ..add(serializers.serialize(
          maxKeys,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (name != null) {
      result$
        ..add(const _i7.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType(String),
        ));
    }
    if (nextKeyMarker != null) {
      result$
        ..add(const _i7.XmlElementName('NextKeyMarker'))
        ..add(serializers.serialize(
          nextKeyMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (nextVersionIdMarker != null) {
      result$
        ..add(const _i7.XmlElementName('NextVersionIdMarker'))
        ..add(serializers.serialize(
          nextVersionIdMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (prefix != null) {
      result$
        ..add(const _i7.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    if (versionIdMarker != null) {
      result$
        ..add(const _i7.XmlElementName('VersionIdMarker'))
        ..add(serializers.serialize(
          versionIdMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (versions != null) {
      result$.addAll(
          const _i7.XmlBuiltListSerializer(memberName: 'Version').serialize(
        serializers,
        versions,
        specifiedType: const FullType.nullable(
          _i6.BuiltList,
          [FullType(_i2.ObjectVersion)],
        ),
      ));
    }
    return result$;
  }
}
