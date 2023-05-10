// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_service_last_accessed_details_with_entities_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServiceLastAccessedDetailsWithEntitiesRequest
    extends GetServiceLastAccessedDetailsWithEntitiesRequest {
  @override
  final String jobId;
  @override
  final String serviceNamespace;
  @override
  final int? maxItems;
  @override
  final String? marker;

  factory _$GetServiceLastAccessedDetailsWithEntitiesRequest(
          [void Function(
                  GetServiceLastAccessedDetailsWithEntitiesRequestBuilder)?
              updates]) =>
      (new GetServiceLastAccessedDetailsWithEntitiesRequestBuilder()
            ..update(updates))
          ._build();

  _$GetServiceLastAccessedDetailsWithEntitiesRequest._(
      {required this.jobId,
      required this.serviceNamespace,
      this.maxItems,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'GetServiceLastAccessedDetailsWithEntitiesRequest', 'jobId');
    BuiltValueNullFieldError.checkNotNull(
        serviceNamespace,
        r'GetServiceLastAccessedDetailsWithEntitiesRequest',
        'serviceNamespace');
  }

  @override
  GetServiceLastAccessedDetailsWithEntitiesRequest rebuild(
          void Function(GetServiceLastAccessedDetailsWithEntitiesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServiceLastAccessedDetailsWithEntitiesRequestBuilder toBuilder() =>
      new GetServiceLastAccessedDetailsWithEntitiesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServiceLastAccessedDetailsWithEntitiesRequest &&
        jobId == other.jobId &&
        serviceNamespace == other.serviceNamespace &&
        maxItems == other.maxItems &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, serviceNamespace.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetServiceLastAccessedDetailsWithEntitiesRequestBuilder
    implements
        Builder<GetServiceLastAccessedDetailsWithEntitiesRequest,
            GetServiceLastAccessedDetailsWithEntitiesRequestBuilder> {
  _$GetServiceLastAccessedDetailsWithEntitiesRequest? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  String? _serviceNamespace;
  String? get serviceNamespace => _$this._serviceNamespace;
  set serviceNamespace(String? serviceNamespace) =>
      _$this._serviceNamespace = serviceNamespace;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  GetServiceLastAccessedDetailsWithEntitiesRequestBuilder() {
    GetServiceLastAccessedDetailsWithEntitiesRequest._init(this);
  }

  GetServiceLastAccessedDetailsWithEntitiesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _serviceNamespace = $v.serviceNamespace;
      _maxItems = $v.maxItems;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServiceLastAccessedDetailsWithEntitiesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServiceLastAccessedDetailsWithEntitiesRequest;
  }

  @override
  void update(
      void Function(GetServiceLastAccessedDetailsWithEntitiesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServiceLastAccessedDetailsWithEntitiesRequest build() => _build();

  _$GetServiceLastAccessedDetailsWithEntitiesRequest _build() {
    final _$result = _$v ??
        new _$GetServiceLastAccessedDetailsWithEntitiesRequest._(
            jobId: BuiltValueNullFieldError.checkNotNull(jobId,
                r'GetServiceLastAccessedDetailsWithEntitiesRequest', 'jobId'),
            serviceNamespace: BuiltValueNullFieldError.checkNotNull(
                serviceNamespace,
                r'GetServiceLastAccessedDetailsWithEntitiesRequest',
                'serviceNamespace'),
            maxItems: maxItems,
            marker: marker);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
