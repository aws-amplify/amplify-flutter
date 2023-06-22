// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.region_disabled_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'region_disabled_exception.g.dart';

/// STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see [Activating and Deactivating Amazon Web Services STS in an Amazon Web Services Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the _IAM User Guide_.
abstract class RegionDisabledException
    with _i1.AWSEquatable<RegionDisabledException>
    implements
        Built<RegionDisabledException, RegionDisabledExceptionBuilder>,
        _i2.SmithyHttpException {
  /// STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see [Activating and Deactivating Amazon Web Services STS in an Amazon Web Services Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the _IAM User Guide_.
  factory RegionDisabledException({String? message}) {
    return _$RegionDisabledException._(message: message);
  }

  /// STS is not activated in the requested region for the account that is being asked to generate credentials. The account administrator must use the IAM console to activate STS in that region. For more information, see [Activating and Deactivating Amazon Web Services STS in an Amazon Web Services Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html) in the _IAM User Guide_.
  factory RegionDisabledException.build(
          [void Function(RegionDisabledExceptionBuilder) updates]) =
      _$RegionDisabledException;

  const RegionDisabledException._();

  /// Constructs a [RegionDisabledException] from a [payload] and [response].
  factory RegionDisabledException.fromResponse(
    RegionDisabledException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<RegionDisabledException>> serializers =
      [RegionDisabledExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RegionDisabledExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.sts',
        shape: 'RegionDisabledException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 403;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RegionDisabledException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class RegionDisabledExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RegionDisabledException> {
  const RegionDisabledExceptionAwsQuerySerializer()
      : super('RegionDisabledException');

  @override
  Iterable<Type> get types => const [
        RegionDisabledException,
        _$RegionDisabledException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RegionDisabledException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegionDisabledExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RegionDisabledException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RegionDisabledExceptionResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final RegionDisabledException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
