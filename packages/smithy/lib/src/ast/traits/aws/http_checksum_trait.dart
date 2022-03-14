import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_checksum_trait.g.dart';

enum ChecksumAlgorithm {
  @JsonValue('CRC32C')
  crc32c,

  @JsonValue('CRC32')
  crc32,

  @JsonValue('SHA1')
  sha1,

  @JsonValue('SHA256')
  sha256,

  @JsonValue('MD5')
  md5,
}

@ShapeIdConverter()
@JsonSerializable()
class HttpChecksumTrait
    with AWSSerializable
    implements Trait<HttpChecksumTrait> {
  const HttpChecksumTrait({
    required this.requestChecksumRequired,
    this.requestAlgorithmMember,
    this.requestValidationModeMember,
    this.responseAlgorithms = const {},
  });

  factory HttpChecksumTrait.fromJson(Object? json) =>
      _$HttpChecksumTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.protocols', shape: 'httpChecksum');

  final bool requestChecksumRequired;
  final String? requestAlgorithmMember;
  final String? requestValidationModeMember;
  final Set<ChecksumAlgorithm> responseAlgorithms;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        requestChecksumRequired,
        requestAlgorithmMember,
        requestValidationModeMember,
        responseAlgorithms,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpChecksumTraitToJson(this);

  @override
  HttpChecksumTrait get value => this;
}
