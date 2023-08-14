// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_acl_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart';

part 'create_network_acl_result.g.dart';

abstract class CreateNetworkAclResult
    with _i1.AWSEquatable<CreateNetworkAclResult>
    implements Built<CreateNetworkAclResult, CreateNetworkAclResultBuilder> {
  factory CreateNetworkAclResult({NetworkAcl? networkAcl}) {
    return _$CreateNetworkAclResult._(networkAcl: networkAcl);
  }

  factory CreateNetworkAclResult.build(
          [void Function(CreateNetworkAclResultBuilder) updates]) =
      _$CreateNetworkAclResult;

  const CreateNetworkAclResult._();

  /// Constructs a [CreateNetworkAclResult] from a [payload] and [response].
  factory CreateNetworkAclResult.fromResponse(
    CreateNetworkAclResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateNetworkAclResult>> serializers =
      [CreateNetworkAclResultEc2QuerySerializer()];

  /// Information about the network ACL.
  NetworkAcl? get networkAcl;
  @override
  List<Object?> get props => [networkAcl];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkAclResult')
      ..add(
        'networkAcl',
        networkAcl,
      );
    return helper.toString();
  }
}

class CreateNetworkAclResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateNetworkAclResult> {
  const CreateNetworkAclResultEc2QuerySerializer()
      : super('CreateNetworkAclResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkAclResult,
        _$CreateNetworkAclResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkAclResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkAclResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkAcl':
          result.networkAcl.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkAcl),
          ) as NetworkAcl));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateNetworkAclResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateNetworkAclResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkAclResult(:networkAcl) = object;
    if (networkAcl != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkAcl'))
        ..add(serializers.serialize(
          networkAcl,
          specifiedType: const FullType(NetworkAcl),
        ));
    }
    return result$;
  }
}
