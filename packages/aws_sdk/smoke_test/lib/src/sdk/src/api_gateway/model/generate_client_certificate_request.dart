// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.generate_client_certificate_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'generate_client_certificate_request.g.dart';

/// A request to generate a ClientCertificate resource.
abstract class GenerateClientCertificateRequest
    with
        _i1.HttpInput<GenerateClientCertificateRequest>,
        _i2.AWSEquatable<GenerateClientCertificateRequest>
    implements
        Built<GenerateClientCertificateRequest,
            GenerateClientCertificateRequestBuilder> {
  /// A request to generate a ClientCertificate resource.
  factory GenerateClientCertificateRequest({
    String? description,
    Map<String, String>? tags,
  }) {
    return _$GenerateClientCertificateRequest._(
      description: description,
      tags: tags == null ? null : _i3.BuiltMap(tags),
    );
  }

  /// A request to generate a ClientCertificate resource.
  factory GenerateClientCertificateRequest.build(
          [void Function(GenerateClientCertificateRequestBuilder) updates]) =
      _$GenerateClientCertificateRequest;

  const GenerateClientCertificateRequest._();

  factory GenerateClientCertificateRequest.fromRequest(
    GenerateClientCertificateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GenerateClientCertificateRequestRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GenerateClientCertificateRequestBuilder b) {}

  /// The description of the ClientCertificate.
  String? get description;

  /// The key-value map of strings. The valid character set is \[a-zA-Z+-=._:/\]. The tag key can be up to 128 characters and must not start with `aws:`. The tag value can be up to 256 characters.
  _i3.BuiltMap<String, String>? get tags;
  @override
  GenerateClientCertificateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GenerateClientCertificateRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class GenerateClientCertificateRequestRestJson1Serializer
    extends _i1.StructuredSmithySerializer<GenerateClientCertificateRequest> {
  const GenerateClientCertificateRequestRestJson1Serializer()
      : super('GenerateClientCertificateRequest');

  @override
  Iterable<Type> get types => const [
        GenerateClientCertificateRequest,
        _$GenerateClientCertificateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  GenerateClientCertificateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateClientCertificateRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tags':
          if (value != null) {
            result.tags.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i3.BuiltMap<String, String>));
          }
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
    final payload = (object as GenerateClientCertificateRequest);
    final result = <Object?>[];
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(
          payload.tags!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    return result;
  }
}
