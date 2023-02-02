// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_compliance_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateComplianceCount extends AggregateComplianceCount {
  @override
  final _i2.ComplianceSummary? complianceSummary;
  @override
  final String? groupName;

  factory _$AggregateComplianceCount(
          [void Function(AggregateComplianceCountBuilder)? updates]) =>
      (new AggregateComplianceCountBuilder()..update(updates))._build();

  _$AggregateComplianceCount._({this.complianceSummary, this.groupName})
      : super._();

  @override
  AggregateComplianceCount rebuild(
          void Function(AggregateComplianceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateComplianceCountBuilder toBuilder() =>
      new AggregateComplianceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateComplianceCount &&
        complianceSummary == other.complianceSummary &&
        groupName == other.groupName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceSummary.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateComplianceCountBuilder
    implements
        Builder<AggregateComplianceCount, AggregateComplianceCountBuilder> {
  _$AggregateComplianceCount? _$v;

  _i2.ComplianceSummaryBuilder? _complianceSummary;
  _i2.ComplianceSummaryBuilder get complianceSummary =>
      _$this._complianceSummary ??= new _i2.ComplianceSummaryBuilder();
  set complianceSummary(_i2.ComplianceSummaryBuilder? complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  AggregateComplianceCountBuilder() {
    AggregateComplianceCount._init(this);
  }

  AggregateComplianceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateComplianceCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateComplianceCount;
  }

  @override
  void update(void Function(AggregateComplianceCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateComplianceCount build() => _build();

  _$AggregateComplianceCount _build() {
    _$AggregateComplianceCount _$result;
    try {
      _$result = _$v ??
          new _$AggregateComplianceCount._(
              complianceSummary: _complianceSummary?.build(),
              groupName: groupName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummary';
        _complianceSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AggregateComplianceCount', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
