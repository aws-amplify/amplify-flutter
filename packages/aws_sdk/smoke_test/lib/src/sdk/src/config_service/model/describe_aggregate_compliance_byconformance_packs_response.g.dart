// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_byconformance_packs_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByconformancePacksResponse
    extends DescribeAggregateComplianceByconformancePacksResponse {
  @override
  final _i2.BuiltList<_i3.AggregateComplianceByconformancePack>?
      aggregateComplianceByconformancePacks;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByconformancePacksResponse(
          [void Function(
                  DescribeAggregateComplianceByconformancePacksResponseBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByconformancePacksResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByconformancePacksResponse._(
      {this.aggregateComplianceByconformancePacks, this.nextToken})
      : super._();

  @override
  DescribeAggregateComplianceByconformancePacksResponse rebuild(
          void Function(
                  DescribeAggregateComplianceByconformancePacksResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByconformancePacksResponseBuilder toBuilder() =>
      new DescribeAggregateComplianceByconformancePacksResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByconformancePacksResponse &&
        aggregateComplianceByconformancePacks ==
            other.aggregateComplianceByconformancePacks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, aggregateComplianceByconformancePacks.hashCode),
        nextToken.hashCode));
  }
}

class DescribeAggregateComplianceByconformancePacksResponseBuilder
    implements
        Builder<DescribeAggregateComplianceByconformancePacksResponse,
            DescribeAggregateComplianceByconformancePacksResponseBuilder> {
  _$DescribeAggregateComplianceByconformancePacksResponse? _$v;

  _i2.ListBuilder<_i3.AggregateComplianceByconformancePack>?
      _aggregateComplianceByconformancePacks;
  _i2.ListBuilder<_i3.AggregateComplianceByconformancePack>
      get aggregateComplianceByconformancePacks =>
          _$this._aggregateComplianceByconformancePacks ??=
              new _i2.ListBuilder<_i3.AggregateComplianceByconformancePack>();
  set aggregateComplianceByconformancePacks(
          _i2.ListBuilder<_i3.AggregateComplianceByconformancePack>?
              aggregateComplianceByconformancePacks) =>
      _$this._aggregateComplianceByconformancePacks =
          aggregateComplianceByconformancePacks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByconformancePacksResponseBuilder() {
    DescribeAggregateComplianceByconformancePacksResponse._init(this);
  }

  DescribeAggregateComplianceByconformancePacksResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateComplianceByconformancePacks =
          $v.aggregateComplianceByconformancePacks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateComplianceByconformancePacksResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByconformancePacksResponse;
  }

  @override
  void update(
      void Function(
              DescribeAggregateComplianceByconformancePacksResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByconformancePacksResponse build() => _build();

  _$DescribeAggregateComplianceByconformancePacksResponse _build() {
    _$DescribeAggregateComplianceByconformancePacksResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByconformancePacksResponse._(
              aggregateComplianceByconformancePacks:
                  _aggregateComplianceByconformancePacks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateComplianceByconformancePacks';
        _aggregateComplianceByconformancePacks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByconformancePacksResponse',
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
