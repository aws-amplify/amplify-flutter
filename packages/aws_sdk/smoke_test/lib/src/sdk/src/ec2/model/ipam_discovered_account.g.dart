// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_discovered_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamDiscoveredAccount extends IpamDiscoveredAccount {
  @override
  final String? accountId;
  @override
  final String? discoveryRegion;
  @override
  final IpamDiscoveryFailureReason? failureReason;
  @override
  final DateTime? lastAttemptedDiscoveryTime;
  @override
  final DateTime? lastSuccessfulDiscoveryTime;

  factory _$IpamDiscoveredAccount(
          [void Function(IpamDiscoveredAccountBuilder)? updates]) =>
      (new IpamDiscoveredAccountBuilder()..update(updates))._build();

  _$IpamDiscoveredAccount._(
      {this.accountId,
      this.discoveryRegion,
      this.failureReason,
      this.lastAttemptedDiscoveryTime,
      this.lastSuccessfulDiscoveryTime})
      : super._();

  @override
  IpamDiscoveredAccount rebuild(
          void Function(IpamDiscoveredAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamDiscoveredAccountBuilder toBuilder() =>
      new IpamDiscoveredAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamDiscoveredAccount &&
        accountId == other.accountId &&
        discoveryRegion == other.discoveryRegion &&
        failureReason == other.failureReason &&
        lastAttemptedDiscoveryTime == other.lastAttemptedDiscoveryTime &&
        lastSuccessfulDiscoveryTime == other.lastSuccessfulDiscoveryTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, discoveryRegion.hashCode);
    _$hash = $jc(_$hash, failureReason.hashCode);
    _$hash = $jc(_$hash, lastAttemptedDiscoveryTime.hashCode);
    _$hash = $jc(_$hash, lastSuccessfulDiscoveryTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamDiscoveredAccountBuilder
    implements Builder<IpamDiscoveredAccount, IpamDiscoveredAccountBuilder> {
  _$IpamDiscoveredAccount? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _discoveryRegion;
  String? get discoveryRegion => _$this._discoveryRegion;
  set discoveryRegion(String? discoveryRegion) =>
      _$this._discoveryRegion = discoveryRegion;

  IpamDiscoveryFailureReasonBuilder? _failureReason;
  IpamDiscoveryFailureReasonBuilder get failureReason =>
      _$this._failureReason ??= new IpamDiscoveryFailureReasonBuilder();
  set failureReason(IpamDiscoveryFailureReasonBuilder? failureReason) =>
      _$this._failureReason = failureReason;

  DateTime? _lastAttemptedDiscoveryTime;
  DateTime? get lastAttemptedDiscoveryTime =>
      _$this._lastAttemptedDiscoveryTime;
  set lastAttemptedDiscoveryTime(DateTime? lastAttemptedDiscoveryTime) =>
      _$this._lastAttemptedDiscoveryTime = lastAttemptedDiscoveryTime;

  DateTime? _lastSuccessfulDiscoveryTime;
  DateTime? get lastSuccessfulDiscoveryTime =>
      _$this._lastSuccessfulDiscoveryTime;
  set lastSuccessfulDiscoveryTime(DateTime? lastSuccessfulDiscoveryTime) =>
      _$this._lastSuccessfulDiscoveryTime = lastSuccessfulDiscoveryTime;

  IpamDiscoveredAccountBuilder();

  IpamDiscoveredAccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _discoveryRegion = $v.discoveryRegion;
      _failureReason = $v.failureReason?.toBuilder();
      _lastAttemptedDiscoveryTime = $v.lastAttemptedDiscoveryTime;
      _lastSuccessfulDiscoveryTime = $v.lastSuccessfulDiscoveryTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamDiscoveredAccount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamDiscoveredAccount;
  }

  @override
  void update(void Function(IpamDiscoveredAccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamDiscoveredAccount build() => _build();

  _$IpamDiscoveredAccount _build() {
    _$IpamDiscoveredAccount _$result;
    try {
      _$result = _$v ??
          new _$IpamDiscoveredAccount._(
              accountId: accountId,
              discoveryRegion: discoveryRegion,
              failureReason: _failureReason?.build(),
              lastAttemptedDiscoveryTime: lastAttemptedDiscoveryTime,
              lastSuccessfulDiscoveryTime: lastSuccessfulDiscoveryTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failureReason';
        _failureReason?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamDiscoveredAccount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
