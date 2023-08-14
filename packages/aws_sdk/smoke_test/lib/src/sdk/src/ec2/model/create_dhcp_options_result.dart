// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_dhcp_options_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_options.dart';

part 'create_dhcp_options_result.g.dart';

abstract class CreateDhcpOptionsResult
    with _i1.AWSEquatable<CreateDhcpOptionsResult>
    implements Built<CreateDhcpOptionsResult, CreateDhcpOptionsResultBuilder> {
  factory CreateDhcpOptionsResult({DhcpOptions? dhcpOptions}) {
    return _$CreateDhcpOptionsResult._(dhcpOptions: dhcpOptions);
  }

  factory CreateDhcpOptionsResult.build(
          [void Function(CreateDhcpOptionsResultBuilder) updates]) =
      _$CreateDhcpOptionsResult;

  const CreateDhcpOptionsResult._();

  /// Constructs a [CreateDhcpOptionsResult] from a [payload] and [response].
  factory CreateDhcpOptionsResult.fromResponse(
    CreateDhcpOptionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateDhcpOptionsResult>> serializers =
      [CreateDhcpOptionsResultEc2QuerySerializer()];

  /// A set of DHCP options.
  DhcpOptions? get dhcpOptions;
  @override
  List<Object?> get props => [dhcpOptions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateDhcpOptionsResult')
      ..add(
        'dhcpOptions',
        dhcpOptions,
      );
    return helper.toString();
  }
}

class CreateDhcpOptionsResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateDhcpOptionsResult> {
  const CreateDhcpOptionsResultEc2QuerySerializer()
      : super('CreateDhcpOptionsResult');

  @override
  Iterable<Type> get types => const [
        CreateDhcpOptionsResult,
        _$CreateDhcpOptionsResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateDhcpOptionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDhcpOptionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dhcpOptions':
          result.dhcpOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(DhcpOptions),
          ) as DhcpOptions));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateDhcpOptionsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateDhcpOptionsResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateDhcpOptionsResult(:dhcpOptions) = object;
    if (dhcpOptions != null) {
      result$
        ..add(const _i2.XmlElementName('DhcpOptions'))
        ..add(serializers.serialize(
          dhcpOptions,
          specifiedType: const FullType(DhcpOptions),
        ));
    }
    return result$;
  }
}
