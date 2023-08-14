// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_group_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroupRule extends SecurityGroupRule {
  @override
  final String? securityGroupRuleId;
  @override
  final String? groupId;
  @override
  final String? groupOwnerId;
  @override
  final bool isEgress;
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
  final ReferencedSecurityGroup? referencedGroupInfo;
  @override
  final String? description;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$SecurityGroupRule(
          [void Function(SecurityGroupRuleBuilder)? updates]) =>
      (new SecurityGroupRuleBuilder()..update(updates))._build();

  _$SecurityGroupRule._(
      {this.securityGroupRuleId,
      this.groupId,
      this.groupOwnerId,
      required this.isEgress,
      this.ipProtocol,
      required this.fromPort,
      required this.toPort,
      this.cidrIpv4,
      this.cidrIpv6,
      this.prefixListId,
      this.referencedGroupInfo,
      this.description,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isEgress, r'SecurityGroupRule', 'isEgress');
    BuiltValueNullFieldError.checkNotNull(
        fromPort, r'SecurityGroupRule', 'fromPort');
    BuiltValueNullFieldError.checkNotNull(
        toPort, r'SecurityGroupRule', 'toPort');
  }

  @override
  SecurityGroupRule rebuild(void Function(SecurityGroupRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupRuleBuilder toBuilder() =>
      new SecurityGroupRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroupRule &&
        securityGroupRuleId == other.securityGroupRuleId &&
        groupId == other.groupId &&
        groupOwnerId == other.groupOwnerId &&
        isEgress == other.isEgress &&
        ipProtocol == other.ipProtocol &&
        fromPort == other.fromPort &&
        toPort == other.toPort &&
        cidrIpv4 == other.cidrIpv4 &&
        cidrIpv6 == other.cidrIpv6 &&
        prefixListId == other.prefixListId &&
        referencedGroupInfo == other.referencedGroupInfo &&
        description == other.description &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroupRuleId.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupOwnerId.hashCode);
    _$hash = $jc(_$hash, isEgress.hashCode);
    _$hash = $jc(_$hash, ipProtocol.hashCode);
    _$hash = $jc(_$hash, fromPort.hashCode);
    _$hash = $jc(_$hash, toPort.hashCode);
    _$hash = $jc(_$hash, cidrIpv4.hashCode);
    _$hash = $jc(_$hash, cidrIpv6.hashCode);
    _$hash = $jc(_$hash, prefixListId.hashCode);
    _$hash = $jc(_$hash, referencedGroupInfo.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupRuleBuilder
    implements Builder<SecurityGroupRule, SecurityGroupRuleBuilder> {
  _$SecurityGroupRule? _$v;

  String? _securityGroupRuleId;
  String? get securityGroupRuleId => _$this._securityGroupRuleId;
  set securityGroupRuleId(String? securityGroupRuleId) =>
      _$this._securityGroupRuleId = securityGroupRuleId;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _groupOwnerId;
  String? get groupOwnerId => _$this._groupOwnerId;
  set groupOwnerId(String? groupOwnerId) => _$this._groupOwnerId = groupOwnerId;

  bool? _isEgress;
  bool? get isEgress => _$this._isEgress;
  set isEgress(bool? isEgress) => _$this._isEgress = isEgress;

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

  ReferencedSecurityGroupBuilder? _referencedGroupInfo;
  ReferencedSecurityGroupBuilder get referencedGroupInfo =>
      _$this._referencedGroupInfo ??= new ReferencedSecurityGroupBuilder();
  set referencedGroupInfo(
          ReferencedSecurityGroupBuilder? referencedGroupInfo) =>
      _$this._referencedGroupInfo = referencedGroupInfo;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  SecurityGroupRuleBuilder() {
    SecurityGroupRule._init(this);
  }

  SecurityGroupRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroupRuleId = $v.securityGroupRuleId;
      _groupId = $v.groupId;
      _groupOwnerId = $v.groupOwnerId;
      _isEgress = $v.isEgress;
      _ipProtocol = $v.ipProtocol;
      _fromPort = $v.fromPort;
      _toPort = $v.toPort;
      _cidrIpv4 = $v.cidrIpv4;
      _cidrIpv6 = $v.cidrIpv6;
      _prefixListId = $v.prefixListId;
      _referencedGroupInfo = $v.referencedGroupInfo?.toBuilder();
      _description = $v.description;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroupRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroupRule;
  }

  @override
  void update(void Function(SecurityGroupRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroupRule build() => _build();

  _$SecurityGroupRule _build() {
    _$SecurityGroupRule _$result;
    try {
      _$result = _$v ??
          new _$SecurityGroupRule._(
              securityGroupRuleId: securityGroupRuleId,
              groupId: groupId,
              groupOwnerId: groupOwnerId,
              isEgress: BuiltValueNullFieldError.checkNotNull(
                  isEgress, r'SecurityGroupRule', 'isEgress'),
              ipProtocol: ipProtocol,
              fromPort: BuiltValueNullFieldError.checkNotNull(
                  fromPort, r'SecurityGroupRule', 'fromPort'),
              toPort: BuiltValueNullFieldError.checkNotNull(
                  toPort, r'SecurityGroupRule', 'toPort'),
              cidrIpv4: cidrIpv4,
              cidrIpv6: cidrIpv6,
              prefixListId: prefixListId,
              referencedGroupInfo: _referencedGroupInfo?.build(),
              description: description,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'referencedGroupInfo';
        _referencedGroupInfo?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SecurityGroupRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
