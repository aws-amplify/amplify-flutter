// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.list_object_versions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/common_prefix.dart';
import 'package:smoke_test/src/sdk/src/s3/model/delete_marker_entry.dart';
import 'package:smoke_test/src/sdk/src/s3/model/encoding_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_version.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart';

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
    List<ObjectVersion>? versions,
    List<DeleteMarkerEntry>? deleteMarkers,
    String? name,
    String? prefix,
    String? delimiter,
    int? maxKeys,
    List<CommonPrefix>? commonPrefixes,
    EncodingType? encodingType,
    RequestCharged? requestCharged,
  }) {
    return _$ListObjectVersionsOutput._(
      isTruncated: isTruncated,
      keyMarker: keyMarker,
      versionIdMarker: versionIdMarker,
      nextKeyMarker: nextKeyMarker,
      nextVersionIdMarker: nextVersionIdMarker,
      versions: versions == null ? null : _i3.BuiltList(versions),
      deleteMarkers:
          deleteMarkers == null ? null : _i3.BuiltList(deleteMarkers),
      name: name,
      prefix: prefix,
      delimiter: delimiter,
      maxKeys: maxKeys,
      commonPrefixes:
          commonPrefixes == null ? null : _i3.BuiltList(commonPrefixes),
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
          b.requestCharged = RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<ListObjectVersionsOutputPayload>>
      serializers = [ListObjectVersionsOutputRestXmlSerializer()];

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request by using the `NextKeyMarker` and `NextVersionIdMarker` response parameters as a starting place in another request to return the rest of the results.
  bool? get isTruncated;

  /// Marks the last key returned in a truncated response.
  String? get keyMarker;

  /// Marks the last version of the key returned in a truncated response.
  String? get versionIdMarker;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextKeyMarker` specifies the first key not returned that satisfies the search criteria. Use this value for the key-marker request parameter in a subsequent request.
  String? get nextKeyMarker;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextVersionIdMarker` specifies the first object version not returned that satisfies the search criteria. Use this value for the `version-id-marker` request parameter in a subsequent request.
  String? get nextVersionIdMarker;

  /// Container for version information.
  _i3.BuiltList<ObjectVersion>? get versions;

  /// Container for an object that is a delete marker.
  _i3.BuiltList<DeleteMarkerEntry>? get deleteMarkers;

  /// The bucket name.
  String? get name;

  /// Selects objects that start with the value supplied by this parameter.
  String? get prefix;

  /// The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the `max-keys` limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Specifies the maximum number of objects to return.
  int? get maxKeys;

  /// All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
  _i3.BuiltList<CommonPrefix>? get commonPrefixes;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify the `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `KeyMarker, NextKeyMarker, Prefix, Key`, and `Delimiter`.
  EncodingType? get encodingType;

  /// If present, indicates that the requester was successfully charged for the request.
  RequestCharged? get requestCharged;
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

@_i4.internal
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

  /// All of the keys rolled up into a common prefix count as a single return when calculating the number of returns.
  _i3.BuiltList<CommonPrefix>? get commonPrefixes;

  /// Container for an object that is a delete marker.
  _i3.BuiltList<DeleteMarkerEntry>? get deleteMarkers;

  /// The delimiter grouping the included keys. A delimiter is a character that you specify to group keys. All keys that contain the same string between the prefix and the first occurrence of the delimiter are grouped under a single result element in `CommonPrefixes`. These groups are counted as one result against the `max-keys` limitation. These keys are not returned elsewhere in the response.
  String? get delimiter;

  /// Encoding type used by Amazon S3 to encode object key names in the XML response.
  ///
  /// If you specify the `encoding-type` request parameter, Amazon S3 includes this element in the response, and returns encoded key name values in the following response elements:
  ///
  /// `KeyMarker, NextKeyMarker, Prefix, Key`, and `Delimiter`.
  EncodingType? get encodingType;

  /// A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria. If your results were truncated, you can make a follow-up paginated request by using the `NextKeyMarker` and `NextVersionIdMarker` response parameters as a starting place in another request to return the rest of the results.
  bool? get isTruncated;

  /// Marks the last key returned in a truncated response.
  String? get keyMarker;

  /// Specifies the maximum number of objects to return.
  int? get maxKeys;

  /// The bucket name.
  String? get name;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextKeyMarker` specifies the first key not returned that satisfies the search criteria. Use this value for the key-marker request parameter in a subsequent request.
  String? get nextKeyMarker;

  /// When the number of responses exceeds the value of `MaxKeys`, `NextVersionIdMarker` specifies the first object version not returned that satisfies the search criteria. Use this value for the `version-id-marker` request parameter in a subsequent request.
  String? get nextVersionIdMarker;

  /// Selects objects that start with the value supplied by this parameter.
  String? get prefix;

  /// Marks the last version of the key returned in a truncated response.
  String? get versionIdMarker;

  /// Container for version information.
  _i3.BuiltList<ObjectVersion>? get versions;
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
            specifiedType: const FullType(CommonPrefix),
          ) as CommonPrefix));
        case 'DeleteMarker':
          result.deleteMarkers.add((serializers.deserialize(
            value,
            specifiedType: const FullType(DeleteMarkerEntry),
          ) as DeleteMarkerEntry));
        case 'Delimiter':
          result.delimiter = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EncodingType':
          result.encodingType = (serializers.deserialize(
            value,
            specifiedType: const FullType(EncodingType),
          ) as EncodingType);
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
            specifiedType: const FullType(ObjectVersion),
          ) as ObjectVersion));
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
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(CommonPrefix)],
        ),
      ));
    }
    if (deleteMarkers != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'DeleteMarker')
              .serialize(
        serializers,
        deleteMarkers,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(DeleteMarkerEntry)],
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
          specifiedType: const FullType(EncodingType),
        ));
    }
    if (isTruncated != null) {
      result$
        ..add(const _i2.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType(bool),
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
          specifiedType: const FullType(int),
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
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(ObjectVersion)],
        ),
      ));
    }
    return result$;
  }
}
