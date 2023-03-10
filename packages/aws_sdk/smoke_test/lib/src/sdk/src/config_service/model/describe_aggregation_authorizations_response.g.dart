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
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregationAuthorizations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
