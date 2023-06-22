// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.get_bucket_accelerate_configuration_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i5;
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/bucket_accelerate_status.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/request_charged.dart' as _i4;

part 'get_bucket_accelerate_configuration_output.g.dart';

abstract class GetBucketAccelerateConfigurationOutput
    with
        _i1.AWSEquatable<GetBucketAccelerateConfigurationOutput>
    implements
        Built<GetBucketAccelerateConfigurationOutput,
            GetBucketAccelerateConfigurationOutputBuilder>,
        _i2.HasPayload<GetBucketAccelerateConfigurationOutputPayload> {
  factory GetBucketAccelerateConfigurationOutput({
    _i3.BucketAccelerateStatus? status,
    _i4.RequestCharged? requestCharged,
  }) {
    return _$GetBucketAccelerateConfigurationOutput._(
      status: status,
      requestCharged: requestCharged,
    );
  }

  factory GetBucketAccelerateConfigurationOutput.build(
      [void Function(GetBucketAccelerateConfigurationOutputBuilder)
          updates]) = _$GetBucketAccelerateConfigurationOutput;

  const GetBucketAccelerateConfigurationOutput._();

  /// Constructs a [GetBucketAccelerateConfigurationOutput] from a [payload] and [response].
  factory GetBucketAccelerateConfigurationOutput.fromResponse(
    GetBucketAccelerateConfigurationOutputPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      GetBucketAccelerateConfigurationOutput.build((b) {
        b.status = payload.status;
        if (response.headers['x-amz-request-charged'] != null) {
          b.requestCharged = _i4.RequestCharged.values
              .byValue(response.headers['x-amz-request-charged']!);
        }
      });

  static const List<
          _i2.SmithySerializer<GetBucketAccelerateConfigurationOutputPayload>>
      serializers = [GetBucketAccelerateConfigurationOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAccelerateConfigurationOutputBuilder b) {}

  /// The accelerate configuration of the bucket.
  _i3.BucketAccelerateStatus? get status;

  /// If present, indicates that the requester was successfully charged for the request.
  _i4.RequestCharged? get requestCharged;
  @override
  GetBucketAccelerateConfigurationOutputPayload getPayload() =>
      GetBucketAccelerateConfigurationOutputPayload((b) {
        b.status = status;
      });
  @override
  List<Object?> get props => [
        status,
        requestCharged,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetBucketAccelerateConfigurationOutput')
          ..add(
            'status',
            status,
          )
          ..add(
            'requestCharged',
            requestCharged,
          );
    return helper.toString();
  }
}

@_i5.internal
abstract class GetBucketAccelerateConfigurationOutputPayload
    with
        _i1.AWSEquatable<GetBucketAccelerateConfigurationOutputPayload>
    implements
        Built<GetBucketAccelerateConfigurationOutputPayload,
            GetBucketAccelerateConfigurationOutputPayloadBuilder> {
  factory GetBucketAccelerateConfigurationOutputPayload(
      [void Function(GetBucketAccelerateConfigurationOutputPayloadBuilder)
          updates]) = _$GetBucketAccelerateConfigurationOutputPayload;

  const GetBucketAccelerateConfigurationOutputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetBucketAccelerateConfigurationOutputPayloadBuilder b) {}

  /// The accelerate configuration of the bucket.
  _i3.BucketAccelerateStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetBucketAccelerateConfigurationOutputPayload')
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class GetBucketAccelerateConfigurationOutputRestXmlSerializer extends _i2
    .StructuredSmithySerializer<GetBucketAccelerateConfigurationOutputPayload> {
  const GetBucketAccelerateConfigurationOutputRestXmlSerializer()
      : super('GetBucketAccelerateConfigurationOutput');

  @override
  Iterable<Type> get types => const [
        GetBucketAccelerateConfigurationOutput,
        _$GetBucketAccelerateConfigurationOutput,
        GetBucketAccelerateConfigurationOutputPayload,
        _$GetBucketAccelerateConfigurationOutputPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  GetBucketAccelerateConfigurationOutputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBucketAccelerateConfigurationOutputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.BucketAccelerateStatus),
          ) as _i3.BucketAccelerateStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetBucketAccelerateConfigurationOutputPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AccelerateConfiguration',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final GetBucketAccelerateConfigurationOutputPayload(:status) = object;
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i3.BucketAccelerateStatus),
        ));
    }
    return result$;
  }
}
