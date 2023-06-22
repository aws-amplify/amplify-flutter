// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_service_last_accessed_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServiceLastAccessedDetailsResponse
    extends GetServiceLastAccessedDetailsResponse {
  @override
  final _i2.JobStatusType jobStatus;
  @override
  final _i3.AccessAdvisorUsageGranularityType? jobType;
  @override
  final DateTime jobCreationDate;
  @override
  final _i6.BuiltList<_i4.ServiceLastAccessed> servicesLastAccessed;
  @override
  final DateTime jobCompletionDate;
  @override
  final bool isTruncated;
  @override
  final String? marker;
  @override
  final _i5.ErrorDetails? error;

  factory _$GetServiceLastAccessedDetailsResponse(
          [void Function(GetServiceLastAccessedDetailsResponseBuilder)?
              updates]) =>
      (new GetServiceLastAccessedDetailsResponseBuilder()..update(updates))
          ._build();

  _$GetServiceLastAccessedDetailsResponse._(
      {required this.jobStatus,
      this.jobType,
      required this.jobCreationDate,
      required this.servicesLastAccessed,
      required this.jobCompletionDate,
      required this.isTruncated,
      this.marker,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobStatus, r'GetServiceLastAccessedDetailsResponse', 'jobStatus');
    BuiltValueNullFieldError.checkNotNull(jobCreationDate,
        r'GetServiceLastAccessedDetailsResponse', 'jobCreationDate');
    BuiltValueNullFieldError.checkNotNull(servicesLastAccessed,
        r'GetServiceLastAccessedDetailsResponse', 'servicesLastAccessed');
    BuiltValueNullFieldError.checkNotNull(jobCompletionDate,
        r'GetServiceLastAccessedDetailsResponse', 'jobCompletionDate');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'GetServiceLastAccessedDetailsResponse', 'isTruncated');
  }

  @override
  GetServiceLastAccessedDetailsResponse rebuild(
          void Function(GetServiceLastAccessedDetailsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServiceLastAccessedDetailsResponseBuilder toBuilder() =>
      new GetServiceLastAccessedDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServiceLastAccessedDetailsResponse &&
        jobStatus == other.jobStatus &&
        jobType == other.jobType &&
        jobCreationDate == other.jobCreationDate &&
        servicesLastAccessed == other.servicesLastAccessed &&
        jobCompletionDate == other.jobCompletionDate &&
        isTruncated == other.isTruncated &&
        marker == other.marker &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobStatus.hashCode);
    _$hash = $jc(_$hash, jobType.hashCode);
    _$hash = $jc(_$hash, jobCreationDate.hashCode);
    _$hash = $jc(_$hash, servicesLastAccessed.hashCode);
    _$hash = $jc(_$hash, jobCompletionDate.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetServiceLastAccessedDetailsResponseBuilder
    implements
        Builder<GetServiceLastAccessedDetailsResponse,
            GetServiceLastAccessedDetailsResponseBuilder> {
  _$GetServiceLastAccessedDetailsResponse? _$v;

  _i2.JobStatusType? _jobStatus;
  _i2.JobStatusType? get jobStatus => _$this._jobStatus;
  set jobStatus(_i2.JobStatusType? jobStatus) => _$this._jobStatus = jobStatus;

  _i3.AccessAdvisorUsageGranularityType? _jobType;
  _i3.AccessAdvisorUsageGranularityType? get jobType => _$this._jobType;
  set jobType(_i3.AccessAdvisorUsageGranularityType? jobType) =>
      _$this._jobType = jobType;

  DateTime? _jobCreationDate;
  DateTime? get jobCreationDate => _$this._jobCreationDate;
  set jobCreationDate(DateTime? jobCreationDate) =>
      _$this._jobCreationDate = jobCreationDate;

  _i6.ListBuilder<_i4.ServiceLastAccessed>? _servicesLastAccessed;
  _i6.ListBuilder<_i4.ServiceLastAccessed> get servicesLastAccessed =>
      _$this._servicesLastAccessed ??=
          new _i6.ListBuilder<_i4.ServiceLastAccessed>();
  set servicesLastAccessed(
          _i6.ListBuilder<_i4.ServiceLastAccessed>? servicesLastAccessed) =>
      _$this._servicesLastAccessed = servicesLastAccessed;

  DateTime? _jobCompletionDate;
  DateTime? get jobCompletionDate => _$this._jobCompletionDate;
  set jobCompletionDate(DateTime? jobCompletionDate) =>
      _$this._jobCompletionDate = jobCompletionDate;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  _i5.ErrorDetailsBuilder? _error;
  _i5.ErrorDetailsBuilder get error =>
      _$this._error ??= new _i5.ErrorDetailsBuilder();
  set error(_i5.ErrorDetailsBuilder? error) => _$this._error = error;

  GetServiceLastAccessedDetailsResponseBuilder() {
    GetServiceLastAccessedDetailsResponse._init(this);
  }

  GetServiceLastAccessedDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobStatus = $v.jobStatus;
      _jobType = $v.jobType;
      _jobCreationDate = $v.jobCreationDate;
      _servicesLastAccessed = $v.servicesLastAccessed.toBuilder();
      _jobCompletionDate = $v.jobCompletionDate;
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServiceLastAccessedDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServiceLastAccessedDetailsResponse;
  }

  @override
  void update(
      void Function(GetServiceLastAccessedDetailsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServiceLastAccessedDetailsResponse build() => _build();

  _$GetServiceLastAccessedDetailsResponse _build() {
    _$GetServiceLastAccessedDetailsResponse _$result;
    try {
      _$result = _$v ??
          new _$GetServiceLastAccessedDetailsResponse._(
              jobStatus: BuiltValueNullFieldError.checkNotNull(jobStatus,
                  r'GetServiceLastAccessedDetailsResponse', 'jobStatus'),
              jobType: jobType,
              jobCreationDate: BuiltValueNullFieldError.checkNotNull(
                  jobCreationDate,
                  r'GetServiceLastAccessedDetailsResponse',
                  'jobCreationDate'),
              servicesLastAccessed: servicesLastAccessed.build(),
              jobCompletionDate: BuiltValueNullFieldError.checkNotNull(
                  jobCompletionDate,
                  r'GetServiceLastAccessedDetailsResponse',
                  'jobCompletionDate'),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'GetServiceLastAccessedDetailsResponse', 'isTruncated'),
              marker: marker,
              error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'servicesLastAccessed';
        servicesLastAccessed.build();

        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetServiceLastAccessedDetailsResponse',
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
