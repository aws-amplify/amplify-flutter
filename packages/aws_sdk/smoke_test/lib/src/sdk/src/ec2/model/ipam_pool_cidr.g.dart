// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipam_pool_cidr.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IpamPoolCidr extends IpamPoolCidr {
  @override
  final String? cidr;
  @override
  final IpamPoolCidrState? state;
  @override
  final IpamPoolCidrFailureReason? failureReason;
  @override
  final String? ipamPoolCidrId;
  @override
  final int netmaskLength;

  factory _$IpamPoolCidr([void Function(IpamPoolCidrBuilder)? updates]) =>
      (new IpamPoolCidrBuilder()..update(updates))._build();

  _$IpamPoolCidr._(
      {this.cidr,
      this.state,
      this.failureReason,
      this.ipamPoolCidrId,
      required this.netmaskLength})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        netmaskLength, r'IpamPoolCidr', 'netmaskLength');
  }

  @override
  IpamPoolCidr rebuild(void Function(IpamPoolCidrBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamPoolCidrBuilder toBuilder() => new IpamPoolCidrBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IpamPoolCidr &&
        cidr == other.cidr &&
        state == other.state &&
        failureReason == other.failureReason &&
        ipamPoolCidrId == other.ipamPoolCidrId &&
        netmaskLength == other.netmaskLength;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidr.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, failureReason.hashCode);
    _$hash = $jc(_$hash, ipamPoolCidrId.hashCode);
    _$hash = $jc(_$hash, netmaskLength.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamPoolCidrBuilder
    implements Builder<IpamPoolCidr, IpamPoolCidrBuilder> {
  _$IpamPoolCidr? _$v;

  String? _cidr;
  String? get cidr => _$this._cidr;
  set cidr(String? cidr) => _$this._cidr = cidr;

  IpamPoolCidrState? _state;
  IpamPoolCidrState? get state => _$this._state;
  set state(IpamPoolCidrState? state) => _$this._state = state;

  IpamPoolCidrFailureReasonBuilder? _failureReason;
  IpamPoolCidrFailureReasonBuilder get failureReason =>
      _$this._failureReason ??= new IpamPoolCidrFailureReasonBuilder();
  set failureReason(IpamPoolCidrFailureReasonBuilder? failureReason) =>
      _$this._failureReason = failureReason;

  String? _ipamPoolCidrId;
  String? get ipamPoolCidrId => _$this._ipamPoolCidrId;
  set ipamPoolCidrId(String? ipamPoolCidrId) =>
      _$this._ipamPoolCidrId = ipamPoolCidrId;

  int? _netmaskLength;
  int? get netmaskLength => _$this._netmaskLength;
  set netmaskLength(int? netmaskLength) =>
      _$this._netmaskLength = netmaskLength;

  IpamPoolCidrBuilder() {
    IpamPoolCidr._init(this);
  }

  IpamPoolCidrBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidr = $v.cidr;
      _state = $v.state;
      _failureReason = $v.failureReason?.toBuilder();
      _ipamPoolCidrId = $v.ipamPoolCidrId;
      _netmaskLength = $v.netmaskLength;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IpamPoolCidr other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IpamPoolCidr;
  }

  @override
  void update(void Function(IpamPoolCidrBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IpamPoolCidr build() => _build();

  _$IpamPoolCidr _build() {
    _$IpamPoolCidr _$result;
    try {
      _$result = _$v ??
          new _$IpamPoolCidr._(
              cidr: cidr,
              state: state,
              failureReason: _failureReason?.build(),
              ipamPoolCidrId: ipamPoolCidrId,
              netmaskLength: BuiltValueNullFieldError.checkNotNull(
                  netmaskLength, r'IpamPoolCidr', 'netmaskLength'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failureReason';
        _failureReason?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IpamPoolCidr', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
