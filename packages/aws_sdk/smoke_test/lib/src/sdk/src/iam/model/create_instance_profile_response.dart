// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.create_instance_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart';

part 'create_instance_profile_response.g.dart';

/// Contains the response to a successful CreateInstanceProfile request.
abstract class CreateInstanceProfileResponse
    with
        _i1.AWSEquatable<CreateInstanceProfileResponse>
    implements
        Built<CreateInstanceProfileResponse,
            CreateInstanceProfileResponseBuilder> {
  /// Contains the response to a successful CreateInstanceProfile request.
  factory CreateInstanceProfileResponse(
      {required InstanceProfile instanceProfile}) {
    return _$CreateInstanceProfileResponse._(instanceProfile: instanceProfile);
  }

  /// Contains the response to a successful CreateInstanceProfile request.
  factory CreateInstanceProfileResponse.build(
          [void Function(CreateInstanceProfileResponseBuilder) updates]) =
      _$CreateInstanceProfileResponse;

  const CreateInstanceProfileResponse._();

  /// Constructs a [CreateInstanceProfileResponse] from a [payload] and [response].
  factory CreateInstanceProfileResponse.fromResponse(
    CreateInstanceProfileResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateInstanceProfileResponse>>
      serializers = [CreateInstanceProfileResponseAwsQuerySerializer()];

  /// A structure containing details about the new instance profile.
  InstanceProfile get instanceProfile;
  @override
  List<Object?> get props => [instanceProfile];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInstanceProfileResponse')
      ..add(
        'instanceProfile',
        instanceProfile,
      );
    return helper.toString();
  }
}

class CreateInstanceProfileResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateInstanceProfileResponse> {
  const CreateInstanceProfileResponseAwsQuerySerializer()
      : super('CreateInstanceProfileResponse');

  @override
  Iterable<Type> get types => const [
        CreateInstanceProfileResponse,
        _$CreateInstanceProfileResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateInstanceProfileResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceProfileResponseBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceProfile':
          result.instanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceProfile),
          ) as InstanceProfile));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateInstanceProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateInstanceProfileResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final CreateInstanceProfileResponse(:instanceProfile) = object;
    result$
      ..add(const _i2.XmlElementName('InstanceProfile'))
      ..add(serializers.serialize(
        instanceProfile,
        specifiedType: const FullType(InstanceProfile),
      ));
    return result$;
  }
}
