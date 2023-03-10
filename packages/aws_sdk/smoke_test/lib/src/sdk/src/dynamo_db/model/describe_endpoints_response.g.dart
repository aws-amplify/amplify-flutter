// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_endpoints_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeEndpointsResponse extends DescribeEndpointsResponse {
  @override
  final _i3.BuiltList<_i2.Endpoint> endpoints;

  factory _$DescribeEndpointsResponse(
          [void Function(DescribeEndpointsResponseBuilder)? updates]) =>
      (new DescribeEndpointsResponseBuilder()..update(updates))._build();

  _$DescribeEndpointsResponse._({required this.endpoints}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        endpoints, r'DescribeEndpointsResponse', 'endpoints');
  }

  @override
  DescribeEndpointsResponse rebuild(
          void Function(DescribeEndpointsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeEndpointsResponseBuilder toBuilder() =>
      new DescribeEndpointsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeEndpointsResponse && endpoints == other.endpoints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeEndpointsResponseBuilder
    implements
        Builder<DescribeEndpointsResponse, DescribeEndpointsResponseBuilder> {
  _$DescribeEndpointsResponse? _$v;

  _i3.ListBuilder<_i2.Endpoint>? _endpoints;
  _i3.ListBuilder<_i2.Endpoint> get endpoints =>
      _$this._endpoints ??= new _i3.ListBuilder<_i2.Endpoint>();
  set endpoints(_i3.ListBuilder<_i2.Endpoint>? endpoints) =>
      _$this._endpoints = endpoints;

  DescribeEndpointsResponseBuilder() {
    DescribeEndpointsResponse._init(this);
  }

  DescribeEndpointsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoints = $v.endpoints.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeEndpointsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeEndpointsResponse;
  }

  @override
  void update(void Function(DescribeEndpointsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeEndpointsResponse build() => _build();

  _$DescribeEndpointsResponse _build() {
    _$DescribeEndpointsResponse _$result;
    try {
      _$result = _$v ??
          new _$DescribeEndpointsResponse._(endpoints: endpoints.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoints';
        endpoints.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeEndpointsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
