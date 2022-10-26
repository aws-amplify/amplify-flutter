// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_compliance_by_conformance_pack;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateComplianceByConformancePack
    extends AggregateComplianceByConformancePack {
  @override
  final String? accountId;
  @override
  final String? awsRegion;
  @override
  final _i2.AggregateConformancePackCompliance? compliance;
  @override
  final String? conformancePackName;

  factory _$AggregateComplianceByConformancePack(
          [void Function(AggregateComplianceByConformancePackBuilder)?
              updates]) =>
      (new AggregateComplianceByConformancePackBuilder()..update(updates))
          ._build();

  _$AggregateComplianceByConformancePack._(
      {this.accountId,
      this.awsRegion,
      this.compliance,
      this.conformancePackName})
      : super._();

  @override
  AggregateComplianceByConformancePack rebuild(
          void Function(AggregateComplianceByConformancePackBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateComplianceByConformancePackBuilder toBuilder() =>
      new AggregateComplianceByConformancePackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateComplianceByConformancePack &&
        accountId == other.accountId &&
        awsRegion == other.awsRegion &&
        compliance == other.compliance &&
        conformancePackName == other.conformancePackName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accountId.hashCode), awsRegion.hashCode),
            compliance.hashCode),
        conformancePackName.hashCode));
  }
}

class AggregateComplianceByConformancePackBuilder
    implements
        Builder<AggregateComplianceByConformancePack,
            AggregateComplianceByConformancePackBuilder> {
  _$AggregateComplianceByConformancePack? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _awsRegion;
  String? get awsRegion => _$this._awsRegion;
  set awsRegion(String? awsRegion) => _$this._awsRegion = awsRegion;

  _i2.AggregateConformancePackComplianceBuilder? _compliance;
  _i2.AggregateConformancePackComplianceBuilder get compliance =>
      _$this._compliance ??=
          new _i2.AggregateConformancePackComplianceBuilder();
  set compliance(_i2.AggregateConformancePackComplianceBuilder? compliance) =>
      _$this._compliance = compliance;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  AggregateComplianceByConformancePackBuilder() {
    AggregateComplianceByConformancePack._init(this);
  }

  AggregateComplianceByConformancePackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _awsRegion = $v.awsRegion;
      _compliance = $v.compliance?.toBuilder();
      _conformancePackName = $v.conformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateComplianceByConformancePack other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateComplianceByConformancePack;
  }

  @override
  void update(
      void Function(AggregateComplianceByConformancePackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateComplianceByConformancePack build() => _build();

  _$AggregateComplianceByConformancePack _build() {
    _$AggregateComplianceByConformancePack _$result;
    try {
      _$result = _$v ??
          new _$AggregateComplianceByConformancePack._(
              accountId: accountId,
              awsRegion: awsRegion,
              compliance: _compliance?.build(),
              conformancePackName: conformancePackName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compliance';
        _compliance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AggregateComplianceByConformancePack',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
