// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.get_object_acl_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart';
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart';
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart';

part 'get_object_acl_output.g.dart';

abstract class GetObjectAclOutput
    with _i1.AWSEquatable<GetObjectAclOutput>
    implements
        Built<GetObjectAclOutput, GetObjectAclOutputBuilder>,
        _i2.HasPayload<GetObjectAclOutputPayload> {
  factory GetObjectAclOutput({
    Owner? owner,
    List<Grant>? grants,
    RequestCharged? requestCharged,
  }) {
    return _$GetObjectAclOutput._(
      owner: owner,
      grants: grants == null ? null : _i3.BuiltList(grants),
      requestCharged: requestCharged,
    );
  }

  factory GetObjectAclOutput.build(
          [void Function(GetObjectAclOutputBuilder) updates]) =
      _$GetObjectAclOutput;

  const GetObjectAclOutput._();

  /// Constructs a [GetObjectAclOutput] from a [payload] and [response].
  factory GetObjectAclOutput.fromResponse(
    GetObjectAclOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetObjectAclOutput.build((b) {
        if (payload.grants != null) {
          b.grants.replace(payload.grants!);
        }
        if (payload.owner != null) {
          b.owner.replace(payload.owner!);
        }
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<GetObjectAclOutputPayload>>
      serializers = [GetObjectAclOutputRestXmlSerializer()];

  /// Container for the bucket owner's display name and ID.
  Owner? get owner;

  /// A list of grants.
  _i3.BuiltList<Grant>? get grants;

  /// If present, indicates that the requester was successfully charged for the request.
  RequestCharged? get requestCharged;
  @override
  GetObjectAclOutputPayload getPayload() => GetObjectAclOutputPayload((b) {
        if (grants != null) {
          b.grants.replace(grants!);
        }
        if (owner != null) {
          b.owner.replace(owner!);
        }
      });
  @override
  List<Object?> get props => [
        owner,
        grants,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAclOutput')
      ..add(
        'owner',
        owner,
      )
      ..add(
        'grants',
        grants,
      )
      ..add(
        'requestCharged',
        requestCharged,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class GetObjectAclOutputPayload
    with _i1.AWSEquatable<GetObjectAclOutputPayload>
    implements
        Built<GetObjectAclOutputPayload, GetObjectAclOutputPayloadBuilder> {
  factory GetObjectAclOutputPayload(
          [void Function(GetObjectAclOutputPayloadBuilder) updates]) =
      _$GetObjectAclOutputPayload;

  const GetObjectAclOutputPayload._();

  /// A list of grants.
  _i3.BuiltList<Grant>? get grants;

  /// Container for the bucket owner's display name and ID.
  Owner? get owner;
  @override
  List<Object?> get props => [
        grants,
        owner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAclOutputPayload')
      ..add(
        'grants',
        grants,
      )
      ..add(
        'owner',
        owner,
      );
    return helper.toString();
  }
}

class GetObjectAclOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<GetObjectAclOutputPayload> {
  const GetObjectAclOutputRestXmlSerializer() : super('GetObjectAclOutput');

  @override
  Iterable<Type> get types => const [
        GetObjectAclOutput,
        _$GetObjectAclOutput,
        GetObjectAclOutputPayload,
        _$GetObjectAclOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetObjectAclOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetObjectAclOutputPayloadBuilder();
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
              (const _i2.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Grant)],
            ),
          ) as _i3.BuiltList<Grant>));
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
    GetObjectAclOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AccessControlPolicy',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetObjectAclOutputPayload(:grants, :owner) = object;
    if (grants != null) {
      result$
        ..add(const _i2.XmlElementName('AccessControlList'))
        ..add(const _i2.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          grants,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(Grant)],
          ),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i2.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(Owner),
        ));
    }
    return result$;
  }
}
