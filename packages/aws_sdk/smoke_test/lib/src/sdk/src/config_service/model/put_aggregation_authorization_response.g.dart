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
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregationAuthorization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
