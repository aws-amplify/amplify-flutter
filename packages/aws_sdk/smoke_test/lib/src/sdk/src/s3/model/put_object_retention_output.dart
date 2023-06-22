// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_retention_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i3;

part 'put_object_retention_output.g.dart';

abstract class PutObjectRetentionOutput
    with _i1.AWSEquatable<PutObjectRetentionOutput>
    implements
        Built<PutObjectRetentionOutput, PutObjectRetentionOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<PutObjectRetentionOutputPayload> {
  factory PutObjectRetentionOutput({_i3.RequestCharged? requestCharged}) {
    return _$PutObjectRetentionOutput._(requestCharged: requestCharged);
  }

  factory PutObjectRetentionOutput.build(
          [void Function(PutObjectRetentionOutputBuilder) updates]) =
      _$PutObjectRetentionOutput;

  const PutObjectRetentionOutput._();

  /// Constructs a [PutObjectRetentionOutput] from a [payload] and [response].
  factory PutObjectRetentionOutput.fromResponse(
    PutObjectRetentionOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutObjectRetentionOutput.build((b) {
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<PutObjectRetentionOutputPayload>>
      serializers = [PutObjectRetentionOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectRetentionOutputBuilder b) {}

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;
  @override
  PutObjectRetentionOutputPayload getPayload() =>
      PutObjectRetentionOutputPayload();
  @override
  List<Object?> get props => [requestCharged];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectRetentionOutput')
      ..add(
        'requestCharged',
        requestCharged,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class PutObjectRetentionOutputPayload
    with
        _i1.AWSEquatable<PutObjectRetentionOutputPayload>
    implements
        Built<PutObjectRetentionOutputPayload,
            PutObjectRetentionOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory PutObjectRetentionOutputPayload(
          [void Function(PutObjectRetentionOutputPayloadBuilder) updates]) =
      _$PutObjectRetentionOutputPayload;

  const PutObjectRetentionOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectRetentionOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutObjectRetentionOutputPayload');
    return helper.toString();
  }
}

class PutObjectRetentionOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PutObjectRetentionOutputPayload> {
  const PutObjectRetentionOutputRestXmlSerializer()
      : super('PutObjectRetentionOutput');

  @override
  Iterable<Type> get types => const [
        PutObjectRetentionOutput,
        _$PutObjectRetentionOutput,
        PutObjectRetentionOutputPayload,
        _$PutObjectRetentionOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PutObjectRetentionOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return PutObjectRetentionOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutObjectRetentionOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PutObjectRetentionOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
