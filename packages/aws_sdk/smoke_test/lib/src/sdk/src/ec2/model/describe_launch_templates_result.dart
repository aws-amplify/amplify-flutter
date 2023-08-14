// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_launch_templates_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart';

part 'describe_launch_templates_result.g.dart';

abstract class DescribeLaunchTemplatesResult
    with
        _i1.AWSEquatable<DescribeLaunchTemplatesResult>
    implements
        Built<DescribeLaunchTemplatesResult,
            DescribeLaunchTemplatesResultBuilder> {
  factory DescribeLaunchTemplatesResult({
    List<LaunchTemplate>? launchTemplates,
    String? nextToken,
  }) {
    return _$DescribeLaunchTemplatesResult._(
      launchTemplates:
          launchTemplates == null ? null : _i2.BuiltList(launchTemplates),
      nextToken: nextToken,
    );
  }

  factory DescribeLaunchTemplatesResult.build(
          [void Function(DescribeLaunchTemplatesResultBuilder) updates]) =
      _$DescribeLaunchTemplatesResult;

  const DescribeLaunchTemplatesResult._();

  /// Constructs a [DescribeLaunchTemplatesResult] from a [payload] and [response].
  factory DescribeLaunchTemplatesResult.fromResponse(
    DescribeLaunchTemplatesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeLaunchTemplatesResult>>
      serializers = [DescribeLaunchTemplatesResultEc2QuerySerializer()];

  /// Information about the launch templates.
  _i2.BuiltList<LaunchTemplate>? get launchTemplates;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        launchTemplates,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLaunchTemplatesResult')
      ..add(
        'launchTemplates',
        launchTemplates,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeLaunchTemplatesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeLaunchTemplatesResult> {
  const DescribeLaunchTemplatesResultEc2QuerySerializer()
      : super('DescribeLaunchTemplatesResult');

  @override
  Iterable<Type> get types => const [
        DescribeLaunchTemplatesResult,
        _$DescribeLaunchTemplatesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLaunchTemplatesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLaunchTemplatesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplates':
          result.launchTemplates.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplate)],
            ),
          ) as _i2.BuiltList<LaunchTemplate>));
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeLaunchTemplatesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeLaunchTemplatesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeLaunchTemplatesResult(:launchTemplates, :nextToken) = object;
    if (launchTemplates != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplates'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchTemplates,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(LaunchTemplate)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
