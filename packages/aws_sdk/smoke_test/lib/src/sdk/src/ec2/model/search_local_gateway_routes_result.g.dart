// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_local_gateway_routes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchLocalGatewayRoutesResult extends SearchLocalGatewayRoutesResult {
  @override
  final _i2.BuiltList<LocalGatewayRoute>? routes;
  @override
  final String? nextToken;

  factory _$SearchLocalGatewayRoutesResult(
          [void Function(SearchLocalGatewayRoutesResultBuilder)? updates]) =>
      (new SearchLocalGatewayRoutesResultBuilder()..update(updates))._build();

  _$SearchLocalGatewayRoutesResult._({this.routes, this.nextToken}) : super._();

  @override
  SearchLocalGatewayRoutesResult rebuild(
          void Function(SearchLocalGatewayRoutesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchLocalGatewayRoutesResultBuilder toBuilder() =>
      new SearchLocalGatewayRoutesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchLocalGatewayRoutesResult &&
        routes == other.routes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SearchLocalGatewayRoutesResultBuilder
    implements
        Builder<SearchLocalGatewayRoutesResult,
            SearchLocalGatewayRoutesResultBuilder> {
  _$SearchLocalGatewayRoutesResult? _$v;

  _i2.ListBuilder<LocalGatewayRoute>? _routes;
  _i2.ListBuilder<LocalGatewayRoute> get routes =>
      _$this._routes ??= new _i2.ListBuilder<LocalGatewayRoute>();
  set routes(_i2.ListBuilder<LocalGatewayRoute>? routes) =>
      _$this._routes = routes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  SearchLocalGatewayRoutesResultBuilder();

  SearchLocalGatewayRoutesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routes = $v.routes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchLocalGatewayRoutesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchLocalGatewayRoutesResult;
  }

  @override
  void update(void Function(SearchLocalGatewayRoutesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchLocalGatewayRoutesResult build() => _build();

  _$SearchLocalGatewayRoutesResult _build() {
    _$SearchLocalGatewayRoutesResult _$result;
    try {
      _$result = _$v ??
          new _$SearchLocalGatewayRoutesResult._(
              routes: _routes?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routes';
        _routes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchLocalGatewayRoutesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
