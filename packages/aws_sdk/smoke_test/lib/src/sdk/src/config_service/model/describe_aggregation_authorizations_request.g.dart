// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregation_authorizations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregationAuthorizationsRequest
    extends DescribeAggregationAuthorizationsRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$DescribeAggregationAuthorizationsRequest(
          [void Function(DescribeAggregationAuthorizationsRequestBuilder)?
              updates]) =>
      (new DescribeAggregationAuthorizationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeAggregationAuthorizationsRequest._({this.limit, this.nextToken})
      : super._();

  @override
  DescribeAggregationAuthorizationsRequest rebuild(
          void Function(DescribeAggregationAuthorizationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregationAuthorizationsRequestBuilder toBuilder() =>
      new DescribeAggregationAuthorizationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregationAuthorizationsRequest &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, limit.hashCode), nextToken.hashCode));
  }
}

class DescribeAggregationAuthorizationsRequestBuilder
    implements
        Builder<DescribeAggregationAuthorizationsRequest,
            DescribeAggregationAuthorizationsRequestBuilder> {
  _$DescribeAggregationAuthorizationsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregationAuthorizationsRequestBuilder() {
    DescribeAggregationAuthorizationsRequest._init(this);
  }

  DescribeAggregationAuthorizationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregationAuthorizationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregationAuthorizationsRequest;
  }

  @override
  void update(
      void Function(DescribeAggregationAuthorizationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregationAuthorizationsRequest build() => _build();

  _$DescribeAggregationAuthorizationsRequest _build() {
    final _$result = _$v ??
        new _$DescribeAggregationAuthorizationsRequest._(
            limit: limit, nextToken: nextToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
