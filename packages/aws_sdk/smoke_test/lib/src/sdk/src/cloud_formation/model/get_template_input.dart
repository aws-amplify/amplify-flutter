// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.get_template_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/template_stage.dart'
    as _i3;

part 'get_template_input.g.dart';

/// The input for a GetTemplate action.
abstract class GetTemplateInput
    with _i1.HttpInput<GetTemplateInput>, _i2.AWSEquatable<GetTemplateInput>
    implements Built<GetTemplateInput, GetTemplateInputBuilder> {
  /// The input for a GetTemplate action.
  factory GetTemplateInput({
    String? stackName,
    String? changeSetName,
    _i3.TemplateStage? templateStage,
  }) {
    return _$GetTemplateInput._(
      stackName: stackName,
      changeSetName: changeSetName,
      templateStage: templateStage,
    );
  }

  /// The input for a GetTemplate action.
  factory GetTemplateInput.build(
      [void Function(GetTemplateInputBuilder) updates]) = _$GetTemplateInput;

  const GetTemplateInput._();

  factory GetTemplateInput.fromRequest(
    GetTemplateInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetTemplateInput>> serializers = [
    GetTemplateInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTemplateInputBuilder b) {}

  /// The name or the unique stack ID that's associated with the stack, which aren't always interchangeable:
  ///
  /// *   Running stacks: You can specify either the stack's name or its unique stack ID.
  ///
  /// *   Deleted stacks: You must specify the unique stack ID.
  ///
  ///
  /// Default: There is no default value.
  String? get stackName;

  /// The name or Amazon Resource Name (ARN) of a change set for which CloudFormation returns the associated template. If you specify a name, you must also specify the `StackName`.
  String? get changeSetName;

  /// For templates that include transforms, the stage of the template that CloudFormation returns. To get the user-submitted template, specify `Original`. To get the template after CloudFormation has processed all transforms, specify `Processed`.
  ///
  /// If the template doesn't include transforms, `Original` and `Processed` return the same template. By default, CloudFormation specifies `Processed`.
  _i3.TemplateStage? get templateStage;
  @override
  GetTemplateInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        changeSetName,
        templateStage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetTemplateInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'templateStage',
        templateStage,
      );
    return helper.toString();
  }
}

class GetTemplateInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetTemplateInput> {
  const GetTemplateInputAwsQuerySerializer() : super('GetTemplateInput');

  @override
  Iterable<Type> get types => const [
        GetTemplateInput,
        _$GetTemplateInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetTemplateInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTemplateInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateStage':
          result.templateStage = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.TemplateStage),
          ) as _i3.TemplateStage);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTemplateInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetTemplateInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final GetTemplateInput(:stackName, :changeSetName, :templateStage) = object;
    if (stackName != null) {
      result$
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (changeSetName != null) {
      result$
        ..add(const _i1.XmlElementName('ChangeSetName'))
        ..add(serializers.serialize(
          changeSetName,
          specifiedType: const FullType(String),
        ));
    }
    if (templateStage != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateStage'))
        ..add(serializers.serialize(
          templateStage,
          specifiedType: const FullType.nullable(_i3.TemplateStage),
        ));
    }
    return result$;
  }
}
