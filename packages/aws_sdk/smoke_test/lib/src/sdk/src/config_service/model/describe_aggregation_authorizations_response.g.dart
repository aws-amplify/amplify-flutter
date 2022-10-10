// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregation_authorizations_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregationAuthorizationsResponse
    extends DescribeAggregationAuthorizationsResponse {
  @override
  final _i3.BuiltList<_i2.AggregationAuthorization>? aggregationAuthorizations;
  @override
  final String? nextToken;

  factory _$DescribeAggregationAuthorizationsResponse(
          [void Function(DescribeAggregationAuthorizationsResponseBuilder)?
              updates]) =>
      (new DescribeAggregationAuthorizationsResponseBuilder()..update(updates))
          ._build();

  _$DescribeAggregationAuthorizationsResponse._(
      {this.aggregationAuthorizations, this.nextToken})
      : super._();

  @override
  DescribeAggregationAuthorizationsResponse rebuild(
          void Function(DescribeAggregationAuthorizationsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregationAuthorizationsResponseBuilder toBuilder() =>
      new DescribeAggregationAuthorizationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregationAuthorizationsResponse &&
        aggregationAuthorizations == other.aggregationAuthorizations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, aggregationAuthorizations.hashCode), nextToken.hashCode));
  }
}

class DescribeAggregationAuthorizationsResponseBuilder
    implements
        Builder<DescribeAggregationAuthorizationsResponse,
            DescribeAggregationAuthorizationsResponseBuilder> {
  _$DescribeAggregationAuthorizationsResponse? _$v;

  _i3.ListBuilder<_i2.AggregationAuthorization>? _aggregationAuthorizations;
  _i3.ListBuilder<_i2.AggregationAuthorization> get aggregationAuthorizations =>
      _$this._aggregationAuthorizations ??=
          new _i3.ListBuilder<_i2.AggregationAuthorization>();
  set aggregationAuthorizations(
          _i3.ListBuilder<_i2.AggregationAuthorization>?
              aggregationAuthorizations) =>
      _$this._aggregationAuthorizations = aggregationAuthorizations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregationAuthorizationsResponseBuilder() {
    DescribeAggregationAuthorizationsResponse._init(this);
  }

  DescribeAggregationAuthorizationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregationAuthorizations = $v.aggregationAuthorizations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregationAuthorizationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregationAuthorizationsResponse;
  }

  @override
  void update(
      void Function(DescribeAggregationAuthorizationsResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregationAuthorizationsResponse build() => _build();

  _$DescribeAggregationAuthorizationsResponse _build() {
    _$DescribeAggregationAuthorizationsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregationAuthorizationsResponse._(
              aggregationAuthorizations: _aggregationAuthorizations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregationAuthorizations';
        _aggregationAuthorizations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregationAuthorizationsResponse',
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
