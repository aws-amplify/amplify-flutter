// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_object_attributes_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:meta/meta.dart' as _i8;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/checksum.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/get_object_attributes_parts.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i7;

part 'get_object_attributes_output.g.dart';

abstract class GetObjectAttributesOutput
    with _i1.AWSEquatable<GetObjectAttributesOutput>
    implements
        Built<GetObjectAttributesOutput, GetObjectAttributesOutputBuilder>,
        _i2.HasPayload<GetObjectAttributesOutputPayload> {
  factory GetObjectAttributesOutput({
    _i3.Checksum? checksum,
    bool? deleteMarker,
    String? eTag,
    DateTime? lastModified,
    _i4.GetObjectAttributesParts? objectParts,
    _i5.Int64? objectSize,
    _i6.RequestCharged? requestCharged,
    _i7.StorageClass? storageClass,
    String? versionId,
  }) {
    return _$GetObjectAttributesOutput._(
      checksum: checksum,
      deleteMarker: deleteMarker,
      eTag: eTag,
      lastModified: lastModified,
      objectParts: objectParts,
      objectSize: objectSize,
      requestCharged: requestCharged,
      storageClass: storageClass,
      versionId: versionId,
    );
  }

  factory GetObjectAttributesOutput.build(
          [void Function(GetObjectAttributesOutputBuilder) updates]) =
      _$GetObjectAttributesOutput;

  const GetObjectAttributesOutput._();

  /// Constructs a [GetObjectAttributesOutput] from a [payload] and [response].
  factory GetObjectAttributesOutput.fromResponse(
    GetObjectAttributesOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectAttributesOutput.build((b) {
        if (payload.checksum != null) {
          b.checksum.replace(payload.checksum!);
        }
        b.eTag = payload.eTag;
        if (payload.objectParts != null) {
          b.objectParts.replace(payload.objectParts!);
        }
        b.objectSize = payload.objectSize;
        b.storageClass = payload.storageClass;
        if (response.headers['x-amz-delete-marker'] != null) {
          b.deleteMarker = response.headers['x-amz-delete-marker']! == 'true';
        }
        if (response.headers['Last-Modified'] != null) {
          b.lastModified = _i2.Timestamp.parse(
            response.headers['Last-Modified']!,
            format: _i2.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (response.headers['x-amz-version-id'] != null) {
          b.versionId = response.headers['x-amz-version-id']!;
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i6.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectAttributesOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAttributesOutputBuilder b) {}

  /// The checksum or digest of the object.
  _i3.Checksum? get checksum;

  /// Specifies whether the object retrieved was (`true`) or was not (`false`) a delete marker. If `false`, this response header does not appear in the response.
  bool? get deleteMarker;

  /// An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
  String? get eTag;

  /// The creation date of the object.
  DateTime? get lastModified;

  /// A collection of parts associated with a multipart upload.
  _i4.GetObjectAttributesParts? get objectParts;

  /// The size of the object in bytes.
  _i5.Int64? get objectSize;

  /// If present, indicates that the requester was successfully charged for the request.
  _i6.RequestCharged? get requestCharged;

  /// Provides the storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
  ///
  /// For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).
  _i7.StorageClass? get storageClass;

  /// The version ID of the object.
  String? get versionId;
  @override
  GetObjectAttributesOutputPayload getPayload() =>
      GetObjectAttributesOutputPayload((b) {
        if (checksum != null) {
          b.checksum.replace(checksum!);
        }
        b.eTag = eTag;
        if (objectParts != null) {
          b.objectParts.replace(objectParts!);
        }
        b.objectSize = objectSize;
        b.storageClass = storageClass;
      });
  @override
  List<Object?> get props => [
        checksum,
        deleteMarker,
        eTag,
        lastModified,
        objectParts,
        objectSize,
        requestCharged,
        storageClass,
        versionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAttributesOutput');
    helper.add(
      'checksum',
      checksum,
    );
    helper.add(
      'deleteMarker',
      deleteMarker,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'lastModified',
      lastModified,
    );
    helper.add(
      'objectParts',
      objectParts,
    );
    helper.add(
      'objectSize',
      objectSize,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    helper.add(
      'versionId',
      versionId,
    );
    return helper.toString();
  }
}

@_i8.internal
abstract class GetObjectAttributesOutputPayload
    with
        _i1.AWSEquatable<GetObjectAttributesOutputPayload>
    implements
        Built<GetObjectAttributesOutputPayload,
            GetObjectAttributesOutputPayloadBuilder> {
  factory GetObjectAttributesOutputPayload(
          [void Function(GetObjectAttributesOutputPayloadBuilder) updates]) =
      _$GetObjectAttributesOutputPayload;

  const GetObjectAttributesOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAttributesOutputPayloadBuilder b) {}

  /// The checksum or digest of the object.
  _i3.Checksum? get checksum;

  /// An ETag is an opaque identifier assigned by a web server to a specific version of a resource found at a URL.
  String? get eTag;

  /// A collection of parts associated with a multipart upload.
  _i4.GetObjectAttributesParts? get objectParts;

  /// The size of the object in bytes.
  _i5.Int64? get objectSize;

  /// Provides the storage class information of the object. Amazon S3 returns this header for all objects except for S3 Standard storage class objects.
  ///
  /// For more information, see [Storage Classes](https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html).
  _i7.StorageClass? get storageClass;
  @override
  List<Object?> get props => [
        checksum,
        eTag,
        objectParts,
        objectSize,
        storageClass,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetObjectAttributesOutputPayload');
    helper.add(
      'checksum',
      checksum,
    );
    helper.add(
      'eTag',
      eTag,
    );
    helper.add(
      'objectParts',
      objectParts,
    );
    helper.add(
      'objectSize',
      objectSize,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    return helper.toString();
  }
}

class GetObjectAttributesOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GetObjectAttributesOutputPayload> {
  const GetObjectAttributesOutputRestXmlSerializer()
      : super('GetObjectAttributesOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectAttributesOutput,
        _$GetObjectAttributesOutput,
        GetObjectAttributesOutputPayload,
        _$GetObjectAttributesOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectAttributesOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetObjectAttributesOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Checksum':
          if (value != null) {
            result.checksum.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Checksum),
            ) as _i3.Checksum));
          }
          break;
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ObjectParts':
          if (value != null) {
            result.objectParts.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.GetObjectAttributesParts),
            ) as _i4.GetObjectAttributesParts));
          }
          break;
        case 'ObjectSize':
          if (value != null) {
            result.objectSize = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.Int64),
            ) as _i5.Int64);
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.StorageClass),
            ) as _i7.StorageClass);
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
    final payload = object is GetObjectAttributesOutput
        ? object.getPayload()
        : (object as GetObjectAttributesOutputPayload);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetObjectAttributesOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.checksum != null) {
      result
        ..add(const _i2.XmlElementName('Checksum'))
        ..add(serializers.serialize(
          payload.checksum!,
          specifiedType: const FullType(_i3.Checksum),
        ));
    }
    if (payload.eTag != null) {
      result
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          payload.eTag!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.objectParts != null) {
      result
        ..add(const _i2.XmlElementName('ObjectParts'))
        ..add(serializers.serialize(
          payload.objectParts!,
          specifiedType: const FullType(_i4.GetObjectAttributesParts),
        ));
    }
    if (payload.objectSize != null) {
      result
        ..add(const _i2.XmlElementName('ObjectSize'))
        ..add(serializers.serialize(
          payload.objectSize!,
          specifiedType: const FullType.nullable(_i5.Int64),
        ));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i7.StorageClass),
        ));
    }
    return result;
  }
}
