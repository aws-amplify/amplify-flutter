// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.list_parts_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/initiator.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart' as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/part.dart' as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i9;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i10;
import 'package:smithy/smithy.dart' as _i2;

part 'list_parts_output.g.dart';

abstract class ListPartsOutput
    with _i1.AWSEquatable<ListPartsOutput>
    implements
        Built<ListPartsOutput, ListPartsOutputBuilder>,
        _i2.HasPayload<ListPartsOutputPayload> {
  factory ListPartsOutput(
      {DateTime? abortDate,
      String? abortRuleId,
      String? bucket,
      _i3.ChecksumAlgorithm? checksumAlgorithm,
      _i4.Initiator? initiator,
      bool? isTruncated,
      String? key,
      int? maxParts,
      String? nextPartNumberMarker,
      _i5.Owner? owner,
      String? partNumberMarker,
      _i6.BuiltList<_i7.Part>? parts,
      _i8.RequestCharged? requestCharged,
      _i9.StorageClass? storageClass,
      String? uploadId}) {
    return _$ListPartsOutput._(
        abortDate: abortDate,
        abortRuleId: abortRuleId,
        bucket: bucket,
        checksumAlgorithm: checksumAlgorithm,
        initiator: initiator,
        isTruncated: isTruncated,
        key: key,
        maxParts: maxParts,
        nextPartNumberMarker: nextPartNumberMarker,
        owner: owner,
        partNumberMarker: partNumberMarker,
        parts: parts,
        requestCharged: requestCharged,
        storageClass: storageClass,
        uploadId: uploadId);
  }

  factory ListPartsOutput.build(
      [void Function(ListPartsOutputBuilder) updates]) = _$ListPartsOutput;

  const ListPartsOutput._();

  /// Constructs a [ListPartsOutput] from a [payload] and [response].
  factory ListPartsOutput.fromResponse(
          ListPartsOutputPayload payload, _i1.AWSBaseHttpResponse response) =>
      ListPartsOutput.build((b) {
        b.bucket = payload.bucket;
        b.checksumAlgorithm = payload.checksumAlgorithm;
        if (payload.initiator != null) {
          b.initiator.replace(payload.initiator!);
        }
        b.isTruncated = payload.isTruncated;
        b.key = payload.key;
        b.maxParts = payload.maxParts;
        b.nextPartNumberMarker = payload.nextPartNumberMarker;
        if (payload.owner != null) {
          b.owner.replace(payload.owner!);
        }
        b.partNumberMarker = payload.partNumberMarker;
        if (payload.parts != null) {
          b.parts.replace(payload.parts!);
        }
        b.storageClass = payload.storageClass;
        b.uploadId = payload.uploadId;
        if (response.headers['x-amz-abort-date'] != null) {
          b.abortDate = _i2.Timestamp.parse(
                  response.headers['x-amz-abort-date']!,
                  format: _i2.TimestampFormat.httpDate)
              .asDateTime;
        }
        if (response.headers['x-amz-abort-rule-id'] != null) {
          b.abortRuleId = response.headers['x-amz-abort-rule-id']!;
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i8.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    ListPartsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPartsOutputBuilder b) {}

  /// If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, then the response includes this header indicating when the initiated multipart upload will become eligible for abort operation. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).
  ///
  /// The response will also include the `x-amz-abort-rule-id` header that will provide the ID of the lifecycle configuration rule that defines this action.
  DateTime? get abortDate;

  /// This header is returned along with the `x-amz-abort-date` header. It identifies applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
  String? get abortRuleId;

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  String? get bucket;

  /// The algorithm that was used to create a checksum of the object.
  _i3.ChecksumAlgorithm? get checksumAlgorithm;

  /// Container element that identifies who initiated the multipart upload. If the initiator is an Amazon Web Services account, this element provides the same information as the `Owner` element. If the initiator is an IAM User, this element provides the user ARN and display name.
  _i4.Initiator? get initiator;

  /// Indicates whether the returned list of parts is truncated. A true value indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the MaxParts element.
  bool? get isTruncated;

  /// Object key for which the multipart upload was initiated.
  String? get key;

  /// Maximum number of parts that were allowed in the response.
  int? get maxParts;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
  String? get nextPartNumberMarker;

  /// Container element that identifies the object owner, after the object is created. If multipart upload is initiated by an IAM user, this element provides the parent account ID and display name.
  _i5.Owner? get owner;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
  String? get partNumberMarker;

  /// Container for elements related to a particular part. A response can contain zero or more `Part` elements.
  _i6.BuiltList<_i7.Part>? get parts;

  /// If present, indicates that the requester was successfully charged for the request.
  _i8.RequestCharged? get requestCharged;

  /// Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded object.
  _i9.StorageClass? get storageClass;

  /// Upload ID identifying the multipart upload whose parts are being listed.
  String? get uploadId;
  @override
  ListPartsOutputPayload getPayload() => ListPartsOutputPayload((b) {
        b.bucket = bucket;
        b.checksumAlgorithm = checksumAlgorithm;
        if (initiator != null) {
          b.initiator.replace(initiator!);
        }
        b.isTruncated = isTruncated;
        b.key = key;
        b.maxParts = maxParts;
        b.nextPartNumberMarker = nextPartNumberMarker;
        if (owner != null) {
          b.owner.replace(owner!);
        }
        b.partNumberMarker = partNumberMarker;
        if (parts != null) {
          b.parts.replace(parts!);
        }
        b.storageClass = storageClass;
        b.uploadId = uploadId;
      });
  @override
  List<Object?> get props => [
        abortDate,
        abortRuleId,
        bucket,
        checksumAlgorithm,
        initiator,
        isTruncated,
        key,
        maxParts,
        nextPartNumberMarker,
        owner,
        partNumberMarker,
        parts,
        requestCharged,
        storageClass,
        uploadId
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPartsOutput');
    helper.add('abortDate', abortDate);
    helper.add('abortRuleId', abortRuleId);
    helper.add('bucket', bucket);
    helper.add('checksumAlgorithm', checksumAlgorithm);
    helper.add('initiator', initiator);
    helper.add('isTruncated', isTruncated);
    helper.add('key', key);
    helper.add('maxParts', maxParts);
    helper.add('nextPartNumberMarker', nextPartNumberMarker);
    helper.add('owner', owner);
    helper.add('partNumberMarker', partNumberMarker);
    helper.add('parts', parts);
    helper.add('requestCharged', requestCharged);
    helper.add('storageClass', storageClass);
    helper.add('uploadId', uploadId);
    return helper.toString();
  }
}

@_i10.internal
abstract class ListPartsOutputPayload
    with _i1.AWSEquatable<ListPartsOutputPayload>
    implements Built<ListPartsOutputPayload, ListPartsOutputPayloadBuilder> {
  factory ListPartsOutputPayload(
          [void Function(ListPartsOutputPayloadBuilder) updates]) =
      _$ListPartsOutputPayload;

  const ListPartsOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPartsOutputPayloadBuilder b) {}

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  String? get bucket;

  /// The algorithm that was used to create a checksum of the object.
  _i3.ChecksumAlgorithm? get checksumAlgorithm;

  /// Container element that identifies who initiated the multipart upload. If the initiator is an Amazon Web Services account, this element provides the same information as the `Owner` element. If the initiator is an IAM User, this element provides the user ARN and display name.
  _i4.Initiator? get initiator;

  /// Indicates whether the returned list of parts is truncated. A true value indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the MaxParts element.
  bool? get isTruncated;

  /// Object key for which the multipart upload was initiated.
  String? get key;

  /// Maximum number of parts that were allowed in the response.
  int? get maxParts;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
  String? get nextPartNumberMarker;

  /// Container element that identifies the object owner, after the object is created. If multipart upload is initiated by an IAM user, this element provides the parent account ID and display name.
  _i5.Owner? get owner;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
  String? get partNumberMarker;

  /// Container for elements related to a particular part. A response can contain zero or more `Part` elements.
  _i6.BuiltList<_i7.Part>? get parts;

  /// Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded object.
  _i9.StorageClass? get storageClass;

  /// Upload ID identifying the multipart upload whose parts are being listed.
  String? get uploadId;
  @override
  List<Object?> get props => [
        bucket,
        checksumAlgorithm,
        initiator,
        isTruncated,
        key,
        maxParts,
        nextPartNumberMarker,
        owner,
        partNumberMarker,
        parts,
        storageClass,
        uploadId
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPartsOutputPayload');
    helper.add('bucket', bucket);
    helper.add('checksumAlgorithm', checksumAlgorithm);
    helper.add('initiator', initiator);
    helper.add('isTruncated', isTruncated);
    helper.add('key', key);
    helper.add('maxParts', maxParts);
    helper.add('nextPartNumberMarker', nextPartNumberMarker);
    helper.add('owner', owner);
    helper.add('partNumberMarker', partNumberMarker);
    helper.add('parts', parts);
    helper.add('storageClass', storageClass);
    helper.add('uploadId', uploadId);
    return helper.toString();
  }
}

class ListPartsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<ListPartsOutputPayload> {
  const ListPartsOutputRestXmlSerializer() : super('ListPartsOutput');

  @override
  Iterable<Type> get types => const [
        ListPartsOutput,
        _$ListPartsOutput,
        ListPartsOutputPayload,
        _$ListPartsOutputPayload
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  ListPartsOutputPayload deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = ListPartsOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Bucket':
          if (value != null) {
            result.bucket = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'ChecksumAlgorithm':
          if (value != null) {
            result.checksumAlgorithm = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ChecksumAlgorithm))
                as _i3.ChecksumAlgorithm);
          }
          break;
        case 'Initiator':
          if (value != null) {
            result.initiator.replace((serializers.deserialize(value,
                    specifiedType: const FullType(_i4.Initiator))
                as _i4.Initiator));
          }
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(value,
                specifiedType: const FullType(bool)) as bool);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'MaxParts':
          if (value != null) {
            result.maxParts = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'NextPartNumberMarker':
          if (value != null) {
            result.nextPartNumberMarker = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i5.Owner)) as _i5.Owner));
          }
          break;
        case 'PartNumberMarker':
          if (value != null) {
            result.partNumberMarker = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Part':
          if (value != null) {
            result.parts.add((serializers.deserialize(value,
                specifiedType: const FullType(_i7.Part)) as _i7.Part));
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(value,
                    specifiedType: const FullType(_i9.StorageClass))
                as _i9.StorageClass);
          }
          break;
        case 'UploadId':
          if (value != null) {
            result.uploadId = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = object is ListPartsOutput
        ? object.getPayload()
        : (object as ListPartsOutputPayload);
    final result = <Object?>[
      const _i2.XmlElementName('ListPartsResult',
          _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.bucket != null) {
      result
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(payload.bucket!,
            specifiedType: const FullType(String)));
    }
    if (payload.checksumAlgorithm != null) {
      result
        ..add(const _i2.XmlElementName('ChecksumAlgorithm'))
        ..add(serializers.serialize(payload.checksumAlgorithm!,
            specifiedType: const FullType.nullable(_i3.ChecksumAlgorithm)));
    }
    if (payload.initiator != null) {
      result
        ..add(const _i2.XmlElementName('Initiator'))
        ..add(serializers.serialize(payload.initiator!,
            specifiedType: const FullType(_i4.Initiator)));
    }
    if (payload.isTruncated != null) {
      result
        ..add(const _i2.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(payload.isTruncated!,
            specifiedType: const FullType.nullable(bool)));
    }
    if (payload.key != null) {
      result
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(payload.key!,
            specifiedType: const FullType(String)));
    }
    if (payload.maxParts != null) {
      result
        ..add(const _i2.XmlElementName('MaxParts'))
        ..add(serializers.serialize(payload.maxParts!,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.nextPartNumberMarker != null) {
      result
        ..add(const _i2.XmlElementName('NextPartNumberMarker'))
        ..add(serializers.serialize(payload.nextPartNumberMarker!,
            specifiedType: const FullType(String)));
    }
    if (payload.owner != null) {
      result
        ..add(const _i2.XmlElementName('Owner'))
        ..add(serializers.serialize(payload.owner!,
            specifiedType: const FullType(_i5.Owner)));
    }
    if (payload.partNumberMarker != null) {
      result
        ..add(const _i2.XmlElementName('PartNumberMarker'))
        ..add(serializers.serialize(payload.partNumberMarker!,
            specifiedType: const FullType(String)));
    }
    if (payload.parts != null) {
      result.addAll(const _i2.XmlBuiltListSerializer(memberName: 'Part')
          .serialize(serializers, payload.parts!,
              specifiedType: const FullType.nullable(
                  _i6.BuiltList, [FullType(_i7.Part)])));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(payload.storageClass!,
            specifiedType: const FullType.nullable(_i9.StorageClass)));
    }
    if (payload.uploadId != null) {
      result
        ..add(const _i2.XmlElementName('UploadId'))
        ..add(serializers.serialize(payload.uploadId!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
