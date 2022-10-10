// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_aggregation_authorization_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutAggregationAuthorizationResponse
    extends PutAggregationAuthorizationResponse {
  @override
  final _i2.AggregationAuthorization? aggregationAuthorization;

  factory _$PutAggregationAuthorizationResponse(
          [void Function(PutAggregationAuthorizationResponseBuilder)?
              updates]) =>
      (new PutAggregationAuthorizationResponseBuilder()..update(updates))
          ._build();

  _$PutAggregationAuthorizationResponse._({this.aggregationAuthorization})
      : super._();

  @override
  PutAggregationAuthorizationResponse rebuild(
          void Function(PutAggregationAuthorizationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutAggregationAuthorizationResponseBuilder toBuilder() =>
      new PutAggregationAuthorizationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutAggregationAuthorizationResponse &&
        aggregationAuthorization == other.aggregationAuthorization;
  }

  @override
  int get hashCode {
    return $jf($jc(0, aggregationAuthorization.hashCode));
  }
}

class PutAggregationAuthorizationResponseBuilder
    implements
        Builder<PutAggregationAuthorizationResponse,
            PutAggregationAuthorizationResponseBuilder> {
  _$PutAggregationAuthorizationResponse? _$v;

  _i2.AggregationAuthorizationBuilder? _aggregationAuthorization;
  _i2.AggregationAuthorizationBuilder get aggregationAuthorization =>
      _$this._aggregationAuthorization ??=
          new _i2.AggregationAuthorizationBuilder();
  set aggregationAuthorization(
          _i2.AggregationAuthorizationBuilder? aggregationAuthorization) =>
      _$this._aggregationAuthorization = aggregationAuthorization;

  PutAggregationAuthorizationResponseBuilder() {
    PutAggregationAuthorizationResponse._init(this);
  }

  PutAggregationAuthorizationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregationAuthorization = $v.aggregationAuthorization?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutAggregationAuthorizationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutAggregationAuthorizationResponse;
  }

  @override
  void update(
      void Function(PutAggregationAuthorizationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutAggregationAuthorizationResponse build() => _build();

  _$PutAggregationAuthorizationResponse _build() {
    _$PutAggregationAuthorizationResponse _$result;
    try {
      _$result = _$v ??
          new _$PutAggregationAuthorizationResponse._(
              aggregationAuthorization: _aggregationAuthorization?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregationAuthorization';
        _aggregationAuthorization?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutAggregationAuthorizationResponse',
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
