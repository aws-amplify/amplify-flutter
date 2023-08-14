// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_group_rule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroupRuleRequest extends SecurityGroupRuleRequest {
  @override
  final String? ipProtocol;
  @override
  final int fromPort;
  @override
  final int toPort;
  @override
  final String? cidrIpv4;
  @override
  final String? cidrIpv6;
  @override
  final String? prefixListId;
  @override
  final String? referencedGroupId;
  @override
  final String? description;

  factory _$SecurityGroupRuleRequest(
          [void Function(SecurityGroupRuleRequestBuilder)? updates]) =>
      (new SecurityGroupRuleRequestBuilder()..update(updates))._build();

  _$SecurityGroupRuleRequest._(
      {this.ipProtocol,
      required this.fromPort,
      required this.toPort,
      this.cidrIpv4,
      this.cidrIpv6,
      this.prefixListId,
      this.referencedGroupId,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'SecurityGroupRuleRequest', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'SecurityGroupRuleRequest', 'toPort');
  }

  @override
  SecurityGroupRuleRequest rebuild(
          void Function(SecurityGroupRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupRuleRequestBuilder toBuilder() =>
      new SecurityGroupRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroupRuleRequest &&
        ipProtocol == other.ipProtocol &&
        fromPort == other.fromPort &&
        toPort == other.toPort &&
        cidrIpv4 == other.cidrIpv4 &&
        cidrIpv6 == other.cidrIpv6 &&
        prefixListId == other.prefixListId &&
        referencedGroupId == other.referencedGroupId &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipProtocol.hashCode);
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, cidrIpv4.hashCode);
    _$hash = $jc(_$hash, cidrIpv6.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, referencedGroupId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupRuleRequestBuilder
    implements
        Builder<SecurityGroupRuleRequest, SecurityGroupRuleRequestBuilder> {
  _$SecurityGroupRuleRequest? _$v;

  String? _ipProtocol;
  String? get ipProtocol => _$this._ipProtocol;
  set ipProtocol(String? ipProtocol) => _$this._ipProtocol = ipProtocol;

  int? _fromPort;
  int? get fromPort => _$this._fromPort;
  set fromPort(int? fromPort) => _$this._fromPort = fromPort;

  int? _toPort;
  int? get toPort => _$this._toPort;
  set toPort(int? toPort) => _$this._toPort = toPort;

  String? _cidrIpv4;
  String? get cidrIpv4 => _$this._cidrIpv4;
  set cidrIpv4(String? cidrIpv4) => _$this._cidrIpv4 = cidrIpv4;

  String? _cidrIpv6;
  String? get cidrIpv6 => _$this._cidrIpv6;
  set cidrIpv6(String? cidrIpv6) => _$this._cidrIpv6 = cidrIpv6;

  String? _prefixListId;
  String? get prefixListId => _$this._prefixListId;
  set prefixListId(String? prefixListId) => _$this._prefixListId = prefixListId;

  String? _referencedGroupId;
  String? get referencedGroupId => _$this._referencedGroupId;
  set referencedGroupId(String? referencedGroupId) =>
      _$this._referencedGroupId = referencedGroupId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  SecurityGroupRuleRequestBuilder() {
    SecurityGroupRuleRequest._init(this);
  }

  SecurityGroupRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipProtocol = $v.ipProtocol;
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _cidrIpv4 = $v.cidrIpv4;
      _cidrIpv6 = $v.cidrIpv6;
      _prefixListId = $v.prefixListId;
      _referencedGroupId = $v.referencedGroupId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroupRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroupRuleRequest;
  }

  @override
  void update(void Function(SecurityGroupRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroupRuleRequest build() => _build();

  _$SecurityGroupRuleRequest _build() {
    final _$result = _$v ??
        new _$SecurityGroupRuleRequest._(
            ipProtocol: ipProtocol,
            fromPort: BuiltValueNullFieldError.checkNotNull(
                fromPort, r'SecurityGroupRuleRequest', 'fromPort'),
            toPort: BuiltValueNullFieldError.checkNotNull(
                toPort, r'SecurityGroupRuleRequest', 'toPort'),
            cidrIpv4: cidrIpv4,
            cidrIpv6: cidrIpv6,
            prefixListId: prefixListId,
            referencedGroupId: referencedGroupId,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
