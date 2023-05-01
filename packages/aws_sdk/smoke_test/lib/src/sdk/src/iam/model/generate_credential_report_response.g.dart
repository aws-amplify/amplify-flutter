// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.generate_credential_report_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateCredentialReportResponse
    extends GenerateCredentialReportResponse {
  @override
  final _i2.ReportStateType? state;
  @override
  final String? description;

  factory _$GenerateCredentialReportResponse(
          [void Function(GenerateCredentialReportResponseBuilder)? updates]) =>
      (new GenerateCredentialReportResponseBuilder()..update(updates))._build();

  _$GenerateCredentialReportResponse._({this.state, this.description})
      : super._();

  @override
  GenerateCredentialReportResponse rebuild(
          void Function(GenerateCredentialReportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateCredentialReportResponseBuilder toBuilder() =>
      new GenerateCredentialReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateCredentialReportResponse &&
        state == other.state &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GenerateCredentialReportResponseBuilder
    implements
        Builder<GenerateCredentialReportResponse,
            GenerateCredentialReportResponseBuilder> {
  _$GenerateCredentialReportResponse? _$v;

  _i2.ReportStateType? _state;
  _i2.ReportStateType? get state => _$this._state;
  set state(_i2.ReportStateType? state) => _$this._state = state;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GenerateCredentialReportResponseBuilder() {
    GenerateCredentialReportResponse._init(this);
  }

  GenerateCredentialReportResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateCredentialReportResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateCredentialReportResponse;
  }

  @override
  void update(void Function(GenerateCredentialReportResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateCredentialReportResponse build() => _build();

  _$GenerateCredentialReportResponse _build() {
    final _$result = _$v ??
        new _$GenerateCredentialReportResponse._(
            state: state, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
