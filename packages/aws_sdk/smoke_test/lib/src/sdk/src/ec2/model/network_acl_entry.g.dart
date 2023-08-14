// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_acl_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkAclEntry extends NetworkAclEntry {
  @override
  final String? cidrBlock;
  @override
  final bool egress;
  @override
  final IcmpTypeCode? icmpTypeCode;
  @override
  final String? ipv6CidrBlock;
  @override
  final PortRange? portRange;
  @override
  final String? protocol;
  @override
  final RuleAction? ruleAction;
  @override
  final int ruleNumber;

  factory _$NetworkAclEntry([void Function(NetworkAclEntryBuilder)? updates]) =>
      (new NetworkAclEntryBuilder()..update(updates))._build();

  _$NetworkAclEntry._(
      {this.cidrBlock,
      required this.egress,
      this.icmpTypeCode,
      this.ipv6CidrBlock,
      this.portRange,
      this.protocol,
      this.ruleAction,
      required this.ruleNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(egress, r'NetworkAclEntry', 'egress');
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'NetworkAclEntry', 'ruleNumber');
  }

  @override
  NetworkAclEntry rebuild(void Function(NetworkAclEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkAclEntryBuilder toBuilder() =>
      new NetworkAclEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkAclEntry &&
        cidrBlock == other.cidrBlock &&
        egress == other.egress &&
        icmpTypeCode == other.icmpTypeCode &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        portRange == other.portRange &&
        protocol == other.protocol &&
        ruleAction == other.ruleAction &&
        ruleNumber == other.ruleNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, icmpTypeCode.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, portRange.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkAclEntryBuilder
    implements Builder<NetworkAclEntry, NetworkAclEntryBuilder> {
  _$NetworkAclEntry? _$v;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  bool? _egress;
  bool? get egress => _$this._egress;
  set egress(bool? egress) => _$this._egress = egress;

  IcmpTypeCodeBuilder? _icmpTypeCode;
  IcmpTypeCodeBuilder get icmpTypeCode =>
      _$this._icmpTypeCode ??= new IcmpTypeCodeBuilder();
  set icmpTypeCode(IcmpTypeCodeBuilder? icmpTypeCode) =>
      _$this._icmpTypeCode = icmpTypeCode;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  PortRangeBuilder? _portRange;
  PortRangeBuilder get portRange =>
      _$this._portRange ??= new PortRangeBuilder();
  set portRange(PortRangeBuilder? portRange) => _$this._portRange = portRange;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  RuleAction? _ruleAction;
  RuleAction? get ruleAction => _$this._ruleAction;
  set ruleAction(RuleAction? ruleAction) => _$this._ruleAction = ruleAction;

  int? _ruleNumber;
  int? get ruleNumber => _$this._ruleNumber;
  set ruleNumber(int? ruleNumber) => _$this._ruleNumber = ruleNumber;

  NetworkAclEntryBuilder() {
    NetworkAclEntry._init(this);
  }

  NetworkAclEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrBlock = $v.cidrBlock;
      _egress = $v.egress;
      _icmpTypeCode = $v.icmpTypeCode?.toBuilder();
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _portRange = $v.portRange?.toBuilder();
      _protocol = $v.protocol;
      _ruleAction = $v.ruleAction;
      _ruleNumber = $v.ruleNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkAclEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkAclEntry;
  }

  @override
  void update(void Function(NetworkAclEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkAclEntry build() => _build();

  _$NetworkAclEntry _build() {
    _$NetworkAclEntry _$result;
    try {
      _$result = _$v ??
          new _$NetworkAclEntry._(
              cidrBlock: cidrBlock,
              egress: BuiltValueNullFieldError.checkNotNull(
                  egress, r'NetworkAclEntry', 'egress'),
              icmpTypeCode: _icmpTypeCode?.build(),
              ipv6CidrBlock: ipv6CidrBlock,
              portRange: _portRange?.build(),
              protocol: protocol,
              ruleAction: ruleAction,
              ruleNumber: BuiltValueNullFieldError.checkNotNull(
                  ruleNumber, r'NetworkAclEntry', 'ruleNumber'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icmpTypeCode';
        _icmpTypeCode?.build();

        _$failedField = 'portRange';
        _portRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkAclEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
