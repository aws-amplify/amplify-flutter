// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.generate_credential_report_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/report_state_type.dart' as _i2;

part 'generate_credential_report_response.g.dart';

/// Contains the response to a successful GenerateCredentialReport request.
abstract class GenerateCredentialReportResponse
    with
        _i1.AWSEquatable<GenerateCredentialReportResponse>
    implements
        Built<GenerateCredentialReportResponse,
            GenerateCredentialReportResponseBuilder> {
  /// Contains the response to a successful GenerateCredentialReport request.
  factory GenerateCredentialReportResponse({
    _i2.ReportStateType? state,
    String? description,
  }) {
    return _$GenerateCredentialReportResponse._(
      state: state,
      description: description,
    );
  }

  /// Contains the response to a successful GenerateCredentialReport request.
  factory GenerateCredentialReportResponse.build(
          [void Function(GenerateCredentialReportResponseBuilder) updates]) =
      _$GenerateCredentialReportResponse;

  const GenerateCredentialReportResponse._();

  /// Constructs a [GenerateCredentialReportResponse] from a [payload] and [response].
  factory GenerateCredentialReportResponse.fromResponse(
    GenerateCredentialReportResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GenerateCredentialReportResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GenerateCredentialReportResponseBuilder b) {}

  /// Information about the state of the credential report.
  _i2.ReportStateType? get state;

  /// Information about the credential report.
  String? get description;
  @override
  List<Object?> get props => [
        state,
        description,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GenerateCredentialReportResponse');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class GenerateCredentialReportResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GenerateCredentialReportResponse> {
  const GenerateCredentialReportResponseAwsQuerySerializer()
      : super('GenerateCredentialReportResponse');

  @override
  Iterable<Type> get types => const [
        GenerateCredentialReportResponse,
        _$GenerateCredentialReportResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GenerateCredentialReportResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerateCredentialReportResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'State':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReportStateType),
            ) as _i2.ReportStateType);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as GenerateCredentialReportResponse);
    final result = <Object?>[
      const _i3.XmlElementName(
        'GenerateCredentialReportResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.ReportStateType),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
