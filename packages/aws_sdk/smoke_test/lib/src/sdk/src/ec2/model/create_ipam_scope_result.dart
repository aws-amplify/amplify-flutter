// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_ipam_scope_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart';

part 'create_ipam_scope_result.g.dart';

abstract class CreateIpamScopeResult
    with _i1.AWSEquatable<CreateIpamScopeResult>
    implements Built<CreateIpamScopeResult, CreateIpamScopeResultBuilder> {
  factory CreateIpamScopeResult({IpamScope? ipamScope}) {
    return _$CreateIpamScopeResult._(ipamScope: ipamScope);
  }

  factory CreateIpamScopeResult.build(
          [void Function(CreateIpamScopeResultBuilder) updates]) =
      _$CreateIpamScopeResult;

  const CreateIpamScopeResult._();

  /// Constructs a [CreateIpamScopeResult] from a [payload] and [response].
  factory CreateIpamScopeResult.fromResponse(
    CreateIpamScopeResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateIpamScopeResult>> serializers = [
    CreateIpamScopeResultEc2QuerySerializer()
  ];

  /// Information about the created scope.
  IpamScope? get ipamScope;
  @override
  List<Object?> get props => [ipamScope];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateIpamScopeResult')
      ..add(
        'ipamScope',
        ipamScope,
      );
    return helper.toString();
  }
}

class CreateIpamScopeResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateIpamScopeResult> {
  const CreateIpamScopeResultEc2QuerySerializer()
      : super('CreateIpamScopeResult');

  @override
  Iterable<Type> get types => const [
        CreateIpamScopeResult,
        _$CreateIpamScopeResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamScopeResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamScopeResultBuilder();
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
    CreateIpamScopeResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateIpamScopeResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateIpamScopeResult(:ipamScope) = object;
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
