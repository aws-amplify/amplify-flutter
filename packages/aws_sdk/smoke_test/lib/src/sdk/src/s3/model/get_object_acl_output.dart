// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.get_object_acl_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i7;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i5;

part 'get_object_acl_output.g.dart';

abstract class GetObjectAclOutput
    with _i1.AWSEquatable<GetObjectAclOutput>
    implements
        Built<GetObjectAclOutput, GetObjectAclOutputBuilder>,
        _i2.HasPayload<GetObjectAclOutputPayload> {
  factory GetObjectAclOutput({
    List<_i3.Grant>? grants,
    _i4.Owner? owner,
    _i5.RequestCharged? requestCharged,
  }) {
    return _$GetObjectAclOutput._(
      grants: grants == null ? null : _i6.BuiltList(grants),
      owner: owner,
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
          b.requestCharged = _i5.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    GetObjectAclOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAclOutputBuilder b) {}

  /// A list of grants.
  _i6.BuiltList<_i3.Grant>? get grants;

  /// Container for the bucket owner's display name and ID.
  _i4.Owner? get owner;

  /// If present, indicates that the requester was successfully charged for the request.
  _i5.RequestCharged? get requestCharged;
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
        grants,
        owner,
        requestCharged,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAclOutput');
    helper.add(
      'grants',
      grants,
    );
    helper.add(
      'owner',
      owner,
    );
    helper.add(
      'requestCharged',
      requestCharged,
    );
    return helper.toString();
  }
}

@_i7.internal
abstract class GetObjectAclOutputPayload
    with _i1.AWSEquatable<GetObjectAclOutputPayload>
    implements
        Built<GetObjectAclOutputPayload, GetObjectAclOutputPayloadBuilder> {
  factory GetObjectAclOutputPayload(
          [void Function(GetObjectAclOutputPayloadBuilder) updates]) =
      _$GetObjectAclOutputPayload;

  const GetObjectAclOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetObjectAclOutputPayloadBuilder b) {}

  /// A list of grants.
  _i6.BuiltList<_i3.Grant>? get grants;

  /// Container for the bucket owner's display name and ID.
  _i4.Owner? get owner;
  @override
  List<Object?> get props => [
        grants,
        owner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetObjectAclOutputPayload');
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessControlList':
          if (value != null) {
            result.grants.replace(
                (const _i2.XmlBuiltListSerializer(memberName: 'Grant')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.Grant)],
              ),
            ) as _i6.BuiltList<_i3.Grant>));
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Owner),
            ) as _i4.Owner));
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
    final payload = object is GetObjectAclOutput
        ? object.getPayload()
        : (object as GetObjectAclOutputPayload);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AccessControlPolicy',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.grants != null) {
      result
        ..add(const _i2.XmlElementName('AccessControlList'))
        ..add(const _i2.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          payload.grants!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.Grant)],
          ),
        ));
    }
    if (payload.owner != null) {
      result
        ..add(const _i2.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(_i4.Owner),
        ));
    }
    return result;
  }
}
