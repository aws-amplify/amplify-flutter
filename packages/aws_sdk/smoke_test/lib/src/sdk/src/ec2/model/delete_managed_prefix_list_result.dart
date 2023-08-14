// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_managed_prefix_list_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/managed_prefix_list.dart';

part 'delete_managed_prefix_list_result.g.dart';

abstract class DeleteManagedPrefixListResult
    with
        _i1.AWSEquatable<DeleteManagedPrefixListResult>
    implements
        Built<DeleteManagedPrefixListResult,
            DeleteManagedPrefixListResultBuilder> {
  factory DeleteManagedPrefixListResult({ManagedPrefixList? prefixList}) {
    return _$DeleteManagedPrefixListResult._(prefixList: prefixList);
  }

  factory DeleteManagedPrefixListResult.build(
          [void Function(DeleteManagedPrefixListResultBuilder) updates]) =
      _$DeleteManagedPrefixListResult;

  const DeleteManagedPrefixListResult._();

  /// Constructs a [DeleteManagedPrefixListResult] from a [payload] and [response].
  factory DeleteManagedPrefixListResult.fromResponse(
    DeleteManagedPrefixListResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteManagedPrefixListResult>>
      serializers = [DeleteManagedPrefixListResultEc2QuerySerializer()];

  /// Information about the prefix list.
  ManagedPrefixList? get prefixList;
  @override
  List<Object?> get props => [prefixList];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteManagedPrefixListResult')
      ..add(
        'prefixList',
        prefixList,
      );
    return helper.toString();
  }
}

class DeleteManagedPrefixListResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteManagedPrefixListResult> {
  const DeleteManagedPrefixListResultEc2QuerySerializer()
      : super('DeleteManagedPrefixListResult');

  @override
  Iterable<Type> get types => const [
        DeleteManagedPrefixListResult,
        _$DeleteManagedPrefixListResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteManagedPrefixListResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteManagedPrefixListResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'prefixList':
          result.prefixList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ManagedPrefixList),
          ) as ManagedPrefixList));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteManagedPrefixListResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteManagedPrefixListResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteManagedPrefixListResult(:prefixList) = object;
    if (prefixList != null) {
      result$
        ..add(const _i2.XmlElementName('PrefixList'))
        ..add(serializers.serialize(
          prefixList,
          specifiedType: const FullType(ManagedPrefixList),
        ));
    }
    return result$;
  }
}
