// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'aws_query_trait.g.dart';

@JsonSerializable()
class AwsQueryTrait extends AWSProtocolTrait {
  const AwsQueryTrait()
      : super(
          id,
          timestampFormat: TimestampFormat.dateTime,
        );

  factory AwsQueryTrait.fromJson(Object? json) =>
      _$AwsQueryTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'awsQuery');

  @override
  Map<String, Object?> toJson() => _$AwsQueryTraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        XmlAttributeTrait.id,
        XmlFlattenedTrait.id,
        XmlNameTrait.id,
        XmlNamespaceTrait.id,
        TimestampFormatTrait.id,
        AwsQueryErrorTrait.id,
        AwsQueryCompatibleTrait.id,
      ];
}

@JsonSerializable()
class AwsQueryErrorTrait implements Trait<AwsQueryErrorTrait> {
  const AwsQueryErrorTrait({
    required this.code,
    required this.httpResponseCode,
  });

  factory AwsQueryErrorTrait.fromJson(Object? json) =>
      _$AwsQueryErrorTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'awsQueryError');

  /// The value used to distinguish this error shape during client
  /// deserialization.
  final String code;

  /// The HTTP response code used on a response that contains this error shape.
  final int httpResponseCode;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [code, httpResponseCode];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$AwsQueryErrorTraitToJson(this);

  @override
  AwsQueryErrorTrait get value => this;
}

class AwsQueryCompatibleTrait extends AnnotationTrait {
  const AwsQueryCompatibleTrait() : super(id);

  const AwsQueryCompatibleTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(
    namespace: 'aws.protocols',
    shape: 'awsQueryCompatible',
  );
}
