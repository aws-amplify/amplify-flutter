// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_versioning_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_versioning_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete_status.dart' as _i2;

part 'get_bucket_versioning_output.g.dart';

abstract class GetBucketVersioningOutput
    with _i1.AWSEquatable<GetBucketVersioningOutput>
    implements
        Built<GetBucketVersioningOutput, GetBucketVersioningOutputBuilder> {
  factory GetBucketVersioningOutput({
    _i2.MfaDeleteStatus? mfaDelete,
    _i3.BucketVersioningStatus? status,
  }) {
    return _$GetBucketVersioningOutput._(
      mfaDelete: mfaDelete,
      status: status,
    );
  }

  factory GetBucketVersioningOutput.build(
          [void Function(GetBucketVersioningOutputBuilder) updates]) =
      _$GetBucketVersioningOutput;

  const GetBucketVersioningOutput._();

  /// Constructs a [GetBucketVersioningOutput] from a [payload] and [response].
  factory GetBucketVersioningOutput.fromResponse(
    GetBucketVersioningOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetBucketVersioningOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketVersioningOutputBuilder b) {}

  /// Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
  _i2.MfaDeleteStatus? get mfaDelete;

  /// The versioning state of the bucket.
  _i3.BucketVersioningStatus? get status;
  @override
  List<Object?> get props => [
        mfaDelete,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketVersioningOutput');
    helper.add(
      'mfaDelete',
      mfaDelete,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class GetBucketVersioningOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<GetBucketVersioningOutput> {
  const GetBucketVersioningOutputRestXmlSerializer()
      : super('GetBucketVersioningOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketVersioningOutput,
        _$GetBucketVersioningOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketVersioningOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketVersioningOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MfaDelete':
          if (value != null) {
            result.mfaDelete = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MfaDeleteStatus),
            ) as _i2.MfaDeleteStatus);
          }
          break;
        case 'Status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.BucketVersioningStatus),
            ) as _i3.BucketVersioningStatus);
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
    final payload = (object as GetBucketVersioningOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'VersioningConfiguration',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.mfaDelete != null) {
      result
        ..add(const _i4.XmlElementName('MfaDelete'))
        ..add(serializers.serialize(
          payload.mfaDelete!,
          specifiedType: const FullType.nullable(_i2.MfaDeleteStatus),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i4.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.BucketVersioningStatus),
        ));
    }
    return result;
  }
}
