// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.member_account_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MemberAccountStatus extends MemberAccountStatus {
  @override
  final String accountId;
  @override
  final String configRuleName;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final DateTime? lastUpdateTime;
  @override
  final _i2.MemberAccountRuleStatus memberAccountRuleStatus;

  factory _$MemberAccountStatus(
          [void Function(MemberAccountStatusBuilder)? updates]) =>
      (new MemberAccountStatusBuilder()..update(updates))._build();

  _$MemberAccountStatus._(
      {required this.accountId,
      required this.configRuleName,
      this.errorCode,
      this.errorMessage,
      this.lastUpdateTime,
      required this.memberAccountRuleStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'MemberAccountStatus', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        configRuleName, r'MemberAccountStatus', 'configRuleName');
    BuiltValueNullFieldError.checkNotNull(memberAccountRuleStatus,
        r'MemberAccountStatus', 'memberAccountRuleStatus');
  }

  @override
  MemberAccountStatus rebuild(
          void Function(MemberAccountStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberAccountStatusBuilder toBuilder() =>
      new MemberAccountStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MemberAccountStatus &&
        accountId == other.accountId &&
        configRuleName == other.configRuleName &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        lastUpdateTime == other.lastUpdateTime &&
        memberAccountRuleStatus == other.memberAccountRuleStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, configRuleName.hashCode);
    _$hash = $jc(_$hash, errorCode.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jc(_$hash, lastUpdateTime.hashCode);
    _$hash = $jc(_$hash, memberAccountRuleStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MemberAccountStatusBuilder
    implements Builder<MemberAccountStatus, MemberAccountStatusBuilder> {
  _$MemberAccountStatus? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _configRuleName;
  String? get configRuleName => _$this._configRuleName;
  set configRuleName(String? configRuleName) =>
      _$this._configRuleName = configRuleName;

  String? _errorCode;
  String? get errorCode => _$this._errorCode;
  set errorCode(String? errorCode) => _$this._errorCode = errorCode;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  _i2.MemberAccountRuleStatus? _memberAccountRuleStatus;
  _i2.MemberAccountRuleStatus? get memberAccountRuleStatus =>
      _$this._memberAccountRuleStatus;
  set memberAccountRuleStatus(
          _i2.MemberAccountRuleStatus? memberAccountRuleStatus) =>
      _$this._memberAccountRuleStatus = memberAccountRuleStatus;

  MemberAccountStatusBuilder() {
    MemberAccountStatus._init(this);
  }

  MemberAccountStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _configRuleName = $v.configRuleName;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _lastUpdateTime = $v.lastUpdateTime;
      _memberAccountRuleStatus = $v.memberAccountRuleStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MemberAccountStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MemberAccountStatus;
  }

  @override
  void update(void Function(MemberAccountStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MemberAccountStatus build() => _build();

  _$MemberAccountStatus _build() {
    final _$result = _$v ??
        new _$MemberAccountStatus._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'MemberAccountStatus', 'accountId'),
            configRuleName: BuiltValueNullFieldError.checkNotNull(
                configRuleName, r'MemberAccountStatus', 'configRuleName'),
            errorCode: errorCode,
            errorMessage: errorMessage,
            lastUpdateTime: lastUpdateTime,
            memberAccountRuleStatus: BuiltValueNullFieldError.checkNotNull(
                memberAccountRuleStatus,
                r'MemberAccountStatus',
                'memberAccountRuleStatus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
