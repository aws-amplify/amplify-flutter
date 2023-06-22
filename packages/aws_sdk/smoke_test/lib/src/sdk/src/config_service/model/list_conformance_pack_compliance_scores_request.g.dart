// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_conformance_pack_compliance_scores_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListConformancePackComplianceScoresRequest
    extends ListConformancePackComplianceScoresRequest {
  @override
  final _i3.ConformancePackComplianceScoresFilters? filters;
  @override
  final _i4.SortOrder? sortOrder;
  @override
  final _i5.SortBy? sortBy;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$ListConformancePackComplianceScoresRequest(
          [void Function(ListConformancePackComplianceScoresRequestBuilder)?
              updates]) =>
      (new ListConformancePackComplianceScoresRequestBuilder()..update(updates))
          ._build();

  _$ListConformancePackComplianceScoresRequest._(
      {this.filters,
      this.sortOrder,
      this.sortBy,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'ListConformancePackComplianceScoresRequest', 'limit');
  }

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
        sortOrder == other.sortOrder &&
        sortBy == other.sortBy &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, sortBy.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
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

  _i4.SortOrder? _sortOrder;
  _i4.SortOrder? get sortOrder => _$this._sortOrder;
  set sortOrder(_i4.SortOrder? sortOrder) => _$this._sortOrder = sortOrder;

  _i5.SortBy? _sortBy;
  _i5.SortBy? get sortBy => _$this._sortBy;
  set sortBy(_i5.SortBy? sortBy) => _$this._sortBy = sortBy;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListConformancePackComplianceScoresRequestBuilder() {
    ListConformancePackComplianceScoresRequest._init(this);
  }

  ListConformancePackComplianceScoresRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _sortOrder = $v.sortOrder;
      _sortBy = $v.sortBy;
      _limit = $v.limit;
      _nextToken = $v.nextToken;
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
              sortOrder: sortOrder,
              sortBy: sortBy,
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'ListConformancePackComplianceScoresRequest', 'limit'),
              nextToken: nextToken);
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
