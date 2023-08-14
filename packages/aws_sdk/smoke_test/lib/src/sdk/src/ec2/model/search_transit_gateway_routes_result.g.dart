// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_transit_gateway_routes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchTransitGatewayRoutesResult
    extends SearchTransitGatewayRoutesResult {
  @override
  final _i2.BuiltList<TransitGatewayRoute>? routes;
  @override
  final bool additionalRoutesAvailable;

  factory _$SearchTransitGatewayRoutesResult(
          [void Function(SearchTransitGatewayRoutesResultBuilder)? updates]) =>
      (new SearchTransitGatewayRoutesResultBuilder()..update(updates))._build();

  _$SearchTransitGatewayRoutesResult._(
      {this.routes, required this.additionalRoutesAvailable})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(additionalRoutesAvailable,
        r'SearchTransitGatewayRoutesResult', 'additionalRoutesAvailable');
  }

  @override
  SearchTransitGatewayRoutesResult rebuild(
          void Function(SearchTransitGatewayRoutesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTransitGatewayRoutesResultBuilder toBuilder() =>
      new SearchTransitGatewayRoutesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchTransitGatewayRoutesResult &&
        routes == other.routes &&
        additionalRoutesAvailable == other.additionalRoutesAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routes.hashCode);
    _$hash = $jc(_$hash, additionalRoutesAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SearchTransitGatewayRoutesResultBuilder
    implements
        Builder<SearchTransitGatewayRoutesResult,
            SearchTransitGatewayRoutesResultBuilder> {
  _$SearchTransitGatewayRoutesResult? _$v;

  _i2.ListBuilder<TransitGatewayRoute>? _routes;
  _i2.ListBuilder<TransitGatewayRoute> get routes =>
      _$this._routes ??= new _i2.ListBuilder<TransitGatewayRoute>();
  set routes(_i2.ListBuilder<TransitGatewayRoute>? routes) =>
      _$this._routes = routes;

  bool? _additionalRoutesAvailable;
  bool? get additionalRoutesAvailable => _$this._additionalRoutesAvailable;
  set additionalRoutesAvailable(bool? additionalRoutesAvailable) =>
      _$this._additionalRoutesAvailable = additionalRoutesAvailable;

  SearchTransitGatewayRoutesResultBuilder() {
    SearchTransitGatewayRoutesResult._init(this);
  }

  SearchTransitGatewayRoutesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routes = $v.routes?.toBuilder();
      _additionalRoutesAvailable = $v.additionalRoutesAvailable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTransitGatewayRoutesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchTransitGatewayRoutesResult;
  }

  @override
  void update(void Function(SearchTransitGatewayRoutesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchTransitGatewayRoutesResult build() => _build();

  _$SearchTransitGatewayRoutesResult _build() {
    _$SearchTransitGatewayRoutesResult _$result;
    try {
      _$result = _$v ??
          new _$SearchTransitGatewayRoutesResult._(
              routes: _routes?.build(),
              additionalRoutesAvailable: BuiltValueNullFieldError.checkNotNull(
                  additionalRoutesAvailable,
                  r'SearchTransitGatewayRoutesResult',
                  'additionalRoutesAvailable'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routes';
        _routes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SearchTransitGatewayRoutesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
