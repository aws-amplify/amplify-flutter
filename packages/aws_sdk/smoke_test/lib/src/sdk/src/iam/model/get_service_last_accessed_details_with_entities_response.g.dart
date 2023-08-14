// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_service_last_accessed_details_with_entities_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServiceLastAccessedDetailsWithEntitiesResponse
    extends GetServiceLastAccessedDetailsWithEntitiesResponse {
  @override
  final JobStatusType jobStatus;
  @override
  final DateTime jobCreationDate;
  @override
  final DateTime jobCompletionDate;
  @override
  final _i2.BuiltList<EntityDetails> entityDetailsList;
  @override
  final bool isTruncated;
  @override
  final String? marker;
  @override
  final ErrorDetails? error;

  factory _$GetServiceLastAccessedDetailsWithEntitiesResponse(
          [void Function(
                  GetServiceLastAccessedDetailsWithEntitiesResponseBuilder)?
              updates]) =>
      (new GetServiceLastAccessedDetailsWithEntitiesResponseBuilder()
            ..update(updates))
          ._build();

  _$GetServiceLastAccessedDetailsWithEntitiesResponse._(
      {required this.jobStatus,
      required this.jobCreationDate,
      required this.jobCompletionDate,
      required this.entityDetailsList,
      required this.isTruncated,
      this.marker,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(jobStatus,
        r'GetServiceLastAccessedDetailsWithEntitiesResponse', 'jobStatus');
    BuiltValueNullFieldError.checkNotNull(
        jobCreationDate,
        r'GetServiceLastAccessedDetailsWithEntitiesResponse',
        'jobCreationDate');
    BuiltValueNullFieldError.checkNotNull(
        jobCompletionDate,
        r'GetServiceLastAccessedDetailsWithEntitiesResponse',
        'jobCompletionDate');
    BuiltValueNullFieldError.checkNotNull(
        entityDetailsList,
        r'GetServiceLastAccessedDetailsWithEntitiesResponse',
        'entityDetailsList');
    BuiltValueNullFieldError.checkNotNull(isTruncated,
        r'GetServiceLastAccessedDetailsWithEntitiesResponse', 'isTruncated');
  }

  @override
  GetServiceLastAccessedDetailsWithEntitiesResponse rebuild(
          void Function(
                  GetServiceLastAccessedDetailsWithEntitiesResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServiceLastAccessedDetailsWithEntitiesResponseBuilder toBuilder() =>
      new GetServiceLastAccessedDetailsWithEntitiesResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServiceLastAccessedDetailsWithEntitiesResponse &&
        jobStatus == other.jobStatus &&
        jobCreationDate == other.jobCreationDate &&
        jobCompletionDate == other.jobCompletionDate &&
        entityDetailsList == other.entityDetailsList &&
        isTruncated == other.isTruncated &&
        marker == other.marker &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobStatus.hashCode);
    _$hash = $jc(_$hash, jobCreationDate.hashCode);
    _$hash = $jc(_$hash, jobCompletionDate.hashCode);
    _$hash = $jc(_$hash, entityDetailsList.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetServiceLastAccessedDetailsWithEntitiesResponseBuilder
    implements
        Builder<GetServiceLastAccessedDetailsWithEntitiesResponse,
            GetServiceLastAccessedDetailsWithEntitiesResponseBuilder> {
  _$GetServiceLastAccessedDetailsWithEntitiesResponse? _$v;

  JobStatusType? _jobStatus;
  JobStatusType? get jobStatus => _$this._jobStatus;
  set jobStatus(JobStatusType? jobStatus) => _$this._jobStatus = jobStatus;

  DateTime? _jobCreationDate;
  DateTime? get jobCreationDate => _$this._jobCreationDate;
  set jobCreationDate(DateTime? jobCreationDate) =>
      _$this._jobCreationDate = jobCreationDate;

  DateTime? _jobCompletionDate;
  DateTime? get jobCompletionDate => _$this._jobCompletionDate;
  set jobCompletionDate(DateTime? jobCompletionDate) =>
      _$this._jobCompletionDate = jobCompletionDate;

  _i2.ListBuilder<EntityDetails>? _entityDetailsList;
  _i2.ListBuilder<EntityDetails> get entityDetailsList =>
      _$this._entityDetailsList ??= new _i2.ListBuilder<EntityDetails>();
  set entityDetailsList(_i2.ListBuilder<EntityDetails>? entityDetailsList) =>
      _$this._entityDetailsList = entityDetailsList;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ErrorDetailsBuilder? _error;
  ErrorDetailsBuilder get error => _$this._error ??= new ErrorDetailsBuilder();
  set error(ErrorDetailsBuilder? error) => _$this._error = error;

  GetServiceLastAccessedDetailsWithEntitiesResponseBuilder() {
    GetServiceLastAccessedDetailsWithEntitiesResponse._init(this);
  }

  GetServiceLastAccessedDetailsWithEntitiesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobStatus = $v.jobStatus;
      _jobCreationDate = $v.jobCreationDate;
      _jobCompletionDate = $v.jobCompletionDate;
      _entityDetailsList = $v.entityDetailsList.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _error = $v.error?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServiceLastAccessedDetailsWithEntitiesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServiceLastAccessedDetailsWithEntitiesResponse;
  }

  @override
  void update(
      void Function(GetServiceLastAccessedDetailsWithEntitiesResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServiceLastAccessedDetailsWithEntitiesResponse build() => _build();

  _$GetServiceLastAccessedDetailsWithEntitiesResponse _build() {
    _$GetServiceLastAccessedDetailsWithEntitiesResponse _$result;
    try {
      _$result = _$v ??
          new _$GetServiceLastAccessedDetailsWithEntitiesResponse._(
              jobStatus: BuiltValueNullFieldError.checkNotNull(
                  jobStatus,
                  r'GetServiceLastAccessedDetailsWithEntitiesResponse',
                  'jobStatus'),
              jobCreationDate: BuiltValueNullFieldError.checkNotNull(
                  jobCreationDate,
                  r'GetServiceLastAccessedDetailsWithEntitiesResponse',
                  'jobCreationDate'),
              jobCompletionDate: BuiltValueNullFieldError.checkNotNull(
                  jobCompletionDate,
                  r'GetServiceLastAccessedDetailsWithEntitiesResponse',
                  'jobCompletionDate'),
              entityDetailsList: entityDetailsList.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated,
                  r'GetServiceLastAccessedDetailsWithEntitiesResponse',
                  'isTruncated'),
              marker: marker,
              error: _error?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityDetailsList';
        entityDetailsList.build();

        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetServiceLastAccessedDetailsWithEntitiesResponse',
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
