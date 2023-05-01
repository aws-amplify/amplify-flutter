// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_service_last_accessed_details_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServiceLastAccessedDetailsRequest
    extends GetServiceLastAccessedDetailsRequest {
  @override
  final String jobId;
  @override
  final int? maxItems;
  @override
  final String? marker;

  factory _$GetServiceLastAccessedDetailsRequest(
          [void Function(GetServiceLastAccessedDetailsRequestBuilder)?
              updates]) =>
      (new GetServiceLastAccessedDetailsRequestBuilder()..update(updates))
          ._build();

  _$GetServiceLastAccessedDetailsRequest._(
      {required this.jobId, this.maxItems, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'GetServiceLastAccessedDetailsRequest', 'jobId');
  }

  @override
  GetServiceLastAccessedDetailsRequest rebuild(
          void Function(GetServiceLastAccessedDetailsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServiceLastAccessedDetailsRequestBuilder toBuilder() =>
      new GetServiceLastAccessedDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServiceLastAccessedDetailsRequest &&
        jobId == other.jobId &&
        maxItems == other.maxItems &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetServiceLastAccessedDetailsRequestBuilder
    implements
        Builder<GetServiceLastAccessedDetailsRequest,
            GetServiceLastAccessedDetailsRequestBuilder> {
  _$GetServiceLastAccessedDetailsRequest? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  GetServiceLastAccessedDetailsRequestBuilder() {
    GetServiceLastAccessedDetailsRequest._init(this);
  }

  GetServiceLastAccessedDetailsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _maxItems = $v.maxItems;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServiceLastAccessedDetailsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServiceLastAccessedDetailsRequest;
  }

  @override
  void update(
      void Function(GetServiceLastAccessedDetailsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServiceLastAccessedDetailsRequest build() => _build();

  _$GetServiceLastAccessedDetailsRequest _build() {
    final _$result = _$v ??
        new _$GetServiceLastAccessedDetailsRequest._(
            jobId: BuiltValueNullFieldError.checkNotNull(
                jobId, r'GetServiceLastAccessedDetailsRequest', 'jobId'),
            maxItems: maxItems,
            marker: marker);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
