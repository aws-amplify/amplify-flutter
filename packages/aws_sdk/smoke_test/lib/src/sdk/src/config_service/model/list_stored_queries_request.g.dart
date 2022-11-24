// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_stored_queries_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStoredQueriesRequest extends ListStoredQueriesRequest {
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$ListStoredQueriesRequest(
          [void Function(ListStoredQueriesRequestBuilder)? updates]) =>
      (new ListStoredQueriesRequestBuilder()..update(updates))._build();

  _$ListStoredQueriesRequest._({this.maxResults, this.nextToken}) : super._();

  @override
  ListStoredQueriesRequest rebuild(
          void Function(ListStoredQueriesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListStoredQueriesRequestBuilder toBuilder() =>
      new ListStoredQueriesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListStoredQueriesRequest &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, maxResults.hashCode), nextToken.hashCode));
  }
}

class ListStoredQueriesRequestBuilder
    implements
        Builder<ListStoredQueriesRequest, ListStoredQueriesRequestBuilder> {
  _$ListStoredQueriesRequest? _$v;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListStoredQueriesRequestBuilder() {
    ListStoredQueriesRequest._init(this);
  }

  ListStoredQueriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListStoredQueriesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListStoredQueriesRequest;
  }

  @override
  void update(void Function(ListStoredQueriesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListStoredQueriesRequest build() => _build();

  _$ListStoredQueriesRequest _build() {
    final _$result = _$v ??
        new _$ListStoredQueriesRequest._(
            maxResults: maxResults, nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
