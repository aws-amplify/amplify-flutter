// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_insights_path_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart';

part 'create_network_insights_path_result.g.dart';

abstract class CreateNetworkInsightsPathResult
    with
        _i1.AWSEquatable<CreateNetworkInsightsPathResult>
    implements
        Built<CreateNetworkInsightsPathResult,
            CreateNetworkInsightsPathResultBuilder> {
  factory CreateNetworkInsightsPathResult(
      {NetworkInsightsPath? networkInsightsPath}) {
    return _$CreateNetworkInsightsPathResult._(
        networkInsightsPath: networkInsightsPath);
  }

  factory CreateNetworkInsightsPathResult.build(
          [void Function(CreateNetworkInsightsPathResultBuilder) updates]) =
      _$CreateNetworkInsightsPathResult;

  const CreateNetworkInsightsPathResult._();

  /// Constructs a [CreateNetworkInsightsPathResult] from a [payload] and [response].
  factory CreateNetworkInsightsPathResult.fromResponse(
    CreateNetworkInsightsPathResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateNetworkInsightsPathResult>>
      serializers = [CreateNetworkInsightsPathResultEc2QuerySerializer()];

  /// Information about the path.
  NetworkInsightsPath? get networkInsightsPath;
  @override
  List<Object?> get props => [networkInsightsPath];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInsightsPathResult')
          ..add(
            'networkInsightsPath',
            networkInsightsPath,
          );
    return helper.toString();
  }
}

class CreateNetworkInsightsPathResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CreateNetworkInsightsPathResult> {
  const CreateNetworkInsightsPathResultEc2QuerySerializer()
      : super('CreateNetworkInsightsPathResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInsightsPathResult,
        _$CreateNetworkInsightsPathResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInsightsPathResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInsightsPathResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsPath':
          result.networkInsightsPath.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInsightsPath),
          ) as NetworkInsightsPath));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateNetworkInsightsPathResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateNetworkInsightsPathResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkInsightsPathResult(:networkInsightsPath) = object;
    if (networkInsightsPath != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkInsightsPath'))
        ..add(serializers.serialize(
          networkInsightsPath,
          specifiedType: const FullType(NetworkInsightsPath),
        ));
    }
    return result$;
  }
}
