// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_acl_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i2;

part 'get_bucket_acl_output.g.dart';

abstract class GetBucketAclOutput
    with _i1.AWSEquatable<GetBucketAclOutput>
    implements Built<GetBucketAclOutput, GetBucketAclOutputBuilder> {
  factory GetBucketAclOutput({
    _i2.Owner? owner,
    List<_i3.Grant>? grants,
  }) {
    return _$GetBucketAclOutput._(
      owner: owner,
      grants: grants == null ? null : _i4.BuiltList(grants),
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

  static const List<_i5.SmithySerializer<GetBucketAclOutput>> serializers = [
    GetBucketAclOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAclOutputBuilder b) {}

  /// Container for the bucket owner's display name and ID.
  _i2.Owner? get owner;

  /// A list of grants.
  _i4.BuiltList<_i3.Grant>? get grants;
  @override
  List<Object?> get props => [
        owner,
        grants,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetBucketAclOutput')
      ..add(
        'owner',
        owner,
      )
      ..add(
        'grants',
        grants,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessControlList':
          result.grants.replace(
              (const _i5.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.Grant)],
            ),
          ) as _i4.BuiltList<_i3.Grant>));
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Owner),
          ) as _i2.Owner));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketAclOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'AccessControlPolicy',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketAclOutput(:grants, :owner) = object;
    if (grants != null) {
      result$
        ..add(const _i5.XmlElementName('AccessControlList'))
        ..add(const _i5.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          grants,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Grant)],
          ),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i5.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i2.Owner),
        ));
    }
    return result$;
  }
}
