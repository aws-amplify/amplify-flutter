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
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jc(_$hash, conformancePackRuleComplianceList.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
