// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_launch_template_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/request_launch_template_data.dart';

part 'create_launch_template_version_request.g.dart';

abstract class CreateLaunchTemplateVersionRequest
    with
        _i1.HttpInput<CreateLaunchTemplateVersionRequest>,
        _i2.AWSEquatable<CreateLaunchTemplateVersionRequest>
    implements
        Built<CreateLaunchTemplateVersionRequest,
            CreateLaunchTemplateVersionRequestBuilder> {
  factory CreateLaunchTemplateVersionRequest({
    bool? dryRun,
    String? clientToken,
    String? launchTemplateId,
    String? launchTemplateName,
    String? sourceVersion,
    String? versionDescription,
    RequestLaunchTemplateData? launchTemplateData,
    bool? resolveAlias,
  }) {
    dryRun ??= false;
    resolveAlias ??= false;
    return _$CreateLaunchTemplateVersionRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      sourceVersion: sourceVersion,
      versionDescription: versionDescription,
      launchTemplateData: launchTemplateData,
      resolveAlias: resolveAlias,
    );
  }

  factory CreateLaunchTemplateVersionRequest.build(
          [void Function(CreateLaunchTemplateVersionRequestBuilder) updates]) =
      _$CreateLaunchTemplateVersionRequest;

  const CreateLaunchTemplateVersionRequest._();

  factory CreateLaunchTemplateVersionRequest.fromRequest(
    CreateLaunchTemplateVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateLaunchTemplateVersionRequest>>
      serializers = [CreateLaunchTemplateVersionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLaunchTemplateVersionRequestBuilder b) {
    b
      ..dryRun = false
      ..resolveAlias = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraint: Maximum 128 ASCII characters.
  String? get clientToken;

  /// The ID of the launch template.
  ///
  /// You must specify either the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in `LaunchTemplateData`. Snapshots applied to the block device mapping are ignored when creating a new version unless they are explicitly included.
  String? get sourceVersion;

  /// A description for the version of the launch template.
  String? get versionDescription;

  /// The information for the launch template.
  RequestLaunchTemplateData? get launchTemplateData;

  /// If `true`, and if a Systems Manager parameter is specified for `ImageId`, the AMI ID is displayed in the response for `imageID`. For more information, see [Use a Systems Manager parameter instead of an AMI ID](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#use-an-ssm-parameter-instead-of-an-ami-id) in the _Amazon Elastic Compute Cloud User Guide_.
  ///
  /// Default: `false`
  bool get resolveAlias;
  @override
  CreateLaunchTemplateVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        launchTemplateId,
        launchTemplateName,
        sourceVersion,
        versionDescription,
        launchTemplateData,
        resolveAlias,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateLaunchTemplateVersionRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'launchTemplateId',
            launchTemplateId,
          )
          ..add(
            'launchTemplateName',
            launchTemplateName,
          )
          ..add(
            'sourceVersion',
            sourceVersion,
          )
          ..add(
            'versionDescription',
            versionDescription,
          )
          ..add(
            'launchTemplateData',
            launchTemplateData,
          )
          ..add(
            'resolveAlias',
            resolveAlias,
          );
    return helper.toString();
  }
}

class CreateLaunchTemplateVersionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateLaunchTemplateVersionRequest> {
  const CreateLaunchTemplateVersionRequestEc2QuerySerializer()
      : super('CreateLaunchTemplateVersionRequest');

  @override
  Iterable<Type> get types => const [
        CreateLaunchTemplateVersionRequest,
        _$CreateLaunchTemplateVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLaunchTemplateVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLaunchTemplateVersionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchTemplateId':
          result.launchTemplateId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchTemplateName':
          result.launchTemplateName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceVersion':
          result.sourceVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VersionDescription':
          result.versionDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LaunchTemplateData':
          result.launchTemplateData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RequestLaunchTemplateData),
          ) as RequestLaunchTemplateData));
        case 'ResolveAlias':
          result.resolveAlias = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateLaunchTemplateVersionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateLaunchTemplateVersionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateLaunchTemplateVersionRequest(
      :dryRun,
      :clientToken,
      :launchTemplateId,
      :launchTemplateName,
      :sourceVersion,
      :versionDescription,
      :launchTemplateData,
      :resolveAlias
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateId != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          launchTemplateId,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateName != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          launchTemplateName,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceVersion != null) {
      result$
        ..add(const _i1.XmlElementName('SourceVersion'))
        ..add(serializers.serialize(
          sourceVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (versionDescription != null) {
      result$
        ..add(const _i1.XmlElementName('VersionDescription'))
        ..add(serializers.serialize(
          versionDescription,
          specifiedType: const FullType(String),
        ));
    }
    if (launchTemplateData != null) {
      result$
        ..add(const _i1.XmlElementName('LaunchTemplateData'))
        ..add(serializers.serialize(
          launchTemplateData,
          specifiedType: const FullType(RequestLaunchTemplateData),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('ResolveAlias'))
      ..add(serializers.serialize(
        resolveAlias,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
