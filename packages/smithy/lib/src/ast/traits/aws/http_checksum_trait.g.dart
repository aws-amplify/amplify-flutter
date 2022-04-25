// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_checksum_trait.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpChecksumTrait _$HttpChecksumTraitFromJson(Map<String, dynamic> json) =>
    HttpChecksumTrait(
      requestChecksumRequired: json['requestChecksumRequired'] as bool?,
      requestAlgorithmMember: json['requestAlgorithmMember'] as String?,
      requestValidationModeMember:
          json['requestValidationModeMember'] as String?,
      responseAlgorithms: (json['responseAlgorithms'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ChecksumAlgorithmEnumMap, e))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$HttpChecksumTraitToJson(HttpChecksumTrait instance) =>
    <String, dynamic>{
      'requestChecksumRequired': instance.requestChecksumRequired,
      'requestAlgorithmMember': instance.requestAlgorithmMember,
      'requestValidationModeMember': instance.requestValidationModeMember,
      'responseAlgorithms': instance.responseAlgorithms
          .map((e) => _$ChecksumAlgorithmEnumMap[e])
          .toList(),
    };

const _$ChecksumAlgorithmEnumMap = {
  ChecksumAlgorithm.crc32c: 'CRC32C',
  ChecksumAlgorithm.crc32: 'CRC32',
  ChecksumAlgorithm.sha1: 'SHA1',
  ChecksumAlgorithm.sha256: 'SHA256',
  ChecksumAlgorithm.md5: 'MD5',
};
