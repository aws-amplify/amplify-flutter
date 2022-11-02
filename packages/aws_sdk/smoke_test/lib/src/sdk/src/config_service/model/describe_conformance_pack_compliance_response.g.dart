// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_conformance_pack_compliance_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConformancePackComplianceResponse
    extends DescribeConformancePackComplianceResponse {
  @override
  final String conformancePackName;
  @override
  final _i3.BuiltList<_i2.ConformancePackRuleCompliance>
      conformancePackRuleComplianceList;
  @override
  final String? nextToken;

  factory _$DescribeConformancePackComplianceResponse(
          [void Function(DescribeConformancePackComplianceResponseBuilder)?
              updates]) =>
      (new DescribeConformancePackComplianceResponseBuilder()..update(updates))
          ._build();

  _$DescribeConformancePackComplianceResponse._(
      {required this.conformancePackName,
      required this.conformancePackRuleComplianceList,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'DescribeConformancePackComplianceResponse', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackRuleComplianceList,
        r'DescribeConformancePackComplianceResponse',
        'conformancePackRuleComplianceList');
  }

  @override
  DescribeConformancePackComplianceResponse rebuild(
          void Function(DescribeConformancePackComplianceResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConformancePackComplianceResponseBuilder toBuilder() =>
      new DescribeConformancePackComplianceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConformancePackComplianceResponse &&
        conformancePackName == other.conformancePackName &&
        conformancePackRuleComplianceList ==
            other.conformancePackRuleComplianceList &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, conformancePackName.hashCode),
            conformancePackRuleComplianceList.hashCode),
        nextToken.hashCode));
  }
}

class DescribeConformancePackComplianceResponseBuilder
    implements
        Builder<DescribeConformancePackComplianceResponse,
            DescribeConformancePackComplianceResponseBuilder> {
  _$DescribeConformancePackComplianceResponse? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  _i3.ListBuilder<_i2.ConformancePackRuleCompliance>?
      _conformancePackRuleComplianceList;
  _i3.ListBuilder<_i2.ConformancePackRuleCompliance>
      get conformancePackRuleComplianceList =>
          _$this._conformancePackRuleComplianceList ??=
              new _i3.ListBuilder<_i2.ConformancePackRuleCompliance>();
  set conformancePackRuleComplianceList(
          _i3.ListBuilder<_i2.ConformancePackRuleCompliance>?
              conformancePackRuleComplianceList) =>
      _$this._conformancePackRuleComplianceList =
          conformancePackRuleComplianceList;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeConformancePackComplianceResponseBuilder() {
    DescribeConformancePackComplianceResponse._init(this);
  }

  DescribeConformancePackComplianceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _conformancePackRuleComplianceList =
          $v.conformancePackRuleComplianceList.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConformancePackComplianceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConformancePackComplianceResponse;
  }

  @override
  void update(
      void Function(DescribeConformancePackComplianceResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConformancePackComplianceResponse build() => _build();

  _$DescribeConformancePackComplianceResponse _build() {
    _$DescribeConformancePackComplianceResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeConformancePackComplianceResponse._(
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'DescribeConformancePackComplianceResponse',
                  'conformancePackName'),
              conformancePackRuleComplianceList:
                  conformancePackRuleComplianceList.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackRuleComplianceList';
        conformancePackRuleComplianceList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConformancePackComplianceResponse',
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
