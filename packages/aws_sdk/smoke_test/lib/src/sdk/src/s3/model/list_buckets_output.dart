// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.list_buckets_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/bucket.dart';
import 'package:smoke_test/src/sdk/src/s3/model/owner.dart';

part 'list_buckets_output.g.dart';

abstract class ListBucketsOutput
    with _i1.AWSEquatable<ListBucketsOutput>
    implements Built<ListBucketsOutput, ListBucketsOutputBuilder> {
  factory ListBucketsOutput({
    List<Bucket>? buckets,
    Owner? owner,
  }) {
    return _$ListBucketsOutput._(
      buckets: buckets == null ? null : _i2.BuiltList(buckets),
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

  static const List<_i3.SmithySerializer<ListBucketsOutput>> serializers = [
    ListBucketsOutputRestXmlSerializer()
  ];

  /// The list of buckets owned by the requester.
  _i2.BuiltList<Bucket>? get buckets;

  /// The owner of the buckets listed.
  Owner? get owner;
  @override
  List<Object?> get props => [
        buckets,
        owner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListBucketsOutput')
      ..add(
        'buckets',
        buckets,
      )
      ..add(
        'owner',
        owner,
      );
    return helper.toString();
  }
}

class ListBucketsOutputRestXmlSerializer
    extends _i3.StructuredSmithySerializer<ListBucketsOutput> {
  const ListBucketsOutputRestXmlSerializer() : super('ListBucketsOutput');

  @override
  Iterable<Type> get types => const [
        ListBucketsOutput,
        _$ListBucketsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Buckets':
          result.buckets.replace(
              (const _i3.XmlBuiltListSerializer(memberName: 'Bucket')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Bucket)],
            ),
          ) as _i2.BuiltList<Bucket>));
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
    ListBucketsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListAllMyBucketsResult',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListBucketsOutput(:buckets, :owner) = object;
    if (buckets != null) {
      result$
        ..add(const _i3.XmlElementName('Buckets'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'Bucket').serialize(
          serializers,
          buckets,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Bucket)],
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
