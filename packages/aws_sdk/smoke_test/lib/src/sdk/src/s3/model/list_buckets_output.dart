// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.list_buckets_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/bucket.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart' as _i3;

part 'list_buckets_output.g.dart';

abstract class ListBucketsOutput
    with _i1.AWSEquatable<ListBucketsOutput>
    implements Built<ListBucketsOutput, ListBucketsOutputBuilder> {
  factory ListBucketsOutput({
    List<_i2.Bucket>? buckets,
    _i3.Owner? owner,
  }) {
    return _$ListBucketsOutput._(
      buckets: buckets == null ? null : _i4.BuiltList(buckets),
      owner: owner,
    );
  }

  factory ListBucketsOutput.build(
      [void Function(ListBucketsOutputBuilder) updates]) = _$ListBucketsOutput;

  const ListBucketsOutput._();

  /// Constructs a [ListBucketsOutput] from a [payload] and [response].
  factory ListBucketsOutput.fromResponse(
    ListBucketsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    ListBucketsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketsOutputBuilder b) {}

  /// The list of buckets owned by the requester.
  _i4.BuiltList<_i2.Bucket>? get buckets;

  /// The owner of the buckets listed.
  _i3.Owner? get owner;
  @override
  List<Object?> get props => [
        buckets,
        owner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListBucketsOutput');
    helper.add(
      'buckets',
      buckets,
    );
    helper.add(
      'owner',
      owner,
    );
    return helper.toString();
  }
}

class ListBucketsOutputRestXmlSerializer
    extends _i5.StructuredSmithySerializer<ListBucketsOutput> {
  const ListBucketsOutputRestXmlSerializer() : super('ListBucketsOutput');

  @override
  Iterable<Type> get types => const [
        ListBucketsOutput,
        _$ListBucketsOutput,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBucketsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Buckets':
          if (value != null) {
            result.buckets.replace(
                (const _i5.XmlBuiltListSerializer(memberName: 'Bucket')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.Bucket)],
              ),
            ) as _i4.BuiltList<_i2.Bucket>));
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
    final payload = (object as ListBucketsOutput);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ListAllMyBucketsResult',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.buckets != null) {
      result
        ..add(const _i5.XmlElementName('Buckets'))
        ..add(const _i5.XmlBuiltListSerializer(memberName: 'Bucket').serialize(
          serializers,
          payload.buckets!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.Bucket)],
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
