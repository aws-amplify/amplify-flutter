// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.get_bucket_acl_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i3;

part 'get_bucket_acl_output.g.dart';

abstract class GetBucketAclOutput
    with _i1.AWSEquatable<GetBucketAclOutput>
    implements Built<GetBucketAclOutput, GetBucketAclOutputBuilder> {
  factory GetBucketAclOutput({
    List<_i2.Grant>? grants,
    _i3.Owner? owner,
  }) {
    return _$GetBucketAclOutput._(
      grants: grants == null ? null : _i4.BuiltList(grants),
      owner: owner,
    );
  }

  factory GetBucketAclOutput.build(
          [void Function(GetBucketAclOutputBuilder) updates]) =
      _$GetBucketAclOutput;

  const GetBucketAclOutput._();

  /// Constructs a [GetBucketAclOutput] from a [payload] and [response].
  factory GetBucketAclOutput.fromResponse(
    GetBucketAclOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    GetBucketAclOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAclOutputBuilder b) {}

  /// A list of grants.
  _i4.BuiltList<_i2.Grant>? get grants;

  /// Container for the bucket owner's display name and ID.
  _i3.Owner? get owner;
  @override
  List<Object?> get props => [
        grants,
        owner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketAclOutput');
    helper.add(
      'grants',
      grants,
    );
    helper.add(
      'owner',
      owner,
    );
    return helper.toString();
  }
}

class GetBucketAclOutputRestXmlSerializer
    extends _i5.StructuredSmithySerializer<GetBucketAclOutput> {
  const GetBucketAclOutputRestXmlSerializer() : super('GetBucketAclOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketAclOutput,
        _$GetBucketAclOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketAclOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketAclOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessControlList':
          if (value != null) {
            result.grants.replace(
                (const _i5.XmlBuiltListSerializer(memberName: 'Grant')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.Grant)],
              ),
            ) as _i4.BuiltList<_i2.Grant>));
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Owner),
            ) as _i3.Owner));
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
    final payload = (object as GetBucketAclOutput);
    final result = <Object?>[
      const _i5.XmlElementName(
        'AccessControlPolicy',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.grants != null) {
      result
        ..add(const _i5.XmlElementName('AccessControlList'))
        ..add(const _i5.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          payload.grants!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.Grant)],
          ),
        ));
    }
    if (payload.owner != null) {
      result
        ..add(const _i5.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(_i3.Owner),
        ));
    }
    return result;
  }
}
