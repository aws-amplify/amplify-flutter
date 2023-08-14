// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_ipam_scopes_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamScopesResult extends DescribeIpamScopesResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<IpamScope>? ipamScopes;

  factory _$DescribeIpamScopesResult(
          [void Function(DescribeIpamScopesResultBuilder)? updates]) =>
      (new DescribeIpamScopesResultBuilder()..update(updates))._build();

  _$DescribeIpamScopesResult._({this.nextToken, this.ipamScopes}) : super._();

  @override
  DescribeIpamScopesResult rebuild(
          void Function(DescribeIpamScopesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamScopesResultBuilder toBuilder() =>
      new DescribeIpamScopesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamScopesResult &&
        nextToken == other.nextToken &&
        ipamScopes == other.ipamScopes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamScopes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamScopesResultBuilder
    implements
        Builder<DescribeIpamScopesResult, DescribeIpamScopesResultBuilder> {
  _$DescribeIpamScopesResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<IpamScope>? _ipamScopes;
  _i2.ListBuilder<IpamScope> get ipamScopes =>
      _$this._ipamScopes ??= new _i2.ListBuilder<IpamScope>();
  set ipamScopes(_i2.ListBuilder<IpamScope>? ipamScopes) =>
      _$this._ipamScopes = ipamScopes;

  DescribeIpamScopesResultBuilder();

  DescribeIpamScopesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _ipamScopes = $v.ipamScopes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamScopesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamScopesResult;
  }

  @override
  void update(void Function(DescribeIpamScopesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamScopesResult build() => _build();

  _$DescribeIpamScopesResult _build() {
    _$DescribeIpamScopesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamScopesResult._(
              nextToken: nextToken, ipamScopes: _ipamScopes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamScopes';
        _ipamScopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamScopesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
