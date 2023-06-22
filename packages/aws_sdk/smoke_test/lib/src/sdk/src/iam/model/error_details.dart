// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.error_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'error_details.g.dart';

/// Contains information about the reason that the operation failed.
///
/// This data type is used as a response element in the GetOrganizationsAccessReport, GetServiceLastAccessedDetails, and GetServiceLastAccessedDetailsWithEntities operations.
abstract class ErrorDetails
    with _i1.AWSEquatable<ErrorDetails>
    implements Built<ErrorDetails, ErrorDetailsBuilder> {
  /// Contains information about the reason that the operation failed.
  ///
  /// This data type is used as a response element in the GetOrganizationsAccessReport, GetServiceLastAccessedDetails, and GetServiceLastAccessedDetailsWithEntities operations.
  factory ErrorDetails({
    required String message,
    required String code,
  }) {
    return _$ErrorDetails._(
      message: message,
      code: code,
    );
  }

  /// Contains information about the reason that the operation failed.
  ///
  /// This data type is used as a response element in the GetOrganizationsAccessReport, GetServiceLastAccessedDetails, and GetServiceLastAccessedDetailsWithEntities operations.
  factory ErrorDetails.build([void Function(ErrorDetailsBuilder) updates]) =
      _$ErrorDetails;

  const ErrorDetails._();

  static const List<_i2.SmithySerializer<ErrorDetails>> serializers = [
    ErrorDetailsAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ErrorDetailsBuilder b) {}

  /// Detailed information about the reason that the operation failed.
  String get message;

  /// The error code associated with the operation failure.
  String get code;
  @override
  List<Object?> get props => [
        message,
        code,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ErrorDetails')
      ..add(
        'message',
        message,
      )
      ..add(
        'code',
        code,
      );
    return helper.toString();
  }
}

class ErrorDetailsAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ErrorDetails> {
  const ErrorDetailsAwsQuerySerializer() : super('ErrorDetails');

  @override
  Iterable<Type> get types => const [
        ErrorDetails,
        _$ErrorDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ErrorDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Code':
          result.code = (serializers.deserialize(
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
    ErrorDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ErrorDetailsResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ErrorDetails(:message, :code) = object;
    result$
      ..add(const _i2.XmlElementName('Message'))
      ..add(serializers.serialize(
        message,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Code'))
      ..add(serializers.serialize(
        code,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
