// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.generate_organizations_access_report_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateOrganizationsAccessReportResponse
    extends GenerateOrganizationsAccessReportResponse {
  @override
  final String? jobId;

  factory _$GenerateOrganizationsAccessReportResponse(
          [void Function(GenerateOrganizationsAccessReportResponseBuilder)?
              updates]) =>
      (new GenerateOrganizationsAccessReportResponseBuilder()..update(updates))
          ._build();

  _$GenerateOrganizationsAccessReportResponse._({this.jobId}) : super._();

  @override
  GenerateOrganizationsAccessReportResponse rebuild(
          void Function(GenerateOrganizationsAccessReportResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateOrganizationsAccessReportResponseBuilder toBuilder() =>
      new GenerateOrganizationsAccessReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateOrganizationsAccessReportResponse &&
        jobId == other.jobId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GenerateOrganizationsAccessReportResponseBuilder
    implements
        Builder<GenerateOrganizationsAccessReportResponse,
            GenerateOrganizationsAccessReportResponseBuilder> {
  _$GenerateOrganizationsAccessReportResponse? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  GenerateOrganizationsAccessReportResponseBuilder() {
    GenerateOrganizationsAccessReportResponse._init(this);
  }

  GenerateOrganizationsAccessReportResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateOrganizationsAccessReportResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateOrganizationsAccessReportResponse;
  }

  @override
  void update(
      void Function(GenerateOrganizationsAccessReportResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateOrganizationsAccessReportResponse build() => _build();

  _$GenerateOrganizationsAccessReportResponse _build() {
    final _$result =
        _$v ?? new _$GenerateOrganizationsAccessReportResponse._(jobId: jobId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
