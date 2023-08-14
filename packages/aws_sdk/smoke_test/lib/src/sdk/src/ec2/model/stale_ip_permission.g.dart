// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stale_ip_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StaleIpPermission extends StaleIpPermission {
  @override
  final int fromPort;
  @override
  final String? ipProtocol;
  @override
  final _i2.BuiltList<String>? ipRanges;
  @override
  final _i2.BuiltList<String>? prefixListIds;
  @override
  final int toPort;
  @override
  final _i2.BuiltList<UserIdGroupPair>? userIdGroupPairs;

  factory _$StaleIpPermission(
          [void Function(StaleIpPermissionBuilder)? updates]) =>
      (new StaleIpPermissionBuilder()..update(updates))._build();

  _$StaleIpPermission._(
      {required this.fromPort,
      this.ipProtocol,
      this.ipRanges,
      this.prefixListIds,
      required this.toPort,
      this.userIdGroupPairs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'StaleIpPermission', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'StaleIpPermission', 'toPort');
  }

  @override
  StaleIpPermission rebuild(void Function(StaleIpPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaleIpPermissionBuilder toBuilder() =>
      new StaleIpPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaleIpPermission &&
        fromPort == other.fromPort &&
        ipProtocol == other.ipProtocol &&
        ipRanges == other.ipRanges &&
        prefixListIds == other.prefixListIds &&
        toPort == other.toPort &&
        userIdGroupPairs == other.userIdGroupPairs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, ipProtocol.hashCode);
    _$hash = $jc(_$hash, ipRanges.hashCode);
    _$hash = $jc(_$hash, prefixListIds.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, userIdGroupPairs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StaleIpPermissionBuilder
    implements Builder<StaleIpPermission, StaleIpPermissionBuilder> {
  _$StaleIpPermission? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  String? _ipProtocol;
  String? get ipProtocol => _$this._ipProtocol;
  set ipProtocol(String? ipProtocol) => _$this._ipProtocol = ipProtocol;

  _i2.ListBuilder<String>? _ipRanges;
  _i2.ListBuilder<String> get ipRanges =>
      _$this._ipRanges ??= new _i2.ListBuilder<String>();
  set ipRanges(_i2.ListBuilder<String>? ipRanges) =>
      _$this._ipRanges = ipRanges;

  _i2.ListBuilder<String>? _prefixListIds;
  _i2.ListBuilder<String> get prefixListIds =>
      _$this._prefixListIds ??= new _i2.ListBuilder<String>();
  set prefixListIds(_i2.ListBuilder<String>? prefixListIds) =>
      _$this._prefixListIds = prefixListIds;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  _i2.ListBuilder<UserIdGroupPair>? _userIdGroupPairs;
  _i2.ListBuilder<UserIdGroupPair> get userIdGroupPairs =>
      _$this._userIdGroupPairs ??= new _i2.ListBuilder<UserIdGroupPair>();
  set userIdGroupPairs(_i2.ListBuilder<UserIdGroupPair>? userIdGroupPairs) =>
      _$this._userIdGroupPairs = userIdGroupPairs;

  StaleIpPermissionBuilder() {
    StaleIpPermission._init(this);
  }

  StaleIpPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _ipProtocol = $v.ipProtocol;
      _ipRanges = $v.ipRanges?.toBuilder();
      _prefixListIds = $v.prefixListIds?.toBuilder();
      _toPort = $v.toPort;
      _userIdGroupPairs = $v.userIdGroupPairs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaleIpPermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StaleIpPermission;
  }

  @override
  void update(void Function(StaleIpPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StaleIpPermission build() => _build();

  _$StaleIpPermission _build() {
    _$StaleIpPermission _$result;
    try {
      _$result = _$v ??
          new _$StaleIpPermission._(
              fromPort: BuiltValueNullFieldError.checkNotNull(
                  fromPort, r'StaleIpPermission', 'fromPort'),
              ipProtocol: ipProtocol,
              ipRanges: _ipRanges?.build(),
              prefixListIds: _prefixListIds?.build(),
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'StaleIpPermission', 'toPort'),
              userIdGroupPairs: _userIdGroupPairs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipRanges';
        _ipRanges?.build();
        _$failedField = 'prefixListIds';
        _prefixListIds?.build();

        _$failedField = 'userIdGroupPairs';
        _userIdGroupPairs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StaleIpPermission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
