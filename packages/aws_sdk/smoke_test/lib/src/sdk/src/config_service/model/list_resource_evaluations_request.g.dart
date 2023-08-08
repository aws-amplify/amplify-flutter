// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_resource_evaluations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListResourceEvaluationsRequest extends ListResourceEvaluationsRequest {
  @override
  final _i3.ResourceEvaluationFilters? filters;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$ListResourceEvaluationsRequest(
          [void Function(ListResourceEvaluationsRequestBuilder)? updates]) =>
      (new ListResourceEvaluationsRequestBuilder()..update(updates))._build();

  _$ListResourceEvaluationsRequest._(
      {this.filters, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'ListResourceEvaluationsRequest', 'limit');
  }

  @override
  ListResourceEvaluationsRequest rebuild(
          void Function(ListResourceEvaluationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListResourceEvaluationsRequestBuilder toBuilder() =>
      new ListResourceEvaluationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListResourceEvaluationsRequest &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListResourceEvaluationsRequestBuilder
    implements
        Builder<ListResourceEvaluationsRequest,
            ListResourceEvaluationsRequestBuilder> {
  _$ListResourceEvaluationsRequest? _$v;

  _i3.ResourceEvaluationFiltersBuilder? _filters;
  _i3.ResourceEvaluationFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ResourceEvaluationFiltersBuilder();
  set filters(_i3.ResourceEvaluationFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListResourceEvaluationsRequestBuilder() {
    ListResourceEvaluationsRequest._init(this);
  }

  ListResourceEvaluationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListResourceEvaluationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListResourceEvaluationsRequest;
  }

  @override
  void update(void Function(ListResourceEvaluationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListResourceEvaluationsRequest build() => _build();

  _$ListResourceEvaluationsRequest _build() {
    _$ListResourceEvaluationsRequest _$result;
    try {
      _$result = _$v ??
          new _$ListResourceEvaluationsRequest._(
              filters: _filters?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'ListResourceEvaluationsRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListResourceEvaluationsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
