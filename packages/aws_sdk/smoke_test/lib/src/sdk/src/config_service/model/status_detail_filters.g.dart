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
    return $jf(
        $jc($jc(0, accountId.hashCode), memberAccountRuleStatus.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
