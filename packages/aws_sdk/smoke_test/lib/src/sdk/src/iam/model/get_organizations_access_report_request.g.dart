// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_organizations_access_report_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationsAccessReportRequest
    extends GetOrganizationsAccessReportRequest {
  @override
  final String jobId;
  @override
  final int? maxItems;
  @override
  final String? marker;
  @override
  final _i3.SortKeyType? sortKey;

  factory _$GetOrganizationsAccessReportRequest(
          [void Function(GetOrganizationsAccessReportRequestBuilder)?
              updates]) =>
      (new GetOrganizationsAccessReportRequestBuilder()..update(updates))
          ._build();

  _$GetOrganizationsAccessReportRequest._(
      {required this.jobId, this.maxItems, this.marker, this.sortKey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'GetOrganizationsAccessReportRequest', 'jobId');
  }

  @override
  GetOrganizationsAccessReportRequest rebuild(
          void Function(GetOrganizationsAccessReportRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationsAccessReportRequestBuilder toBuilder() =>
      new GetOrganizationsAccessReportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationsAccessReportRequest &&
        jobId == other.jobId &&
        maxItems == other.maxItems &&
        marker == other.marker &&
        sortKey == other.sortKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, sortKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOrganizationsAccessReportRequestBuilder
    implements
        Builder<GetOrganizationsAccessReportRequest,
            GetOrganizationsAccessReportRequestBuilder> {
  _$GetOrganizationsAccessReportRequest? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  _i3.SortKeyType? _sortKey;
  _i3.SortKeyType? get sortKey => _$this._sortKey;
  set sortKey(_i3.SortKeyType? sortKey) => _$this._sortKey = sortKey;

  GetOrganizationsAccessReportRequestBuilder() {
    GetOrganizationsAccessReportRequest._init(this);
  }

  GetOrganizationsAccessReportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _maxItems = $v.maxItems;
      _marker = $v.marker;
      _sortKey = $v.sortKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationsAccessReportRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationsAccessReportRequest;
  }

  @override
  void update(
      void Function(GetOrganizationsAccessReportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationsAccessReportRequest build() => _build();

  _$GetOrganizationsAccessReportRequest _build() {
    final _$result = _$v ??
        new _$GetOrganizationsAccessReportRequest._(
            jobId: BuiltValueNullFieldError.checkNotNull(
                jobId, r'GetOrganizationsAccessReportRequest', 'jobId'),
            maxItems: maxItems,
            marker: marker,
            sortKey: sortKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
