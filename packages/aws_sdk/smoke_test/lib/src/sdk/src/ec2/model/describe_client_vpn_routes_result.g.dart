// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_client_vpn_routes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnRoutesResult extends DescribeClientVpnRoutesResult {
  @override
  final _i2.BuiltList<ClientVpnRoute>? routes;
  @override
  final String? nextToken;

  factory _$DescribeClientVpnRoutesResult(
          [void Function(DescribeClientVpnRoutesResultBuilder)? updates]) =>
      (new DescribeClientVpnRoutesResultBuilder()..update(updates))._build();

  _$DescribeClientVpnRoutesResult._({this.routes, this.nextToken}) : super._();

  @override
  DescribeClientVpnRoutesResult rebuild(
          void Function(DescribeClientVpnRoutesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnRoutesResultBuilder toBuilder() =>
      new DescribeClientVpnRoutesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnRoutesResult &&
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

class DescribeClientVpnRoutesResultBuilder
    implements
        Builder<DescribeClientVpnRoutesResult,
            DescribeClientVpnRoutesResultBuilder> {
  _$DescribeClientVpnRoutesResult? _$v;

  _i2.ListBuilder<ClientVpnRoute>? _routes;
  _i2.ListBuilder<ClientVpnRoute> get routes =>
      _$this._routes ??= new _i2.ListBuilder<ClientVpnRoute>();
  set routes(_i2.ListBuilder<ClientVpnRoute>? routes) =>
      _$this._routes = routes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClientVpnRoutesResultBuilder();

  DescribeClientVpnRoutesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routes = $v.routes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnRoutesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnRoutesResult;
  }

  @override
  void update(void Function(DescribeClientVpnRoutesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnRoutesResult build() => _build();

  _$DescribeClientVpnRoutesResult _build() {
    _$DescribeClientVpnRoutesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnRoutesResult._(
              routes: _routes?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routes';
        _routes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnRoutesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
