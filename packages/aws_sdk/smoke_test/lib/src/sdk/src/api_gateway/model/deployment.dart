// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.deployment; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/api_gateway/model/method_snapshot.dart'
    as _i2;

part 'deployment.g.dart';

/// An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.
abstract class Deployment
    with _i1.AWSEquatable<Deployment>
    implements Built<Deployment, DeploymentBuilder> {
  /// An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.
  factory Deployment({
    Map<String, Map<String, _i2.MethodSnapshot>>? apiSummary,
    DateTime? createdDate,
    String? description,
    String? id,
  }) {
    return _$Deployment._(
      apiSummary: apiSummary == null
          ? null
          : _i3.BuiltMap(apiSummary.map((
              key,
              value,
            ) =>
              MapEntry(
                key,
                _i3.BuiltMap(value),
              ))),
      createdDate: createdDate,
      description: description,
      id: id,
    );
  }

  /// An immutable representation of a RestApi resource that can be called by users using Stages. A deployment must be associated with a Stage for it to be callable over the Internet.
  factory Deployment.build([void Function(DeploymentBuilder) updates]) =
      _$Deployment;

  const Deployment._();

  /// Constructs a [Deployment] from a [payload] and [response].
  factory Deployment.fromResponse(
    Deployment payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DeploymentRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeploymentBuilder b) {}

  /// A summary of the RestApi at the date and time that the deployment resource was created.
  _i3.BuiltMap<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>?
      get apiSummary;

  /// The date and time that the deployment resource was created.
  DateTime? get createdDate;

  /// The description for the deployment resource.
  String? get description;

  /// The identifier for the deployment resource.
  String? get id;
  @override
  List<Object?> get props => [
        apiSummary,
        createdDate,
        description,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Deployment');
    helper.add(
      'apiSummary',
      apiSummary,
    );
    helper.add(
      'createdDate',
      createdDate,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

class DeploymentRestJson1Serializer
    extends _i4.StructuredSmithySerializer<Deployment> {
  const DeploymentRestJson1Serializer() : super('Deployment');

  @override
  Iterable<Type> get types => const [
        Deployment,
        _$Deployment,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Deployment deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeploymentBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'apiSummary':
          if (value != null) {
            result.apiSummary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(
                    _i3.BuiltMap,
                    [
                      FullType(String),
                      FullType(_i2.MethodSnapshot),
                    ],
                  ),
                ],
              ),
            ) as _i3
                .BuiltMap<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>));
          }
          break;
        case 'createdDate':
          if (value != null) {
            result.createdDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Deployment);
    final result = <Object?>[];
    if (payload.apiSummary != null) {
      result
        ..add('apiSummary')
        ..add(serializers.serialize(
          payload.apiSummary!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.MethodSnapshot),
                ],
              ),
            ],
          ),
        ));
    }
    if (payload.createdDate != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(
          payload.createdDate!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
