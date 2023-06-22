// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.put_object_acl_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i3;

part 'put_object_acl_output.g.dart';

abstract class PutObjectAclOutput
    with _i1.AWSEquatable<PutObjectAclOutput>
    implements
        Built<PutObjectAclOutput, PutObjectAclOutputBuilder>,
        _i2.EmptyPayload,
        _i2.HasPayload<PutObjectAclOutputPayload> {
  factory PutObjectAclOutput({_i3.RequestCharged? requestCharged}) {
    return _$PutObjectAclOutput._(requestCharged: requestCharged);
  }

  factory PutObjectAclOutput.build(
          [void Function(PutObjectAclOutputBuilder) updates]) =
      _$PutObjectAclOutput;

  const PutObjectAclOutput._();

  /// Constructs a [PutObjectAclOutput] from a [payload] and [response].
  factory PutObjectAclOutput.fromResponse(
    PutObjectAclOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      PutObjectAclOutput.build((b) {
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i3.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<_i2.SmithySerializer<PutObjectAclOutputPayload>>
      serializers = [PutObjectAclOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectAclOutputBuilder b) {}

  /// If present, indicates that the requester was successfully charged for the request.
  _i3.RequestCharged? get requestCharged;
  @override
  PutObjectAclOutputPayload getPayload() => PutObjectAclOutputPayload();
  @override
  List<Object?> get props => [requestCharged];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectAclOutput')
      ..add(
        'requestCharged',
        requestCharged,
      );
    return helper.toString();
  }
}

@_i4.internal
abstract class PutObjectAclOutputPayload
    with _i1.AWSEquatable<PutObjectAclOutputPayload>
    implements
        Built<PutObjectAclOutputPayload, PutObjectAclOutputPayloadBuilder>,
        _i2.EmptyPayload {
  factory PutObjectAclOutputPayload(
          [void Function(PutObjectAclOutputPayloadBuilder) updates]) =
      _$PutObjectAclOutputPayload;

  const PutObjectAclOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutObjectAclOutputPayloadBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PutObjectAclOutputPayload');
    return helper.toString();
  }
}

class PutObjectAclOutputRestXmlSerializer
    extends _i2.StructuredSmithySerializer<PutObjectAclOutputPayload> {
  const PutObjectAclOutputRestXmlSerializer() : super('PutObjectAclOutput');

  @override
  Iterable<Type> get types => const [
        PutObjectAclOutput,
        _$PutObjectAclOutput,
        PutObjectAclOutputPayload,
        _$PutObjectAclOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  PutObjectAclOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return PutObjectAclOutputPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutObjectAclOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PutObjectAclOutput',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];

    return result$;
  }
}
