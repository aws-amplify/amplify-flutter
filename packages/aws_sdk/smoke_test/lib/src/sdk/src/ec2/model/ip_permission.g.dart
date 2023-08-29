// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_permission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpPermission extends IpPermission {
  @override
  final int fromPort;
  @override
  final String? ipProtocol;
  @override
  final _i2.BuiltList<IpRange>? ipRanges;
  @override
  final _i2.BuiltList<Ipv6Range>? ipv6Ranges;
  @override
  final _i2.BuiltList<PrefixListId>? prefixListIds;
  @override
  final int toPort;
  @override
  final _i2.BuiltList<UserIdGroupPair>? userIdGroupPairs;

  factory _$IpPermission([void Function(IpPermissionBuilder)? updates]) =>
      (new IpPermissionBuilder()..update(updates))._build();

  _$IpPermission._(
      {required this.fromPort,
      this.ipProtocol,
      this.ipRanges,
      this.ipv6Ranges,
      this.prefixListIds,
      required this.toPort,
      this.userIdGroupPairs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'IpPermission', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(toPort, r'IpPermission', 'toPort');
  }

  @override
  IpPermission rebuild(void Function(IpPermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpPermissionBuilder toBuilder() => new IpPermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpPermission &&
        fromPort == other.fromPort &&
        ipProtocol == other.ipProtocol &&
        ipRanges == other.ipRanges &&
        ipv6Ranges == other.ipv6Ranges &&
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
    _$hash = $jc(_$hash, ipv6Ranges.hashCode);
    _$hash = $jc(_$hash, prefixListIds.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, userIdGroupPairs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpPermissionBuilder
    implements Builder<IpPermission, IpPermissionBuilder> {
  _$IpPermission? _$v;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  String? _ipProtocol;
  String? get ipProtocol => _$this._ipProtocol;
  set ipProtocol(String? ipProtocol) => _$this._ipProtocol = ipProtocol;

  _i2.ListBuilder<IpRange>? _ipRanges;
  _i2.ListBuilder<IpRange> get ipRanges =>
      _$this._ipRanges ??= new _i2.ListBuilder<IpRange>();
  set ipRanges(_i2.ListBuilder<IpRange>? ipRanges) =>
      _$this._ipRanges = ipRanges;

  _i2.ListBuilder<Ipv6Range>? _ipv6Ranges;
  _i2.ListBuilder<Ipv6Range> get ipv6Ranges =>
      _$this._ipv6Ranges ??= new _i2.ListBuilder<Ipv6Range>();
  set ipv6Ranges(_i2.ListBuilder<Ipv6Range>? ipv6Ranges) =>
      _$this._ipv6Ranges = ipv6Ranges;

  _i2.ListBuilder<PrefixListId>? _prefixListIds;
  _i2.ListBuilder<PrefixListId> get prefixListIds =>
      _$this._prefixListIds ??= new _i2.ListBuilder<PrefixListId>();
  set prefixListIds(_i2.ListBuilder<PrefixListId>? prefixListIds) =>
      _$this._prefixListIds = prefixListIds;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  _i2.ListBuilder<UserIdGroupPair>? _userIdGroupPairs;
  _i2.ListBuilder<UserIdGroupPair> get userIdGroupPairs =>
      _$this._userIdGroupPairs ??= new _i2.ListBuilder<UserIdGroupPair>();
  set userIdGroupPairs(_i2.ListBuilder<UserIdGroupPair>? userIdGroupPairs) =>
      _$this._userIdGroupPairs = userIdGroupPairs;

  IpPermissionBuilder() {
    IpPermission._init(this);
  }

  IpPermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromPort = $v.fromPort;
      _ipProtocol = $v.ipProtocol;
      _ipRanges = $v.ipRanges?.toBuilder();
      _ipv6Ranges = $v.ipv6Ranges?.toBuilder();
      _prefixListIds = $v.prefixListIds?.toBuilder();
      _toPort = $v.toPort;
      _userIdGroupPairs = $v.userIdGroupPairs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpPermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpPermission;
  }

  @override
  void update(void Function(IpPermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpPermission build() => _build();

  _$IpPermission _build() {
    _$IpPermission _$result;
    try {
      _$result = _$v ??
          new _$IpPermission._(
              fromPort: BuiltValueNullFieldError.checkNotNull(
                  fromPort, r'IpPermission', 'fromPort'),
              ipProtocol: ipProtocol,
              ipRanges: _ipRanges?.build(),
              ipv6Ranges: _ipv6Ranges?.build(),
              prefixListIds: _prefixListIds?.build(),
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'IpPermission', 'toPort'),
              userIdGroupPairs: _userIdGroupPairs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipRanges';
        _ipRanges?.build();
        _$failedField = 'ipv6Ranges';
        _ipv6Ranges?.build();
        _$failedField = 'prefixListIds';
        _prefixListIds?.build();

        _$failedField = 'userIdGroupPairs';
        _userIdGroupPairs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpPermission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
