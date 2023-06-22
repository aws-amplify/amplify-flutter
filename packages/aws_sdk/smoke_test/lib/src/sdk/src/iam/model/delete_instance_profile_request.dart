// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.delete_instance_profile_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_instance_profile_request.g.dart';

abstract class DeleteInstanceProfileRequest
    with
        _i1.HttpInput<DeleteInstanceProfileRequest>,
        _i2.AWSEquatable<DeleteInstanceProfileRequest>
    implements
        Built<DeleteInstanceProfileRequest,
            DeleteInstanceProfileRequestBuilder> {
  factory DeleteInstanceProfileRequest({required String instanceProfileName}) {
    return _$DeleteInstanceProfileRequest._(
        instanceProfileName: instanceProfileName);
  }

  factory DeleteInstanceProfileRequest.build(
          [void Function(DeleteInstanceProfileRequestBuilder) updates]) =
      _$DeleteInstanceProfileRequest;

  const DeleteInstanceProfileRequest._();

  factory DeleteInstanceProfileRequest.fromRequest(
    DeleteInstanceProfileRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteInstanceProfileRequest>>
      serializers = [DeleteInstanceProfileRequestAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteInstanceProfileRequestBuilder b) {}

  /// The name of the instance profile to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String get instanceProfileName;
  @override
  DeleteInstanceProfileRequest getPayload() => this;
  @override
  List<Object?> get props => [instanceProfileName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteInstanceProfileRequest')
      ..add(
        'instanceProfileName',
        instanceProfileName,
      );
    return helper.toString();
  }
}

class DeleteInstanceProfileRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteInstanceProfileRequest> {
  const DeleteInstanceProfileRequestAwsQuerySerializer()
      : super('DeleteInstanceProfileRequest');

  @override
  Iterable<Type> get types => const [
        DeleteInstanceProfileRequest,
        _$DeleteInstanceProfileRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteInstanceProfileRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteInstanceProfileRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceProfileName':
          result.instanceProfileName = (serializers.deserialize(
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
    DeleteInstanceProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteInstanceProfileRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final DeleteInstanceProfileRequest(:instanceProfileName) = object;
    result$
      ..add(const _i1.XmlElementName('InstanceProfileName'))
      ..add(serializers.serialize(
        instanceProfileName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
