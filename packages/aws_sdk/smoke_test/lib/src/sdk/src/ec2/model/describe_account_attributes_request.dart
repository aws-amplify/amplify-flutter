// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_account_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/account_attribute_name.dart';

part 'describe_account_attributes_request.g.dart';

abstract class DescribeAccountAttributesRequest
    with
        _i1.HttpInput<DescribeAccountAttributesRequest>,
        _i2.AWSEquatable<DescribeAccountAttributesRequest>
    implements
        Built<DescribeAccountAttributesRequest,
            DescribeAccountAttributesRequestBuilder> {
  factory DescribeAccountAttributesRequest({
    List<AccountAttributeName>? attributeNames,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeAccountAttributesRequest._(
      attributeNames:
          attributeNames == null ? null : _i3.BuiltList(attributeNames),
      dryRun: dryRun,
    );
  }

  factory DescribeAccountAttributesRequest.build(
          [void Function(DescribeAccountAttributesRequestBuilder) updates]) =
      _$DescribeAccountAttributesRequest;

  const DescribeAccountAttributesRequest._();

  factory DescribeAccountAttributesRequest.fromRequest(
    DescribeAccountAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeAccountAttributesRequest>>
      serializers = [DescribeAccountAttributesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAccountAttributesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The account attribute names.
  _i3.BuiltList<AccountAttributeName>? get attributeNames;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAccountAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attributeNames,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAccountAttributesRequest')
          ..add(
            'attributeNames',
            attributeNames,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class DescribeAccountAttributesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAccountAttributesRequest> {
  const DescribeAccountAttributesRequestEc2QuerySerializer()
      : super('DescribeAccountAttributesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAccountAttributesRequest,
        _$DescribeAccountAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAccountAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAccountAttributesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attributeName':
          result.attributeNames.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'attributeName',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AccountAttributeName)],
            ),
          ) as _i3.BuiltList<AccountAttributeName>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeAccountAttributesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeAccountAttributesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeAccountAttributesRequest(:attributeNames, :dryRun) = object;
    if (attributeNames != null) {
      result$
        ..add(const _i1.XmlElementName('AttributeName'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'attributeName',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          attributeNames,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(AccountAttributeName)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
