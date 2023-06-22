// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_stored_queries_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListStoredQueriesRequest extends ListStoredQueriesRequest {
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$ListStoredQueriesRequest(
          [void Function(ListStoredQueriesRequestBuilder)? updates]) =>
      (new ListStoredQueriesRequestBuilder()..update(updates))._build();

  _$ListStoredQueriesRequest._({this.nextToken, required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'ListStoredQueriesRequest', 'maxResults');
  }

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
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListStoredQueriesRequestBuilder
    implements
        Builder<ListStoredQueriesRequest, ListStoredQueriesRequestBuilder> {
  _$ListStoredQueriesRequest? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  ListStoredQueriesRequestBuilder() {
    ListStoredQueriesRequest._init(this);
  }

  ListStoredQueriesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
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
            nextToken: nextToken,
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'ListStoredQueriesRequest', 'maxResults'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
