// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_launch_template_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template.dart';

part 'modify_launch_template_result.g.dart';

abstract class ModifyLaunchTemplateResult
    with _i1.AWSEquatable<ModifyLaunchTemplateResult>
    implements
        Built<ModifyLaunchTemplateResult, ModifyLaunchTemplateResultBuilder> {
  factory ModifyLaunchTemplateResult({LaunchTemplate? launchTemplate}) {
    return _$ModifyLaunchTemplateResult._(launchTemplate: launchTemplate);
  }

  factory ModifyLaunchTemplateResult.build(
          [void Function(ModifyLaunchTemplateResultBuilder) updates]) =
      _$ModifyLaunchTemplateResult;

  const ModifyLaunchTemplateResult._();

  /// Constructs a [ModifyLaunchTemplateResult] from a [payload] and [response].
  factory ModifyLaunchTemplateResult.fromResponse(
    ModifyLaunchTemplateResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyLaunchTemplateResult>>
      serializers = [ModifyLaunchTemplateResultEc2QuerySerializer()];

  /// Information about the launch template.
  LaunchTemplate? get launchTemplate;
  @override
  List<Object?> get props => [launchTemplate];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyLaunchTemplateResult')
      ..add(
        'launchTemplate',
        launchTemplate,
      );
    return helper.toString();
  }
}

class ModifyLaunchTemplateResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyLaunchTemplateResult> {
  const ModifyLaunchTemplateResultEc2QuerySerializer()
      : super('ModifyLaunchTemplateResult');

  @override
  Iterable<Type> get types => const [
        ModifyLaunchTemplateResult,
        _$ModifyLaunchTemplateResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLaunchTemplateResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLaunchTemplateResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplate':
          result.launchTemplate.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplate),
          ) as LaunchTemplate));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyLaunchTemplateResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyLaunchTemplateResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyLaunchTemplateResult(:launchTemplate) = object;
    if (launchTemplate != null) {
      result$
        ..add(const _i2.XmlElementName('LaunchTemplate'))
        ..add(serializers.serialize(
          launchTemplate,
          specifiedType: const FullType(LaunchTemplate),
        ));
    }
    return result$;
  }
}
