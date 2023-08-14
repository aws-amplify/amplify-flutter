// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_security_group_rules_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySecurityGroupRulesRequest
    extends ModifySecurityGroupRulesRequest {
  @override
  final String? groupId;
  @override
  final _i3.BuiltList<SecurityGroupRuleUpdate>? securityGroupRules;
  @override
  final bool dryRun;

  factory _$ModifySecurityGroupRulesRequest(
          [void Function(ModifySecurityGroupRulesRequestBuilder)? updates]) =>
      (new ModifySecurityGroupRulesRequestBuilder()..update(updates))._build();

  _$ModifySecurityGroupRulesRequest._(
      {this.groupId, this.securityGroupRules, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifySecurityGroupRulesRequest', 'dryRun');
  }

  @override
  ModifySecurityGroupRulesRequest rebuild(
          void Function(ModifySecurityGroupRulesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySecurityGroupRulesRequestBuilder toBuilder() =>
      new ModifySecurityGroupRulesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySecurityGroupRulesRequest &&
        groupId == other.groupId &&
        securityGroupRules == other.securityGroupRules &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, securityGroupRules.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySecurityGroupRulesRequestBuilder
    implements
        Builder<ModifySecurityGroupRulesRequest,
            ModifySecurityGroupRulesRequestBuilder> {
  _$ModifySecurityGroupRulesRequest? _$v;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  _i3.ListBuilder<SecurityGroupRuleUpdate>? _securityGroupRules;
  _i3.ListBuilder<SecurityGroupRuleUpdate> get securityGroupRules =>
      _$this._securityGroupRules ??=
          new _i3.ListBuilder<SecurityGroupRuleUpdate>();
  set securityGroupRules(
          _i3.ListBuilder<SecurityGroupRuleUpdate>? securityGroupRules) =>
      _$this._securityGroupRules = securityGroupRules;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifySecurityGroupRulesRequestBuilder() {
    ModifySecurityGroupRulesRequest._init(this);
  }

  ModifySecurityGroupRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupId = $v.groupId;
      _securityGroupRules = $v.securityGroupRules?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySecurityGroupRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySecurityGroupRulesRequest;
  }

  @override
  void update(void Function(ModifySecurityGroupRulesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySecurityGroupRulesRequest build() => _build();

  _$ModifySecurityGroupRulesRequest _build() {
    _$ModifySecurityGroupRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifySecurityGroupRulesRequest._(
              groupId: groupId,
              securityGroupRules: _securityGroupRules?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifySecurityGroupRulesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroupRules';
        _securityGroupRules?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifySecurityGroupRulesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
