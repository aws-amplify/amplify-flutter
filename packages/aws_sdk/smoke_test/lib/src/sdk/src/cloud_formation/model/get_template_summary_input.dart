// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.get_template_summary_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'get_template_summary_input.g.dart';

/// The input for the GetTemplateSummary action.
abstract class GetTemplateSummaryInput
    with
        _i1.HttpInput<GetTemplateSummaryInput>,
        _i2.AWSEquatable<GetTemplateSummaryInput>
    implements Built<GetTemplateSummaryInput, GetTemplateSummaryInputBuilder> {
  /// The input for the GetTemplateSummary action.
  factory GetTemplateSummaryInput({
    String? templateBody,
    String? templateUrl,
    String? stackName,
    String? stackSetName,
    _i3.CallAs? callAs,
  }) {
    return _$GetTemplateSummaryInput._(
      templateBody: templateBody,
      templateUrl: templateUrl,
      stackName: stackName,
      stackSetName: stackSetName,
      callAs: callAs,
    );
  }

  /// The input for the GetTemplateSummary action.
  factory GetTemplateSummaryInput.build(
          [void Function(GetTemplateSummaryInputBuilder) updates]) =
      _$GetTemplateSummaryInput;

  const GetTemplateSummaryInput._();

  factory GetTemplateSummaryInput.fromRequest(
    GetTemplateSummaryInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetTemplateSummaryInput>> serializers =
      [GetTemplateSummaryInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTemplateSummaryInputBuilder b) {}

  /// Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see [Template anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
  String? get templateBody;

  /// Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager document. For more information about templates, see [Template anatomy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html) in the CloudFormation User Guide.
  ///
  /// Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
  String? get templateUrl;

  /// The name or the stack ID that's associated with the stack, which aren't always interchangeable. For running stacks, you can specify either the stack's name or its unique stack ID. For deleted stack, you must specify the unique stack ID.
  ///
  /// Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
  String? get stackName;

  /// The name or unique ID of the stack set from which the stack was created.
  ///
  /// Conditional: You must specify only one of the following parameters: `StackName`, `StackSetName`, `TemplateBody`, or `TemplateURL`.
  String? get stackSetName;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i3.CallAs? get callAs;
  @override
  GetTemplateSummaryInput getPayload() => this;
  @override
  List<Object?> get props => [
        templateBody,
        templateUrl,
        stackName,
        stackSetName,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetTemplateSummaryInput')
      ..add(
        'templateBody',
        templateBody,
      )
      ..add(
        'templateUrl',
        templateUrl,
      )
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class GetTemplateSummaryInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetTemplateSummaryInput> {
  const GetTemplateSummaryInputAwsQuerySerializer()
      : super('GetTemplateSummaryInput');

  @override
  Iterable<Type> get types => const [
        GetTemplateSummaryInput,
        _$GetTemplateSummaryInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetTemplateSummaryInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTemplateSummaryInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TemplateBody':
          result.templateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TemplateURL':
          result.templateUrl = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CallAs),
          ) as _i3.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetTemplateSummaryInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetTemplateSummaryInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final GetTemplateSummaryInput(
      :templateBody,
      :templateUrl,
      :stackName,
      :stackSetName,
      :callAs
    ) = object;
    if (templateBody != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateBody'))
        ..add(serializers.serialize(
          templateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (templateUrl != null) {
      result$
        ..add(const _i1.XmlElementName('TemplateURL'))
        ..add(serializers.serialize(
          templateUrl,
          specifiedType: const FullType(String),
        ));
    }
    if (stackName != null) {
      result$
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (stackSetName != null) {
      result$
        ..add(const _i1.XmlElementName('StackSetName'))
        ..add(serializers.serialize(
          stackSetName,
          specifiedType: const FullType(String),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i3.CallAs),
        ));
    }
    return result$;
  }
}
