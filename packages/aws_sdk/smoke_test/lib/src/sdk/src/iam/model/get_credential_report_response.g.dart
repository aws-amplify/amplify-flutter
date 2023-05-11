// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_credential_report_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCredentialReportResponse extends GetCredentialReportResponse {
  @override
  final _i2.Uint8List? content;
  @override
  final _i3.ReportFormatType? reportFormat;
  @override
  final DateTime? generatedTime;

  factory _$GetCredentialReportResponse(
          [void Function(GetCredentialReportResponseBuilder)? updates]) =>
      (new GetCredentialReportResponseBuilder()..update(updates))._build();

  _$GetCredentialReportResponse._(
      {this.content, this.reportFormat, this.generatedTime})
      : super._();

  @override
  GetCredentialReportResponse rebuild(
          void Function(GetCredentialReportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCredentialReportResponseBuilder toBuilder() =>
      new GetCredentialReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCredentialReportResponse &&
        content == other.content &&
        reportFormat == other.reportFormat &&
        generatedTime == other.generatedTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, reportFormat.hashCode);
    _$hash = $jc(_$hash, generatedTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCredentialReportResponseBuilder
    implements
        Builder<GetCredentialReportResponse,
            GetCredentialReportResponseBuilder> {
  _$GetCredentialReportResponse? _$v;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  _i3.ReportFormatType? _reportFormat;
  _i3.ReportFormatType? get reportFormat => _$this._reportFormat;
  set reportFormat(_i3.ReportFormatType? reportFormat) =>
      _$this._reportFormat = reportFormat;

  DateTime? _generatedTime;
  DateTime? get generatedTime => _$this._generatedTime;
  set generatedTime(DateTime? generatedTime) =>
      _$this._generatedTime = generatedTime;

  GetCredentialReportResponseBuilder() {
    GetCredentialReportResponse._init(this);
  }

  GetCredentialReportResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _reportFormat = $v.reportFormat;
      _generatedTime = $v.generatedTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCredentialReportResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCredentialReportResponse;
  }

  @override
  void update(void Function(GetCredentialReportResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCredentialReportResponse build() => _build();

  _$GetCredentialReportResponse _build() {
    final _$result = _$v ??
        new _$GetCredentialReportResponse._(
            content: content,
            reportFormat: reportFormat,
            generatedTime: generatedTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
