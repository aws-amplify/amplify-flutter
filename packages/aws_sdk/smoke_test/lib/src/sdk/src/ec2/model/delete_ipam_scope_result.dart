// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_ipam_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart';

part 'delete_ipam_scope_result.g.dart';

abstract class DeleteIpamScopeResult
    with _i1.AWSEquatable<DeleteIpamScopeResult>
    implements Built<DeleteIpamScopeResult, DeleteIpamScopeResultBuilder> {
  factory DeleteIpamScopeResult({IpamScope? ipamScope}) {
    return _$DeleteIpamScopeResult._(ipamScope: ipamScope);
  }

  factory DeleteIpamScopeResult.build(
          [void Function(DeleteIpamScopeResultBuilder) updates]) =
      _$DeleteIpamScopeResult;

  const DeleteIpamScopeResult._();

  /// Constructs a [DeleteIpamScopeResult] from a [payload] and [response].
  factory DeleteIpamScopeResult.fromResponse(
    DeleteIpamScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteIpamScopeResult>> serializers = [
    DeleteIpamScopeResultEc2QuerySerializer()
  ];

  /// Information about the results of the deletion.
  IpamScope? get ipamScope;
  @override
  List<Object?> get props => [ipamScope];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamScopeResult')
      ..add(
        'ipamScope',
        ipamScope,
      );
    return helper.toString();
  }
}

class DeleteIpamScopeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteIpamScopeResult> {
  const DeleteIpamScopeResultEc2QuerySerializer()
      : super('DeleteIpamScopeResult');

  @override
  Iterable<Type> get types => const [
        DeleteIpamScopeResult,
        _$DeleteIpamScopeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamScopeResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamScope':
          result.ipamScope.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamScope),
          ) as IpamScope));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteIpamScopeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteIpamScopeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeleteIpamScopeResult(:ipamScope) = object;
    if (ipamScope != null) {
      result$
        ..add(const _i2.XmlElementName('IpamScope'))
        ..add(serializers.serialize(
          ipamScope,
          specifiedType: const FullType(IpamScope),
        ));
    }
    return result$;
  }
}
