// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_credential_report_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i2;

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/report_format_type.dart'
    as _i3;

part 'get_credential_report_response.g.dart';

/// Contains the response to a successful GetCredentialReport request.
abstract class GetCredentialReportResponse
    with _i1.AWSEquatable<GetCredentialReportResponse>
    implements
        Built<GetCredentialReportResponse, GetCredentialReportResponseBuilder> {
  /// Contains the response to a successful GetCredentialReport request.
  factory GetCredentialReportResponse({
    _i2.Uint8List? content,
    _i3.ReportFormatType? reportFormat,
    DateTime? generatedTime,
  }) {
    return _$GetCredentialReportResponse._(
      content: content,
      reportFormat: reportFormat,
      generatedTime: generatedTime,
    );
  }

  /// Contains the response to a successful GetCredentialReport request.
  factory GetCredentialReportResponse.build(
          [void Function(GetCredentialReportResponseBuilder) updates]) =
      _$GetCredentialReportResponse;

  const GetCredentialReportResponse._();

  /// Constructs a [GetCredentialReportResponse] from a [payload] and [response].
  factory GetCredentialReportResponse.fromResponse(
    GetCredentialReportResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<GetCredentialReportResponse>>
      serializers = [GetCredentialReportResponseAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCredentialReportResponseBuilder b) {}

  /// Contains the credential report. The report is Base64-encoded.
  _i2.Uint8List? get content;

  /// The format (MIME type) of the credential report.
  _i3.ReportFormatType? get reportFormat;

  /// The date and time when the credential report was created, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601).
  DateTime? get generatedTime;
  @override
  List<Object?> get props => [
        content,
        reportFormat,
        generatedTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCredentialReportResponse')
      ..add(
        'content',
        content,
      )
      ..add(
        'reportFormat',
        reportFormat,
      )
      ..add(
        'generatedTime',
        generatedTime,
      );
    return helper.toString();
  }
}

class GetCredentialReportResponseAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<GetCredentialReportResponse> {
  const GetCredentialReportResponseAwsQuerySerializer()
      : super('GetCredentialReportResponse');

  @override
  Iterable<Type> get types => const [
        GetCredentialReportResponse,
        _$GetCredentialReportResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetCredentialReportResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCredentialReportResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Content':
          result.content = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Uint8List),
          ) as _i2.Uint8List);
        case 'ReportFormat':
          result.reportFormat = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ReportFormatType),
          ) as _i3.ReportFormatType);
        case 'GeneratedTime':
          result.generatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetCredentialReportResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'GetCredentialReportResponseResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetCredentialReportResponse(:content, :reportFormat, :generatedTime) =
        object;
    if (content != null) {
      result$
        ..add(const _i4.XmlElementName('Content'))
        ..add(serializers.serialize(
          content,
          specifiedType: const FullType.nullable(_i2.Uint8List),
        ));
    }
    if (reportFormat != null) {
      result$
        ..add(const _i4.XmlElementName('ReportFormat'))
        ..add(serializers.serialize(
          reportFormat,
          specifiedType: const FullType.nullable(_i3.ReportFormatType),
        ));
    }
    if (generatedTime != null) {
      result$
        ..add(const _i4.XmlElementName('GeneratedTime'))
        ..add(serializers.serialize(
          generatedTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
