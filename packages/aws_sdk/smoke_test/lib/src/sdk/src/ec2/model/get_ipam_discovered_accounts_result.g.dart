// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_ipam_discovered_accounts_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetIpamDiscoveredAccountsResult
    extends GetIpamDiscoveredAccountsResult {
  @override
  final _i2.BuiltList<IpamDiscoveredAccount>? ipamDiscoveredAccounts;
  @override
  final String? nextToken;

  factory _$GetIpamDiscoveredAccountsResult(
          [void Function(GetIpamDiscoveredAccountsResultBuilder)? updates]) =>
      (new GetIpamDiscoveredAccountsResultBuilder()..update(updates))._build();

  _$GetIpamDiscoveredAccountsResult._(
      {this.ipamDiscoveredAccounts, this.nextToken})
      : super._();

  @override
  GetIpamDiscoveredAccountsResult rebuild(
          void Function(GetIpamDiscoveredAccountsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetIpamDiscoveredAccountsResultBuilder toBuilder() =>
      new GetIpamDiscoveredAccountsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetIpamDiscoveredAccountsResult &&
        ipamDiscoveredAccounts == other.ipamDiscoveredAccounts &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamDiscoveredAccounts.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetIpamDiscoveredAccountsResultBuilder
    implements
        Builder<GetIpamDiscoveredAccountsResult,
            GetIpamDiscoveredAccountsResultBuilder> {
  _$GetIpamDiscoveredAccountsResult? _$v;

  _i2.ListBuilder<IpamDiscoveredAccount>? _ipamDiscoveredAccounts;
  _i2.ListBuilder<IpamDiscoveredAccount> get ipamDiscoveredAccounts =>
      _$this._ipamDiscoveredAccounts ??=
          new _i2.ListBuilder<IpamDiscoveredAccount>();
  set ipamDiscoveredAccounts(
          _i2.ListBuilder<IpamDiscoveredAccount>? ipamDiscoveredAccounts) =>
      _$this._ipamDiscoveredAccounts = ipamDiscoveredAccounts;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetIpamDiscoveredAccountsResultBuilder();

  GetIpamDiscoveredAccountsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamDiscoveredAccounts = $v.ipamDiscoveredAccounts?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetIpamDiscoveredAccountsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetIpamDiscoveredAccountsResult;
  }

  @override
  void update(void Function(GetIpamDiscoveredAccountsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetIpamDiscoveredAccountsResult build() => _build();

  _$GetIpamDiscoveredAccountsResult _build() {
    _$GetIpamDiscoveredAccountsResult _$result;
    try {
      _$result = _$v ??
          new _$GetIpamDiscoveredAccountsResult._(
              ipamDiscoveredAccounts: _ipamDiscoveredAccounts?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamDiscoveredAccounts';
        _ipamDiscoveredAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetIpamDiscoveredAccountsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
