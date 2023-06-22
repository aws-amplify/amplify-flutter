// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_instance_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart' as _i2;

part 'get_instance_profile_response.g.dart';

/// Contains the response to a successful GetInstanceProfile request.
abstract class GetInstanceProfileResponse
    with _i1.AWSEquatable<GetInstanceProfileResponse>
    implements
        Built<GetInstanceProfileResponse, GetInstanceProfileResponseBuilder> {
  /// Contains the response to a successful GetInstanceProfile request.
  factory GetInstanceProfileResponse(
      {required _i2.InstanceProfile instanceProfile}) {
    return _$GetInstanceProfileResponse._(instanceProfile: instanceProfile);
  }

  /// Contains the response to a successful GetInstanceProfile request.
  factory GetInstanceProfileResponse.build(
          [void Function(GetInstanceProfileResponseBuilder) updates]) =
      _$GetInstanceProfileResponse;

  const GetInstanceProfileResponse._();

  /// Constructs a [GetInstanceProfileResponse] from a [payload] and [response].
  factory GetInstanceProfileResponse.fromResponse(
    GetInstanceProfileResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetInstanceProfileResponse>>
      serializers = [GetInstanceProfileResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetInstanceProfileResponseBuilder b) {}

  /// A structure containing details about the instance profile.
  _i2.InstanceProfile get instanceProfile;
  @override
  List<Object?> get props => [instanceProfile];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetInstanceProfileResponse')
      ..add(
        'instanceProfile',
        instanceProfile,
      );
    return helper.toString();
  }
}

class GetInstanceProfileResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetInstanceProfileResponse> {
  const GetInstanceProfileResponseAwsQuerySerializer()
      : super('GetInstanceProfileResponse');

  @override
  Iterable<Type> get types => const [
        GetInstanceProfileResponse,
        _$GetInstanceProfileResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetInstanceProfileResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetInstanceProfileResponseBuilder();
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
            specifiedType: const FullType(_i2.InstanceProfile),
          ) as _i2.InstanceProfile));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetInstanceProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetInstanceProfileResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetInstanceProfileResponse(:instanceProfile) = object;
    result$
      ..add(const _i3.XmlElementName('InstanceProfile'))
      ..add(serializers.serialize(
        instanceProfile,
        specifiedType: const FullType(_i2.InstanceProfile),
      ));
    return result$;
  }
}
