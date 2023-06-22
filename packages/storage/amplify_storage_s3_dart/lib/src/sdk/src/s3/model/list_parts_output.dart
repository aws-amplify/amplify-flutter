// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.list_parts_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/checksum_algorithm.dart'
    as _i8;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/initiator.dart'
    as _i4;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/owner.dart' as _i5;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/part.dart' as _i3;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/request_charged.dart'
    as _i7;
import 'package:amplify_storage_s3_dart/src/sdk/src/s3/model/storage_class.dart'
    as _i6;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i9;
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
  factory ListPartsOutput({
    DateTime? abortDate,
    String? abortRuleId,
    String? bucket,
    String? key,
    String? uploadId,
    String? partNumberMarker,
    String? nextPartNumberMarker,
    int? maxParts,
    bool? isTruncated,
    List<_i3.Part>? parts,
    _i4.Initiator? initiator,
    _i5.Owner? owner,
    _i6.StorageClass? storageClass,
    _i7.RequestCharged? requestCharged,
    _i8.ChecksumAlgorithm? checksumAlgorithm,
  }) {
    return _$ListPartsOutput._(
      abortDate: abortDate,
      abortRuleId: abortRuleId,
      bucket: bucket,
      key: key,
      uploadId: uploadId,
      partNumberMarker: partNumberMarker,
      nextPartNumberMarker: nextPartNumberMarker,
      maxParts: maxParts,
      isTruncated: isTruncated,
      parts: parts == null ? null : _i9.BuiltList(parts),
      initiator: initiator,
      owner: owner,
      storageClass: storageClass,
      requestCharged: requestCharged,
      checksumAlgorithm: checksumAlgorithm,
    );
  }

  factory ListPartsOutput.build(
      [void Function(ListPartsOutputBuilder) updates]) = _$ListPartsOutput;

  const ListPartsOutput._();

  /// Constructs a [ListPartsOutput] from a [payload] and [response].
  factory ListPartsOutput.fromResponse(
    ListPartsOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
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
            format: _i2.TimestampFormat.httpDate,
          ).asDateTime;
        }
        if (response.headers['x-amz-abort-rule-id'] != null) {
          b.abortRuleId = response.headers['x-amz-abort-rule-id']!;
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i7.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<ListPartsOutputPayload>> serializers =
      [ListPartsOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListPartsOutputBuilder b) {}

  /// If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads and the prefix in the lifecycle rule matches the object name in the request, then the response includes this header indicating when the initiated multipart upload will become eligible for abort operation. For more information, see [Aborting Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config).
  ///
  /// The response will also include the `x-amz-abort-rule-id` header that will provide the ID of the lifecycle configuration rule that defines this action.
  DateTime? get abortDate;

  /// This header is returned along with the `x-amz-abort-date` header. It identifies applicable lifecycle configuration rule that defines the action to abort incomplete multipart uploads.
  String? get abortRuleId;

  /// The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or access point alias if used.
  String? get bucket;

  /// Object key for which the multipart upload was initiated.
  String? get key;

  /// Upload ID identifying the multipart upload whose parts are being listed.
  String? get uploadId;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
  String? get partNumberMarker;

  /// When a list is truncated, this element specifies the last part in the list, as well as the value to use for the part-number-marker request parameter in a subsequent request.
  String? get nextPartNumberMarker;

  /// Maximum number of parts that were allowed in the response.
  int? get maxParts;

  /// Indicates whether the returned list of parts is truncated. A true value indicates that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned in the MaxParts element.
  bool? get isTruncated;

  /// Container for elements related to a particular part. A response can contain zero or more `Part` elements.
  _i9.BuiltList<_i3.Part>? get parts;

  /// Container element that identifies who initiated the multipart upload. If the initiator is an Amazon Web Services account, this element provides the same information as the `Owner` element. If the initiator is an IAM User, this element provides the user ARN and display name.
  _i4.Initiator? get initiator;

  /// Container element that identifies the object owner, after the object is created. If multipart upload is initiated by an IAM user, this element provides the parent account ID and display name.
  _i5.Owner? get owner;

  /// Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded object.
  _i6.StorageClass? get storageClass;

  /// If present, indicates that the requester was successfully charged for the request.
  _i7.RequestCharged? get requestCharged;

  /// The algorithm that was used to create a checksum of the object.
  _i8.ChecksumAlgorithm? get checksumAlgorithm;
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
        key,
        uploadId,
        partNumberMarker,
        nextPartNumberMarker,
        maxParts,
        isTruncated,
        parts,
        initiator,
        owner,
        storageClass,
        requestCharged,
        checksumAlgorithm,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPartsOutput')
      ..add(
        'abortDate',
        abortDate,
      )
      ..add(
        'abortRuleId',
        abortRuleId,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'uploadId',
        uploadId,
      )
      ..add(
        'partNumberMarker',
        partNumberMarker,
      )
      ..add(
        'nextPartNumberMarker',
        nextPartNumberMarker,
      )
      ..add(
        'maxParts',
        maxParts,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'parts',
        parts,
      )
      ..add(
        'initiator',
        initiator,
      )
      ..add(
        'owner',
        owner,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'requestCharged',
        requestCharged,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      );
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
  _i8.ChecksumAlgorithm? get checksumAlgorithm;

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
  _i9.BuiltList<_i3.Part>? get parts;

  /// Class of storage (STANDARD or REDUCED_REDUNDANCY) used to store the uploaded object.
  _i6.StorageClass? get storageClass;

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
        uploadId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListPartsOutputPayload')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'checksumAlgorithm',
        checksumAlgorithm,
      )
      ..add(
        'initiator',
        initiator,
      )
      ..add(
        'isTruncated',
        isTruncated,
      )
      ..add(
        'key',
        key,
      )
      ..add(
        'maxParts',
        maxParts,
      )
      ..add(
        'nextPartNumberMarker',
        nextPartNumberMarker,
      )
      ..add(
        'owner',
        owner,
      )
      ..add(
        'partNumberMarker',
        partNumberMarker,
      )
      ..add(
        'parts',
        parts,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'uploadId',
        uploadId,
      );
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
        _$ListPartsOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListPartsOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListPartsOutputPayloadBuilder();
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
        case 'ChecksumAlgorithm':
          result.checksumAlgorithm = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.ChecksumAlgorithm),
          ) as _i8.ChecksumAlgorithm);
        case 'Initiator':
          result.initiator.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Initiator),
          ) as _i4.Initiator));
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxParts':
          result.maxParts = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextPartNumberMarker':
          result.nextPartNumberMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Owner),
          ) as _i5.Owner));
        case 'PartNumberMarker':
          result.partNumberMarker = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Part':
          result.parts.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Part),
          ) as _i3.Part));
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.StorageClass),
          ) as _i6.StorageClass);
        case 'UploadId':
          result.uploadId = (serializers.deserialize(
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
    ListPartsOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ListPartsResult',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListPartsOutputPayload(
      :bucket,
      :checksumAlgorithm,
      :initiator,
      :isTruncated,
      :key,
      :maxParts,
      :nextPartNumberMarker,
      :owner,
      :partNumberMarker,
      :parts,
      :storageClass,
      :uploadId
    ) = object;
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
          specifiedType: const FullType(String),
        ));
    }
    if (checksumAlgorithm != null) {
      result$
        ..add(const _i2.XmlElementName('ChecksumAlgorithm'))
        ..add(serializers.serialize(
          checksumAlgorithm,
          specifiedType: const FullType.nullable(_i8.ChecksumAlgorithm),
        ));
    }
    if (initiator != null) {
      result$
        ..add(const _i2.XmlElementName('Initiator'))
        ..add(serializers.serialize(
          initiator,
          specifiedType: const FullType(_i4.Initiator),
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
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (maxParts != null) {
      result$
        ..add(const _i2.XmlElementName('MaxParts'))
        ..add(serializers.serialize(
          maxParts,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (nextPartNumberMarker != null) {
      result$
        ..add(const _i2.XmlElementName('NextPartNumberMarker'))
        ..add(serializers.serialize(
          nextPartNumberMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i2.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i5.Owner),
        ));
    }
    if (partNumberMarker != null) {
      result$
        ..add(const _i2.XmlElementName('PartNumberMarker'))
        ..add(serializers.serialize(
          partNumberMarker,
          specifiedType: const FullType(String),
        ));
    }
    if (parts != null) {
      result$.addAll(
          const _i2.XmlBuiltListSerializer(memberName: 'Part').serialize(
        serializers,
        parts,
        specifiedType: const FullType.nullable(
          _i9.BuiltList,
          [FullType(_i3.Part)],
        ),
      ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(_i6.StorageClass),
        ));
    }
    if (uploadId != null) {
      result$
        ..add(const _i2.XmlElementName('UploadId'))
        ..add(serializers.serialize(
          uploadId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
