// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_conformance_pack_compliance_scores_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListConformancePackComplianceScoresRequest
    extends ListConformancePackComplianceScoresRequest {
  @override
  final _i3.ConformancePackComplianceScoresFilters? filters;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i4.SortBy? sortBy;
  @override
  final _i5.SortOrder? sortOrder;

  factory _$ListConformancePackComplianceScoresRequest(
          [void Function(ListConformancePackComplianceScoresRequestBuilder)?
              updates]) =>
      (new ListConformancePackComplianceScoresRequestBuilder()..update(updates))
          ._build();

  _$ListConformancePackComplianceScoresRequest._(
      {this.filters, this.limit, this.nextToken, this.sortBy, this.sortOrder})
      : super._();

  @override
  ListConformancePackComplianceScoresRequest rebuild(
          void Function(ListConformancePackComplianceScoresRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListConformancePackComplianceScoresRequestBuilder toBuilder() =>
      new ListConformancePackComplianceScoresRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListConformancePackComplianceScoresRequest &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        sortBy == other.sortBy &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListConformancePackComplianceScoresRequestBuilder
    implements
        Builder<ListConformancePackComplianceScoresRequest,
            ListConformancePackComplianceScoresRequestBuilder> {
  _$ListConformancePackComplianceScoresRequest? _$v;

  _i3.ConformancePackComplianceScoresFiltersBuilder? _filters;
  _i3.ConformancePackComplianceScoresFiltersBuilder get filters =>
      _$this._filters ??=
          new _i3.ConformancePackComplianceScoresFiltersBuilder();
  set filters(_i3.ConformancePackComplianceScoresFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.SortBy? _sortBy;
  _i4.SortBy? get sortBy => _$this._sortBy;
  set sortBy(_i4.SortBy? sortBy) => _$this._sortBy = sortBy;

  _i5.SortOrder? _sortOrder;
  _i5.SortOrder? get sortOrder => _$this._sortOrder;
  set sortOrder(_i5.SortOrder? sortOrder) => _$this._sortOrder = sortOrder;

  ListConformancePackComplianceScoresRequestBuilder() {
    ListConformancePackComplianceScoresRequest._init(this);
  }

  ListConformancePackComplianceScoresRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _sortBy = $v.sortBy;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListConformancePackComplianceScoresRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListConformancePackComplianceScoresRequest;
  }

  @override
  void update(
      void Function(ListConformancePackComplianceScoresRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ListConformancePackComplianceScoresRequest build() => _build();

  _$ListConformancePackComplianceScoresRequest _build() {
    _$ListConformancePackComplianceScoresRequest _$result;
    try {
      _$result = _$v ??
          new _$ListConformancePackComplianceScoresRequest._(
              filters: _filters?.build(),
              limit: limit,
              nextToken: nextToken,
              sortBy: sortBy,
              sortOrder: sortOrder);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListConformancePackComplianceScoresRequest',
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
