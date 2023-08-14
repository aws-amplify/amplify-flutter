// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_internet_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_internet_gateway_request.g.dart';

abstract class CreateInternetGatewayRequest
    with
        _i1.HttpInput<CreateInternetGatewayRequest>,
        _i2.AWSEquatable<CreateInternetGatewayRequest>
    implements
        Built<CreateInternetGatewayRequest,
            CreateInternetGatewayRequestBuilder> {
  factory CreateInternetGatewayRequest({
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateInternetGatewayRequest._(
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateInternetGatewayRequest.build(
          [void Function(CreateInternetGatewayRequestBuilder) updates]) =
      _$CreateInternetGatewayRequest;

  const CreateInternetGatewayRequest._();

  factory CreateInternetGatewayRequest.fromRequest(
    CreateInternetGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateInternetGatewayRequest>>
      serializers = [CreateInternetGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInternetGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The tags to assign to the internet gateway.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateInternetGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateInternetGatewayRequest')
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

class CreateInternetGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateInternetGatewayRequest> {
  const CreateInternetGatewayRequestEc2QuerySerializer()
      : super('CreateInternetGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateInternetGatewayRequest,
        _$CreateInternetGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInternetGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInternetGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'dryRun':
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
    CreateInternetGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateInternetGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateInternetGatewayRequest(:tagSpecifications, :dryRun) = object;
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
