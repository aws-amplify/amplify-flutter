// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.organization_conformance_pack_status;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationConformancePackStatus
    extends OrganizationConformancePackStatus {
  @override
  final String? errorCode;
  @override
  final String? errorMessage;
  @override
  final DateTime? lastUpdateTime;
  @override
  final String organizationConformancePackName;
  @override
  final _i2.OrganizationResourceStatus status;

  factory _$OrganizationConformancePackStatus(
          [void Function(OrganizationConformancePackStatusBuilder)? updates]) =>
      (new OrganizationConformancePackStatusBuilder()..update(updates))
          ._build();

  _$OrganizationConformancePackStatus._(
      {this.errorCode,
      this.errorMessage,
      this.lastUpdateTime,
      required this.organizationConformancePackName,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organizationConformancePackName,
        r'OrganizationConformancePackStatus',
        'organizationConformancePackName');
    BuiltValueNullFieldError.checkNotNull(
        status, r'OrganizationConformancePackStatus', 'status');
  }

  @override
  OrganizationConformancePackStatus rebuild(
          void Function(OrganizationConformancePackStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationConformancePackStatusBuilder toBuilder() =>
      new OrganizationConformancePackStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationConformancePackStatus &&
        errorCode == other.errorCode &&
        errorMessage == other.errorMessage &&
        lastUpdateTime == other.lastUpdateTime &&
        organizationConformancePackName ==
            other.organizationConformancePackName &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, errorCode.hashCode), errorMessage.hashCode),
                lastUpdateTime.hashCode),
            organizationConformancePackName.hashCode),
        status.hashCode));
  }
}

class OrganizationConformancePackStatusBuilder
    implements
        Builder<OrganizationConformancePackStatus,
            OrganizationConformancePackStatusBuilder> {
  _$OrganizationConformancePackStatus? _$v;

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

  String? _organizationConformancePackName;
  String? get organizationConformancePackName =>
      _$this._organizationConformancePackName;
  set organizationConformancePackName(
          String? organizationConformancePackName) =>
      _$this._organizationConformancePackName = organizationConformancePackName;

  _i2.OrganizationResourceStatus? _status;
  _i2.OrganizationResourceStatus? get status => _$this._status;
  set status(_i2.OrganizationResourceStatus? status) => _$this._status = status;

  OrganizationConformancePackStatusBuilder() {
    OrganizationConformancePackStatus._init(this);
  }

  OrganizationConformancePackStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorCode = $v.errorCode;
      _errorMessage = $v.errorMessage;
      _lastUpdateTime = $v.lastUpdateTime;
      _organizationConformancePackName = $v.organizationConformancePackName;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationConformancePackStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationConformancePackStatus;
  }

  @override
  void update(
      void Function(OrganizationConformancePackStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationConformancePackStatus build() => _build();

  _$OrganizationConformancePackStatus _build() {
    final _$result = _$v ??
        new _$OrganizationConformancePackStatus._(
            errorCode: errorCode,
            errorMessage: errorMessage,
            lastUpdateTime: lastUpdateTime,
            organizationConformancePackName:
                BuiltValueNullFieldError.checkNotNull(
                    organizationConformancePackName,
                    r'OrganizationConformancePackStatus',
                    'organizationConformancePackName'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OrganizationConformancePackStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
