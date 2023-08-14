// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_connect_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_connect_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_transit_gateway_connect_request.g.dart';

abstract class CreateTransitGatewayConnectRequest
    with
        _i1.HttpInput<CreateTransitGatewayConnectRequest>,
        _i2.AWSEquatable<CreateTransitGatewayConnectRequest>
    implements
        Built<CreateTransitGatewayConnectRequest,
            CreateTransitGatewayConnectRequestBuilder> {
  factory CreateTransitGatewayConnectRequest({
    String? transportTransitGatewayAttachmentId,
    CreateTransitGatewayConnectRequestOptions? options,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayConnectRequest._(
      transportTransitGatewayAttachmentId: transportTransitGatewayAttachmentId,
      options: options,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayConnectRequest.build(
          [void Function(CreateTransitGatewayConnectRequestBuilder) updates]) =
      _$CreateTransitGatewayConnectRequest;

  const CreateTransitGatewayConnectRequest._();

  factory CreateTransitGatewayConnectRequest.fromRequest(
    CreateTransitGatewayConnectRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateTransitGatewayConnectRequest>>
      serializers = [CreateTransitGatewayConnectRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayConnectRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway attachment. You can specify a VPC attachment or Amazon Web Services Direct Connect attachment.
  String? get transportTransitGatewayAttachmentId;

  /// The Connect attachment options.
  CreateTransitGatewayConnectRequestOptions? get options;

  /// The tags to apply to the Connect attachment.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayConnectRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transportTransitGatewayAttachmentId,
        options,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayConnectRequest')
          ..add(
            'transportTransitGatewayAttachmentId',
            transportTransitGatewayAttachmentId,
          )
          ..add(
            'options',
            options,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateTransitGatewayConnectRequest> {
  const CreateTransitGatewayConnectRequestEc2QuerySerializer()
      : super('CreateTransitGatewayConnectRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectRequest,
        _$CreateTransitGatewayConnectRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransportTransitGatewayAttachmentId':
          result.transportTransitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateTransitGatewayConnectRequestOptions),
          ) as CreateTransitGatewayConnectRequestOptions));
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayConnectRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayConnectRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayConnectRequest(
      :transportTransitGatewayAttachmentId,
      :options,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (transportTransitGatewayAttachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('TransportTransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transportTransitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType:
              const FullType(CreateTransitGatewayConnectRequestOptions),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
