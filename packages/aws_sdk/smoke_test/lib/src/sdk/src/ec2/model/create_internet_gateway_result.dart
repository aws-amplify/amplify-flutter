// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_internet_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart';

part 'create_internet_gateway_result.g.dart';

abstract class CreateInternetGatewayResult
    with _i1.AWSEquatable<CreateInternetGatewayResult>
    implements
        Built<CreateInternetGatewayResult, CreateInternetGatewayResultBuilder> {
  factory CreateInternetGatewayResult({InternetGateway? internetGateway}) {
    return _$CreateInternetGatewayResult._(internetGateway: internetGateway);
  }

  factory CreateInternetGatewayResult.build(
          [void Function(CreateInternetGatewayResultBuilder) updates]) =
      _$CreateInternetGatewayResult;

  const CreateInternetGatewayResult._();

  /// Constructs a [CreateInternetGatewayResult] from a [payload] and [response].
  factory CreateInternetGatewayResult.fromResponse(
    CreateInternetGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateInternetGatewayResult>>
      serializers = [CreateInternetGatewayResultEc2QuerySerializer()];

  /// Information about the internet gateway.
  InternetGateway? get internetGateway;
  @override
  List<Object?> get props => [internetGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInternetGatewayResult')
      ..add(
        'internetGateway',
        internetGateway,
      );
    return helper.toString();
  }
}

class CreateInternetGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateInternetGatewayResult> {
  const CreateInternetGatewayResultEc2QuerySerializer()
      : super('CreateInternetGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateInternetGatewayResult,
        _$CreateInternetGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInternetGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInternetGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'internetGateway':
          result.internetGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InternetGateway),
          ) as InternetGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateInternetGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateInternetGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInternetGatewayResult(:internetGateway) = object;
    if (internetGateway != null) {
      result$
        ..add(const _i2.XmlElementName('InternetGateway'))
        ..add(serializers.serialize(
          internetGateway,
          specifiedType: const FullType(InternetGateway),
        ));
    }
    return result$;
  }
}
