// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_organizations_access_report_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationsAccessReportResponse
    extends GetOrganizationsAccessReportResponse {
  @override
  final _i2.JobStatusType jobStatus;
  @override
  final DateTime jobCreationDate;
  @override
  final DateTime? jobCompletionDate;
  @override
  final int? numberOfServicesAccessible;
  @override
  final int? numberOfServicesNotAccessed;
  @override
  final _i5.BuiltList<_i3.AccessDetail>? accessDetails;
  @override
  final bool isTruncated;
  @override
  final String? marker;
  @override
  final _i4.ErrorDetails? errorDetails;

  factory _$GetOrganizationsAccessReportResponse(
          [void Function(GetOrganizationsAccessReportResponseBuilder)?
              updates]) =>
      (new GetOrganizationsAccessReportResponseBuilder()..update(updates))
          ._build();

  _$GetOrganizationsAccessReportResponse._(
      {required this.jobStatus,
      required this.jobCreationDate,
      this.jobCompletionDate,
      this.numberOfServicesAccessible,
      this.numberOfServicesNotAccessed,
      this.accessDetails,
      required this.isTruncated,
      this.marker,
      this.errorDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobStatus, r'GetOrganizationsAccessReportResponse', 'jobStatus');
    BuiltValueNullFieldError.checkNotNull(jobCreationDate,
        r'GetOrganizationsAccessReportResponse', 'jobCreationDate');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'GetOrganizationsAccessReportResponse', 'isTruncated');
  }

  @override
  GetOrganizationsAccessReportResponse rebuild(
          void Function(GetOrganizationsAccessReportResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationsAccessReportResponseBuilder toBuilder() =>
      new GetOrganizationsAccessReportResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationsAccessReportResponse &&
        jobStatus == other.jobStatus &&
        jobCreationDate == other.jobCreationDate &&
        jobCompletionDate == other.jobCompletionDate &&
        numberOfServicesAccessible == other.numberOfServicesAccessible &&
        numberOfServicesNotAccessed == other.numberOfServicesNotAccessed &&
        accessDetails == other.accessDetails &&
        isTruncated == other.isTruncated &&
        marker == other.marker &&
        errorDetails == other.errorDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobStatus.hashCode);
    _$hash = $jc(_$hash, jobCreationDate.hashCode);
    _$hash = $jc(_$hash, jobCompletionDate.hashCode);
    _$hash = $jc(_$hash, numberOfServicesAccessible.hashCode);
    _$hash = $jc(_$hash, numberOfServicesNotAccessed.hashCode);
    _$hash = $jc(_$hash, accessDetails.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, errorDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationsAccessReportResponseBuilder
    implements
        Builder<GetOrganizationsAccessReportResponse,
            GetOrganizationsAccessReportResponseBuilder> {
  _$GetOrganizationsAccessReportResponse? _$v;

  _i2.JobStatusType? _jobStatus;
  _i2.JobStatusType? get jobStatus => _$this._jobStatus;
  set jobStatus(_i2.JobStatusType? jobStatus) => _$this._jobStatus = jobStatus;

  DateTime? _jobCreationDate;
  DateTime? get jobCreationDate => _$this._jobCreationDate;
  set jobCreationDate(DateTime? jobCreationDate) =>
      _$this._jobCreationDate = jobCreationDate;

  DateTime? _jobCompletionDate;
  DateTime? get jobCompletionDate => _$this._jobCompletionDate;
  set jobCompletionDate(DateTime? jobCompletionDate) =>
      _$this._jobCompletionDate = jobCompletionDate;

  int? _numberOfServicesAccessible;
  int? get numberOfServicesAccessible => _$this._numberOfServicesAccessible;
  set numberOfServicesAccessible(int? numberOfServicesAccessible) =>
      _$this._numberOfServicesAccessible = numberOfServicesAccessible;

  int? _numberOfServicesNotAccessed;
  int? get numberOfServicesNotAccessed => _$this._numberOfServicesNotAccessed;
  set numberOfServicesNotAccessed(int? numberOfServicesNotAccessed) =>
      _$this._numberOfServicesNotAccessed = numberOfServicesNotAccessed;

  _i5.ListBuilder<_i3.AccessDetail>? _accessDetails;
  _i5.ListBuilder<_i3.AccessDetail> get accessDetails =>
      _$this._accessDetails ??= new _i5.ListBuilder<_i3.AccessDetail>();
  set accessDetails(_i5.ListBuilder<_i3.AccessDetail>? accessDetails) =>
      _$this._accessDetails = accessDetails;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  _i4.ErrorDetailsBuilder? _errorDetails;
  _i4.ErrorDetailsBuilder get errorDetails =>
      _$this._errorDetails ??= new _i4.ErrorDetailsBuilder();
  set errorDetails(_i4.ErrorDetailsBuilder? errorDetails) =>
      _$this._errorDetails = errorDetails;

  GetOrganizationsAccessReportResponseBuilder() {
    GetOrganizationsAccessReportResponse._init(this);
  }

  GetOrganizationsAccessReportResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobStatus = $v.jobStatus;
      _jobCreationDate = $v.jobCreationDate;
      _jobCompletionDate = $v.jobCompletionDate;
      _numberOfServicesAccessible = $v.numberOfServicesAccessible;
      _numberOfServicesNotAccessed = $v.numberOfServicesNotAccessed;
      _accessDetails = $v.accessDetails?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _errorDetails = $v.errorDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationsAccessReportResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationsAccessReportResponse;
  }

  @override
  void update(
      void Function(GetOrganizationsAccessReportResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationsAccessReportResponse build() => _build();

  _$GetOrganizationsAccessReportResponse _build() {
    _$GetOrganizationsAccessReportResponse _$result;
    try {
      _$result = _$v ??
          new _$GetOrganizationsAccessReportResponse._(
              jobStatus: BuiltValueNullFieldError.checkNotNull(jobStatus,
                  r'GetOrganizationsAccessReportResponse', 'jobStatus'),
              jobCreationDate: BuiltValueNullFieldError.checkNotNull(
                  jobCreationDate,
                  r'GetOrganizationsAccessReportResponse',
                  'jobCreationDate'),
              jobCompletionDate: jobCompletionDate,
              numberOfServicesAccessible: numberOfServicesAccessible,
              numberOfServicesNotAccessed: numberOfServicesNotAccessed,
              accessDetails: _accessDetails?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'GetOrganizationsAccessReportResponse', 'isTruncated'),
              marker: marker,
              errorDetails: _errorDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessDetails';
        _accessDetails?.build();

        _$failedField = 'errorDetails';
        _errorDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOrganizationsAccessReportResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
