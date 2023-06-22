// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.list_object_versions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i9;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_entry.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/object_version.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i7;

part 'list_object_versions_output.g.dart';

abstract class ListObjectVersionsOutput
    with _i1.AWSEquatable<ListObjectVersionsOutput>
    implements
        Built<ListObjectVersionsOutput, ListObjectVersionsOutputBuilder>,
        _i2.HasPayload<ListObjectVersionsOutputPayload> {
  factory ListObjectVersionsOutput({
    bool? isTruncated,
    String? keyMarker,
    String? versionIdMarker,
    String? nextKeyMarker,
    String? nextVersionIdMarker,
    List<_i3.ObjectVersion>? versions,
    List<_i4.DeleteMarkerEntry>? deleteMarkers,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<_i5.CommonPrefix>? commonPrefixes,
    _i6.EncodingType? encodingType,
    _i7.RequestCharged? requestCharged,
  }) {
    return _$ListObjectVersionsOutput._(
      isTruncated: isTruncated,
      keyMarker: keyMarker,
      versionIdMarker: versionIdMarker,
      nextKeyMarker: nextKeyMarker,
      nextVersionIdMarker: nextVersionIdMarker,
      versions: versions == null ? null : _i8.BuiltList(versions),
      deleteMarkers:
          deleteMarkers == null ? null : _i8.BuiltList(deleteMarkers),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes:
          commonPrefixes == null ? null : _i8.BuiltList(commonPrefixes),
      encodingType: encodingType,
      requestCharged: requestCharged,
    );
  }

  factory ListObjectVersionsOutput.build(
          [void Function(ListObjectVersionsOutputBuilder) updates]) =
      _$ListObjectVersionsOutput;

  const ListObjectVersionsOutput._();

  /// Constructs a [ListObjectVersionsOutput] from a [payload] and [response].
  factory ListObjectVersionsOutput.fromResponse(
    ListObjectVersionsOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      ListObjectVersionsOutput.build((b) {
        if (payload.commonPrefixes != null) {
          b.commonPrefixes.replace(payload.commonPrefixes!);
        }
        if (payload.deleteMarkers != null) {
          b.deleteMarkers.replace(payload.deleteMarkers!);
        }
        b.delimiter = payload.delimiter;
        b.encodingType = payload.encodingType;
        b.isTruncated = payload.isTruncated;
        b.keyMarker = payload.keyMarker;
        b.maxKeys = payload.maxKeys;
        b.name = payload.name;
        b.nextKeyMarker = payload.nextKeyMarker;
        b.nextVersionIdMarker = payload.nextVersionIdMarker;
        b.prefix = payload.prefix;
        b.versionIdMarker = payload.versionIdMarker;
        if (payload.versions != null) {
          b.versions.replace(payload.versions!);
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i7.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<ListObjectVersionsOutputPayload>>
      serializers = [ListObjectVersionsOutputRestXmlSerializer()];

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
  _i8.BuiltList<_i3.ObjectVersion>? get versions;

  /// Container for an object that is a delete marker.
  _i8.BuiltList<_i4.DeleteMarkerEntry>? get deleteMarkers;

  /// The bucket name.
  String? get name;

  /// Selects objects that start with the value supplied by this parameter.
  String? get prefix;

  /// The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Specifies the maximum number of objects to return.
  int? get maxKeys;

  /// All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
  _i8.BuiltList<_i5.CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `KeyMarker, NextKeyMarker, Prefix, Key`, and `Delimiter`.
  _i6.EncodingType? get encodingType;

  /// If present, indicates that the requester was successfully charged for the request.
  _i7.RequestCharged? get requestCharged;
  @override
  ListObjectVersionsOutputPayload getPayload() =>
      ListObjectVersionsOutputPayload((b) {
        if (commonPrefixes != null) {
          b.commonPrefixes.replace(commonPrefixes!);
        }
        if (deleteMarkers != null) {
          b.deleteMarkers.replace(deleteMarkers!);
        }
        b.delimiter = delimiter;
        b.encodingType = encodingType;
        b.isTruncated = isTruncated;
        b.keyMarker = keyMarker;
        b.maxKeys = maxKeys;
        b.name = name;
        b.nextKeyMarker = nextKeyMarker;
        b.nextVersionIdMarker = nextVersionIdMarker;
        b.prefix = prefix;
        b.versionIdMarker = versionIdMarker;
        if (versions != null) {
          b.versions.replace(versions!);
        }
      });
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
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListObjectVersionsOutput')
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'keyMarker',
        keyMarker,
      )
      ..add(
        'versionIdMarker',
        versionIdMarker,
      )
      ..add(
        'nextKeyMarker',
        nextKeyMarker,
      )
      ..add(
        'nextVersionIdMarker',
        nextVersionIdMarker,
      )
      ..add(
        'versions',
        versions,
      )
      ..add(
        'deleteMarkers',
        deleteMarkers,
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

@_i9.internal
abstract class ListObjectVersionsOutputPayload
    with
        _i1.AWSEquatable<ListObjectVersionsOutputPayload>
    implements
        Built<ListObjectVersionsOutputPayload,
            ListObjectVersionsOutputPayloadBuilder> {
  factory ListObjectVersionsOutputPayload(
          [void Function(ListObjectVersionsOutputPayloadBuilder) updates]) =
      _$ListObjectVersionsOutputPayload;

  const ListObjectVersionsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListObjectVersionsOutputPayloadBuilder b) {}

  /// All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
  _i8.BuiltList<_i5.CommonPrefix>? get commonPrefixes;

  /// Container for an object that is a delete marker.
  _i8.BuiltList<_i4.DeleteMarkerEntry>? get deleteMarkers;

  /// The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the max-keys limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify encoding-type request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `KeyMarker, NextKeyMarker, Prefix, Key`, and `Delimiter`.
  _i6.EncodingType? get encodingType;

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
  _i8.BuiltList<_i3.ObjectVersion>? get versions;
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
    final helper =
        newBuiltValueToStringHelper('ListObjectVersionsOutputPayload')
          ..add(
            'commonPrefixes',
            commonPrefixes,
          )
          ..add(
            'deleteMarkers',
            deleteMarkers,
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
            'maxKeys',
            maxKeys,
          )
          ..add(
            'name',
            name,
          )
          ..add(
            'nextKeyMarker',
            nextKeyMarker,
          )
          ..add(
            'nextVersionIdMarker',
            nextVersionIdMarker,
          )
          ..add(
            'prefix',
            prefix,
          )
          ..add(
            'versionIdMarker',
            versionIdMarker,
          )
          ..add(
            'versions',
            versions,
          );
    return helper.toString();
  }
}

class ListObjectVersionsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ListObjectVersionsOutputPayload> {
  const ListObjectVersionsOutputRestXmlSerializer()
      : super('ListObjectVersionsOutput');

  @override
  Iterable<Type> get types => const [
        ListObjectVersionsOutput,
        _$ListObjectVersionsOutput,
        ListObjectVersionsOutputPayload,
        _$ListObjectVersionsOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListObjectVersionsOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListObjectVersionsOutputPayloadBuilder();
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
            specifiedType: const FullType(_i5.CommonPrefix),
          ) as _i5.CommonPrefix));
        case 'DeleteMarker':
          result.deleteMarkers.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.DeleteMarkerEntry),
          ) as _i4.DeleteMarkerEntry));
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.EncodingType),
          ) as _i6.EncodingType);
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
            specifiedType: const FullType(_i3.ObjectVersion),
          ) as _i3.ObjectVersion));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListObjectVersionsOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ListVersionsResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListObjectVersionsOutputPayload(
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
          const _i2.XmlBuiltListSerializer(memberName: 'CommonPrefixes')
              .serialize(
        serializers,
        commonPrefixes,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(_i5.CommonPrefix)],
        ),
      ));
    }
    if (deleteMarkers != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'DeleteMarker')
              .serialize(
        serializers,
        deleteMarkers,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(_i4.DeleteMarkerEntry)],
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
          specifiedType: const FullType.nullable(_i6.EncodingType),
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
    if (nextKeyMarker != null) {
      result$
        ..add(const _i2.XmlElementName('NextKeyMarker'))
        ..add(serializers.serialize(
          nextKeyMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (nextVersionIdMarker != null) {
      result$
        ..add(const _i2.XmlElementName('NextVersionIdMarker'))
        ..add(serializers.serialize(
          nextVersionIdMarker,
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
    if (versionIdMarker != null) {
      result$
        ..add(const _i2.XmlElementName('VersionIdMarker'))
        ..add(serializers.serialize(
          versionIdMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (versions != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Version').serialize(
        serializers,
        versions,
        specifiedType: const FullType.nullable(
          _i8.BuiltList,
          [FullType(_i3.ObjectVersion)],
        ),
      ));
    }
    return result$;
  }
}
