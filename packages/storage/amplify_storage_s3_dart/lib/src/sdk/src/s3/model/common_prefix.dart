// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_storage_s3_dart.s3.model.common_prefix; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'common_prefix.g.dart';

/// Container for all (if there are any) keys between Prefix and the next occurrence of the string specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/.
abstract class CommonPrefix
    with _i1.AWSEquatable<CommonPrefix>
    implements Built<CommonPrefix, CommonPrefixBuilder> {
  /// Container for all (if there are any) keys between Prefix and the next occurrence of the string specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/.
  factory CommonPrefix({String? prefix}) {
    return _$CommonPrefix._(prefix: prefix);
  }

  /// Container for all (if there are any) keys between Prefix and the next occurrence of the string specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in the directory specified by Prefix. For example, if the prefix is notes/ and the delimiter is a slash (/) as in notes/summer/july, the common prefix is notes/summer/.
  factory CommonPrefix.build([void Function(CommonPrefixBuilder) updates]) =
      _$CommonPrefix;

  const CommonPrefix._();

  static const List<_i2.SmithySerializer> serializers = [
    CommonPrefixRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CommonPrefixBuilder b) {}

  /// Container for the specified common prefix.
  String? get prefix;
  @override
  List<Object?> get props => [prefix];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CommonPrefix');
    helper.add(
      'prefix',
      prefix,
    );
    return helper.toString();
  }
}

class CommonPrefixRestXmlSerializer
    extends _i2.StructuredSmithySerializer<CommonPrefix> {
  const CommonPrefixRestXmlSerializer() : super('CommonPrefix');

  @override
  Iterable<Type> get types => const [
        CommonPrefix,
        _$CommonPrefix,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  CommonPrefix deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommonPrefixBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
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
    final payload = (object as CommonPrefix);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CommonPrefix',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.prefix != null) {
      result
        ..add(const _i2.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
