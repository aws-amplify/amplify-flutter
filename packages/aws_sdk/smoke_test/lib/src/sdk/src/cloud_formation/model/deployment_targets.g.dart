// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.deployment_targets;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeploymentTargets extends DeploymentTargets {
  @override
  final _i3.BuiltList<String>? accounts;
  @override
  final String? accountsUrl;
  @override
  final _i3.BuiltList<String>? organizationalUnitIds;
  @override
  final _i2.AccountFilterType? accountFilterType;

  factory _$DeploymentTargets(
          [void Function(DeploymentTargetsBuilder)? updates]) =>
      (new DeploymentTargetsBuilder()..update(updates))._build();

  _$DeploymentTargets._(
      {this.accounts,
      this.accountsUrl,
      this.organizationalUnitIds,
      this.accountFilterType})
      : super._();

  @override
  DeploymentTargets rebuild(void Function(DeploymentTargetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentTargetsBuilder toBuilder() =>
      new DeploymentTargetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeploymentTargets &&
        accounts == other.accounts &&
        accountsUrl == other.accountsUrl &&
        organizationalUnitIds == other.organizationalUnitIds &&
        accountFilterType == other.accountFilterType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accounts.hashCode);
    _$hash = $jc(_$hash, accountsUrl.hashCode);
    _$hash = $jc(_$hash, organizationalUnitIds.hashCode);
    _$hash = $jc(_$hash, accountFilterType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeploymentTargetsBuilder
    implements Builder<DeploymentTargets, DeploymentTargetsBuilder> {
  _$DeploymentTargets? _$v;

  _i3.ListBuilder<String>? _accounts;
  _i3.ListBuilder<String> get accounts =>
      _$this._accounts ??= new _i3.ListBuilder<String>();
  set accounts(_i3.ListBuilder<String>? accounts) =>
      _$this._accounts = accounts;

  String? _accountsUrl;
  String? get accountsUrl => _$this._accountsUrl;
  set accountsUrl(String? accountsUrl) => _$this._accountsUrl = accountsUrl;

  _i3.ListBuilder<String>? _organizationalUnitIds;
  _i3.ListBuilder<String> get organizationalUnitIds =>
      _$this._organizationalUnitIds ??= new _i3.ListBuilder<String>();
  set organizationalUnitIds(_i3.ListBuilder<String>? organizationalUnitIds) =>
      _$this._organizationalUnitIds = organizationalUnitIds;

  _i2.AccountFilterType? _accountFilterType;
  _i2.AccountFilterType? get accountFilterType => _$this._accountFilterType;
  set accountFilterType(_i2.AccountFilterType? accountFilterType) =>
      _$this._accountFilterType = accountFilterType;

  DeploymentTargetsBuilder() {
    DeploymentTargets._init(this);
  }

  DeploymentTargetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accounts = $v.accounts?.toBuilder();
      _accountsUrl = $v.accountsUrl;
      _organizationalUnitIds = $v.organizationalUnitIds?.toBuilder();
      _accountFilterType = $v.accountFilterType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeploymentTargets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeploymentTargets;
  }

  @override
  void update(void Function(DeploymentTargetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeploymentTargets build() => _build();

  _$DeploymentTargets _build() {
    _$DeploymentTargets _$result;
    try {
      _$result = _$v ??
          new _$DeploymentTargets._(
              accounts: _accounts?.build(),
              accountsUrl: accountsUrl,
              organizationalUnitIds: _organizationalUnitIds?.build(),
              accountFilterType: accountFilterType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accounts';
        _accounts?.build();

        _$failedField = 'organizationalUnitIds';
        _organizationalUnitIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeploymentTargets', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
