import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'aws_json_1_0_trait.g.dart';

@JsonSerializable()
class AwsJson1_0Trait extends AWSProtocolTrait {
  const AwsJson1_0Trait({
    List<AlpnProtocol> http = AWSProtocolTrait.defaultHttpProtocols,
    List<AlpnProtocol>? eventStreamHttp,
  }) : super(
          id,
          http: http,
          eventStreamHttp: eventStreamHttp,
          timestampFormat: TimestampFormat.epochSeconds,
        );

  factory AwsJson1_0Trait.fromJson(Object? json) =>
      _$AwsJson1_0TraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_0');

  @override
  Map<String, Object?> toJson() => _$AwsJson1_0TraitToJson(this);

  @override
  List<ShapeId> get traits => const [
        CorsTrait.id,
        EndpointTrait.id,
        HostLabelTrait.id,
        TimestampFormatTrait.id,
      ];
}

// ignore_for_file: camel_case_types
