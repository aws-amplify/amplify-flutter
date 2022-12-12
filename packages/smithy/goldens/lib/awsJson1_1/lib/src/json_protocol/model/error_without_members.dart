// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v1.json_protocol.model.error_without_members; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'error_without_members.g.dart';

abstract class ErrorWithoutMembers
    with _i1.AWSEquatable<ErrorWithoutMembers>
    implements
        Built<ErrorWithoutMembers, ErrorWithoutMembersBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  factory ErrorWithoutMembers() {
    return _$ErrorWithoutMembers._();
  }

  factory ErrorWithoutMembers.build(
          [void Function(ErrorWithoutMembersBuilder) updates]) =
      _$ErrorWithoutMembers;

  const ErrorWithoutMembers._();

  /// Constructs a [ErrorWithoutMembers] from a [payload] and [response].
  factory ErrorWithoutMembers.fromResponse(
    ErrorWithoutMembers payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ErrorWithoutMembersAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorWithoutMembersBuilder b) {}
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'aws.protocoltests.json',
        shape: 'ErrorWithoutMembers',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ErrorWithoutMembers');
    return helper.toString();
  }
}

class ErrorWithoutMembersAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ErrorWithoutMembers> {
  const ErrorWithoutMembersAwsJson11Serializer() : super('ErrorWithoutMembers');

  @override
  Iterable<Type> get types => const [
        ErrorWithoutMembers,
        _$ErrorWithoutMembers,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ErrorWithoutMembers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ErrorWithoutMembersBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
