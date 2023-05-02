// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.create_instance_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart' as _i2;

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
      {required _i2.InstanceProfile instanceProfile}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    CreateInstanceProfileResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceProfileResponseBuilder b) {}

  /// A structure containing details about the new instance profile.
  _i2.InstanceProfile get instanceProfile;
  @override
  List<Object?> get props => [instanceProfile];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInstanceProfileResponse');
    helper.add(
      'instanceProfile',
      instanceProfile,
    );
    return helper.toString();
  }
}

class CreateInstanceProfileResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<CreateInstanceProfileResponse> {
  const CreateInstanceProfileResponseAwsQuerySerializer()
      : super('CreateInstanceProfileResponse');

  @override
  Iterable<Type> get types => const [
        CreateInstanceProfileResponse,
        _$CreateInstanceProfileResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceProfile':
          result.instanceProfile.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InstanceProfile),
          ) as _i2.InstanceProfile));
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as CreateInstanceProfileResponse);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateInstanceProfileResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('InstanceProfile'))
      ..add(serializers.serialize(
        payload.instanceProfile,
        specifiedType: const FullType(_i2.InstanceProfile),
      ));
    return result;
  }
}
