// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_versioning_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_versioning_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/mfa_delete_status.dart';

part 'get_bucket_versioning_output.g.dart';

abstract class GetBucketVersioningOutput
    with _i1.AWSEquatable<GetBucketVersioningOutput>
    implements
        Built<GetBucketVersioningOutput, GetBucketVersioningOutputBuilder> {
  factory GetBucketVersioningOutput({
    BucketVersioningStatus? status,
    MfaDeleteStatus? mfaDelete,
  }) {
    return _$GetBucketVersioningOutput._(
      status: status,
      mfaDelete: mfaDelete,
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

  static const List<_i2.SmithySerializer<GetBucketVersioningOutput>>
      serializers = [GetBucketVersioningOutputRestXmlSerializer()];

  /// The versioning state of the bucket.
  BucketVersioningStatus? get status;

  /// Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only returned if the bucket has been configured with MFA delete. If the bucket has never been so configured, this element is not returned.
  MfaDeleteStatus? get mfaDelete;
  @override
  List<Object?> get props => [
        status,
        mfaDelete,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketVersioningOutput')
      ..add(
        'status',
        status,
      )
      ..add(
        'mfaDelete',
        mfaDelete,
      );
    return helper.toString();
  }
}

class GetBucketVersioningOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GetBucketVersioningOutput> {
  const GetBucketVersioningOutputRestXmlSerializer()
      : super('GetBucketVersioningOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketVersioningOutput,
        _$GetBucketVersioningOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'MfaDelete':
          result.mfaDelete = (serializers.deserialize(
            value,
            specifiedType: const FullType(MfaDeleteStatus),
          ) as MfaDeleteStatus);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(BucketVersioningStatus),
          ) as BucketVersioningStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketVersioningOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'VersioningConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketVersioningOutput(:mfaDelete, :status) = object;
    if (mfaDelete != null) {
      result$
        ..add(const _i2.XmlElementName('MfaDelete'))
        ..add(serializers.serialize(
          mfaDelete,
          specifiedType: const FullType.nullable(MfaDeleteStatus),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(BucketVersioningStatus),
        ));
    }
    return result$;
  }
}
