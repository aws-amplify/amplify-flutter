// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_ownership_controls_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/ownership_controls_rule.dart'
    as _i4;

part 'get_bucket_ownership_controls_output.g.dart';

abstract class GetBucketOwnershipControlsOutput
    with
        _i1.AWSEquatable<GetBucketOwnershipControlsOutput>
    implements
        Built<GetBucketOwnershipControlsOutput,
            GetBucketOwnershipControlsOutputBuilder>,
        _i2.HasPayload<_i3.OwnershipControls> {
  factory GetBucketOwnershipControlsOutput(
      {_i3.OwnershipControls? ownershipControls}) {
    return _$GetBucketOwnershipControlsOutput._(
        ownershipControls: ownershipControls);
  }

  factory GetBucketOwnershipControlsOutput.build(
          [void Function(GetBucketOwnershipControlsOutputBuilder) updates]) =
      _$GetBucketOwnershipControlsOutput;

  const GetBucketOwnershipControlsOutput._();

  /// Constructs a [GetBucketOwnershipControlsOutput] from a [payload] and [response].
  factory GetBucketOwnershipControlsOutput.fromResponse(
    _i3.OwnershipControls? payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketOwnershipControlsOutput.build((b) {
        if (payload != null) {
          b.ownershipControls.replace(payload);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetBucketOwnershipControlsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketOwnershipControlsOutputBuilder b) {}

  /// The `OwnershipControls` (BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter) currently in effect for this Amazon S3 bucket.
  _i3.OwnershipControls? get ownershipControls;
  @override
  _i3.OwnershipControls? getPayload() => ownershipControls;
  @override
  List<Object?> get props => [ownershipControls];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketOwnershipControlsOutput');
    helper.add(
      'ownershipControls',
      ownershipControls,
    );
    return helper.toString();
  }
}

class GetBucketOwnershipControlsOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<_i3.OwnershipControls> {
  const GetBucketOwnershipControlsOutputRestXmlSerializer()
      : super('GetBucketOwnershipControlsOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketOwnershipControlsOutput,
        _$GetBucketOwnershipControlsOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i3.OwnershipControls deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i3.OwnershipControlsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Rule':
          result.rules.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.OwnershipControlsRule),
          ) as _i4.OwnershipControlsRule));
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
    final payload = object is GetBucketOwnershipControlsOutput
        ? object.getPayload()
        : (object as _i3.OwnershipControls?);
    final result = <Object?>[
      const _i2.XmlElementName(
        'OwnershipControls',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload == null) {
      return result;
    }
    result
        .addAll(const _i2.XmlBuiltListSerializer(memberName: 'Rule').serialize(
      serializers,
      payload.rules,
      specifiedType: const FullType.nullable(
        _i5.BuiltList,
        [FullType(_i4.OwnershipControlsRule)],
      ),
    ));
    return result;
  }
}
