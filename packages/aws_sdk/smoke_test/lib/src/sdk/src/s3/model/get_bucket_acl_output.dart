// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_bucket_acl_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart';
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart';

part 'get_bucket_acl_output.g.dart';

abstract class GetBucketAclOutput
    with _i1.AWSEquatable<GetBucketAclOutput>
    implements Built<GetBucketAclOutput, GetBucketAclOutputBuilder> {
  factory GetBucketAclOutput({
    Owner? owner,
    List<Grant>? grants,
  }) {
    return _$GetBucketAclOutput._(
      owner: owner,
      grants: grants == null ? null : _i2.BuiltList(grants),
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

  static const List<_i3.SmithySerializer<GetBucketAclOutput>> serializers = [
    GetBucketAclOutputRestXmlSerializer()
  ];

  /// Container for the bucket owner's display name and ID.
  Owner? get owner;

  /// A list of grants.
  _i2.BuiltList<Grant>? get grants;
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
    extends _i3.StructuredSmithySerializer<GetBucketAclOutput> {
  const GetBucketAclOutputRestXmlSerializer() : super('GetBucketAclOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketAclOutput,
        _$GetBucketAclOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
              (const _i3.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Grant)],
            ),
          ) as _i2.BuiltList<Grant>));
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Owner),
          ) as Owner));
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
      const _i3.XmlElementName(
        'AccessControlPolicy',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketAclOutput(:grants, :owner) = object;
    if (grants != null) {
      result$
        ..add(const _i3.XmlElementName('AccessControlList'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          grants,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Grant)],
          ),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i3.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(Owner),
        ));
    }
    return result$;
  }
}
