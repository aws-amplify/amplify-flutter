// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_conformance_pack_detailed_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConformancePackDetailedStatus
    extends OrganizationConformancePackDetailedStatus {
  @override
  final String accountId;
  @override
  final String conformancePackName;
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final DateTime? lastUpdateTime;
  @override
  final _i2.OrganizationResourceDetailedStatus status;

  factory _$OrganizationConformancePackDetailedStatus(
          [void Function(OrganizationConformancePackDetailedStatusBuilder)?
              updates]) =>
      (new OrganizationConformancePackDetailedStatusBuilder()..update(updates))
          ._build();

  _$OrganizationConformancePackDetailedStatus._(
      {required this.accountId,
      required this.conformancePackName,
      this.errorCode,
      this.errorMessage,
      this.lastUpdateTime,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accountId, r'OrganizationConformancePackDetailedStatus', 'accountId');
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'OrganizationConformancePackDetailedStatus', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(
        status, r'OrganizationConformancePackDetailedStatus', 'status');
  }

  @override
  OrganizationConformancePackDetailedStatus rebuild(
          void Function(OrganizationConformancePackDetailedStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationConformancePackDetailedStatusBuilder toBuilder() =>
      new OrganizationConformancePackDetailedStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationConformancePackDetailedStatus &&
        accountId == other.accountId &&
        conformancePackName == other.conformancePackName &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        lastUpdateTime == other.lastUpdateTime &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, accountId.hashCode),
                        conformancePackName.hashCode),
                    errorCode.hashCode),
                errorMessage.hashCode),
            lastUpdateTime.hashCode),
        status.hashCode));
  }
}

class OrganizationConformancePackDetailedStatusBuilder
    implements
        Builder<OrganizationConformancePackDetailedStatus,
            OrganizationConformancePackDetailedStatusBuilder> {
  _$OrganizationConformancePackDetailedStatus? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

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

  _i2.OrganizationResourceDetailedStatus? _status;
  _i2.OrganizationResourceDetailedStatus? get status => _$this._status;
  set status(_i2.OrganizationResourceDetailedStatus? status) =>
      _$this._status = status;

  OrganizationConformancePackDetailedStatusBuilder() {
    OrganizationConformancePackDetailedStatus._init(this);
  }

  OrganizationConformancePackDetailedStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _conformancePackName = $v.conformancePackName;
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _lastUpdateTime = $v.lastUpdateTime;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationConformancePackDetailedStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationConformancePackDetailedStatus;
  }

  @override
  void update(
      void Function(OrganizationConformancePackDetailedStatusBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationConformancePackDetailedStatus build() => _build();

  _$OrganizationConformancePackDetailedStatus _build() {
    final _$result = _$v ??
        new _$OrganizationConformancePackDetailedStatus._(
            accountId: BuiltValueNullFieldError.checkNotNull(accountId,
                r'OrganizationConformancePackDetailedStatus', 'accountId'),
            conformancePackName: BuiltValueNullFieldError.checkNotNull(
                conformancePackName,
                r'OrganizationConformancePackDetailedStatus',
                'conformancePackName'),
            errorCode: errorCode,
            errorMessage: errorMessage,
            lastUpdateTime: lastUpdateTime,
            status: BuiltValueNullFieldError.checkNotNull(status,
                r'OrganizationConformancePackDetailedStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
