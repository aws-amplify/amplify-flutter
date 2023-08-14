// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.get_instance_profile_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart';

part 'get_instance_profile_response.g.dart';

/// Contains the response to a successful GetInstanceProfile request.
abstract class GetInstanceProfileResponse
    with _i1.AWSEquatable<GetInstanceProfileResponse>
    implements
        Built<GetInstanceProfileResponse, GetInstanceProfileResponseBuilder> {
  /// Contains the response to a successful GetInstanceProfile request.
  factory GetInstanceProfileResponse(
      {required InstanceProfile instanceProfile}) {
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

  static const List<_i2.SmithySerializer<GetInstanceProfileResponse>>
      serializers = [GetInstanceProfileResponseAwsQuerySerializer()];

  /// A structure containing details about the instance profile.
  InstanceProfile get instanceProfile;
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
    extends _i2.StructuredSmithySerializer<GetInstanceProfileResponse> {
  const GetInstanceProfileResponseAwsQuerySerializer()
      : super('GetInstanceProfileResponse');

  @override
  Iterable<Type> get types => const [
        GetInstanceProfileResponse,
        _$GetInstanceProfileResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
    GetInstanceProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetInstanceProfileResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetInstanceProfileResponse(:instanceProfile) = object;
    result$
      ..add(const _i2.XmlElementName('InstanceProfile'))
      ..add(serializers.serialize(
        instanceProfile,
        specifiedType: const FullType(InstanceProfile),
      ));
    return result$;
  }
}
