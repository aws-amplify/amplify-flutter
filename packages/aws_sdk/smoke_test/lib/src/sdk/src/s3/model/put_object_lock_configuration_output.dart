// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.s3.model.put_object_lock_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i3;

part 'put_object_lock_configuration_output.g.dart';

abstract class PutObjectLockConfigurationOutput
    with
        _i1.AWSEquatable<PutObjectLockConfigurationOutput>
    implements
        Built<PutObjectLockConfigurationOutput,
            PutObjectLockConfigurationOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<PutObjectLockConfigurationOutputPayload> {
  factory PutObjectLockConfigurationOutput(
      {_i3.RequestCharged? requestCharged}) {
    return _$PutObjectLockConfigurationOutput._(requestCharged: requestCharged);
  }

  factory PutObjectLockConfigurationOutput.build(
          [void Function(PutObjectLockConfigurationOutputBuilder) updates]) =
      _$PutObjectLockConfigurationOutput;

  const PutObjectLockConfigurationOutput._();

  /// Constructs a [PutObjectLockConfigurationOutput] from a [payload] and [response].
  factory PutObjectLockConfigurationOutput.fromResponse(
    PutObjectLockConfigurationOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutObjectLockConfigurationOutput.build((b) {
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer> serializers = [
    PutObjectLockConfigurationOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectLockConfigurationOutputBuilder b) {}

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;
  @override
  PutObjectLockConfigurationOutputPayload getPayload() =>
      PutObjectLockConfigurationOutputPayload();
  @override
  List<Object?> get props => [requestCharged];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutObjectLockConfigurationOutput');
    helper.add(
      'requestCharged',
      requestCharged,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class PutObjectLockConfigurationOutputPayload
    with
        _i1.AWSEquatable<PutObjectLockConfigurationOutputPayload>
    implements
        Built<PutObjectLockConfigurationOutputPayload,
            PutObjectLockConfigurationOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory PutObjectLockConfigurationOutputPayload(
      [void Function(PutObjectLockConfigurationOutputPayloadBuilder)
          updates]) = _$PutObjectLockConfigurationOutputPayload;

  const PutObjectLockConfigurationOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectLockConfigurationOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutObjectLockConfigurationOutputPayload');
    return helper.toString();
  }
}

class PutObjectLockConfigurationOutputRestXmlSerializer extends _i2
    .StructuredSmithySerializer<PutObjectLockConfigurationOutputPayload> {
  const PutObjectLockConfigurationOutputRestXmlSerializer()
      : super('PutObjectLockConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        PutObjectLockConfigurationOutput,
        _$PutObjectLockConfigurationOutput,
        PutObjectLockConfigurationOutputPayload,
        _$PutObjectLockConfigurationOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PutObjectLockConfigurationOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return PutObjectLockConfigurationOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      const _i2.XmlElementName(
        'PutObjectLockConfigurationOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    return result;
  }
}
