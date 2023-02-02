// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.status_detail_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatusDetailFilters extends StatusDetailFilters {
  @override
  final String? accountId;
  @override
  final _i2.MemberAccountRuleStatus? memberAccountRuleStatus;

  factory _$StatusDetailFilters(
          [void Function(StatusDetailFiltersBuilder)? updates]) =>
      (new StatusDetailFiltersBuilder()..update(updates))._build();

  _$StatusDetailFilters._({this.accountId, this.memberAccountRuleStatus})
      : super._();

  @override
  StatusDetailFilters rebuild(
          void Function(StatusDetailFiltersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatusDetailFiltersBuilder toBuilder() =>
      new StatusDetailFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatusDetailFilters &&
        accountId == other.accountId &&
        memberAccountRuleStatus == other.memberAccountRuleStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, memberAccountRuleStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StatusDetailFiltersBuilder
    implements Builder<StatusDetailFilters, StatusDetailFiltersBuilder> {
  _$StatusDetailFilters? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  _i2.MemberAccountRuleStatus? _memberAccountRuleStatus;
  _i2.MemberAccountRuleStatus? get memberAccountRuleStatus =>
      _$this._memberAccountRuleStatus;
  set memberAccountRuleStatus(
          _i2.MemberAccountRuleStatus? memberAccountRuleStatus) =>
      _$this._memberAccountRuleStatus = memberAccountRuleStatus;

  StatusDetailFiltersBuilder() {
    StatusDetailFilters._init(this);
  }

  StatusDetailFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _memberAccountRuleStatus = $v.memberAccountRuleStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatusDetailFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatusDetailFilters;
  }

  @override
  void update(void Function(StatusDetailFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatusDetailFilters build() => _build();

  _$StatusDetailFilters _build() {
    final _$result = _$v ??
        new _$StatusDetailFilters._(
            accountId: accountId,
            memberAccountRuleStatus: memberAccountRuleStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
