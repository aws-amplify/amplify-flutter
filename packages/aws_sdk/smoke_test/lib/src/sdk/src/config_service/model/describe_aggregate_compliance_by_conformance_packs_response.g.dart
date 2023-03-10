// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_by_conformance_packs_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByConformancePacksResponse
    extends DescribeAggregateComplianceByConformancePacksResponse {
  @override
  final _i3.BuiltList<_i2.AggregateComplianceByConformancePack>?
      aggregateComplianceByConformancePacks;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByConformancePacksResponse(
          [void Function(
                  DescribeAggregateComplianceByConformancePacksResponseBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByConformancePacksResponseBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByConformancePacksResponse._(
      {this.aggregateComplianceByConformancePacks, this.nextToken})
      : super._();

  @override
  DescribeAggregateComplianceByConformancePacksResponse rebuild(
          void Function(
                  DescribeAggregateComplianceByConformancePacksResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByConformancePacksResponseBuilder toBuilder() =>
      new DescribeAggregateComplianceByConformancePacksResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByConformancePacksResponse &&
        aggregateComplianceByConformancePacks ==
            other.aggregateComplianceByConformancePacks &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregateComplianceByConformancePacks.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAggregateComplianceByConformancePacksResponseBuilder
    implements
        Builder<DescribeAggregateComplianceByConformancePacksResponse,
            DescribeAggregateComplianceByConformancePacksResponseBuilder> {
  _$DescribeAggregateComplianceByConformancePacksResponse? _$v;

  _i3.ListBuilder<_i2.AggregateComplianceByConformancePack>?
      _aggregateComplianceByConformancePacks;
  _i3.ListBuilder<_i2.AggregateComplianceByConformancePack>
      get aggregateComplianceByConformancePacks =>
          _$this._aggregateComplianceByConformancePacks ??=
              new _i3.ListBuilder<_i2.AggregateComplianceByConformancePack>();
  set aggregateComplianceByConformancePacks(
          _i3.ListBuilder<_i2.AggregateComplianceByConformancePack>?
              aggregateComplianceByConformancePacks) =>
      _$this._aggregateComplianceByConformancePacks =
          aggregateComplianceByConformancePacks;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByConformancePacksResponseBuilder() {
    DescribeAggregateComplianceByConformancePacksResponse._init(this);
  }

  DescribeAggregateComplianceByConformancePacksResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregateComplianceByConformancePacks =
          $v.aggregateComplianceByConformancePacks?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateComplianceByConformancePacksResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByConformancePacksResponse;
  }

  @override
  void update(
      void Function(
              DescribeAggregateComplianceByConformancePacksResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByConformancePacksResponse build() => _build();

  _$DescribeAggregateComplianceByConformancePacksResponse _build() {
    _$DescribeAggregateComplianceByConformancePacksResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByConformancePacksResponse._(
              aggregateComplianceByConformancePacks:
                  _aggregateComplianceByConformancePacks?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregateComplianceByConformancePacks';
        _aggregateComplianceByConformancePacks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByConformancePacksResponse',
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
