// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_endpoints_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeEndpointsRequest extends DescribeEndpointsRequest {
  factory _$DescribeEndpointsRequest(
          [void Function(DescribeEndpointsRequestBuilder)? updates]) =>
      (new DescribeEndpointsRequestBuilder()..update(updates))._build();

  _$DescribeEndpointsRequest._() : super._();

  @override
  DescribeEndpointsRequest rebuild(
          void Function(DescribeEndpointsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeEndpointsRequestBuilder toBuilder() =>
      new DescribeEndpointsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeEndpointsRequest;
  }

  @override
  int get hashCode {
    return 573895926;
  }
}

class DescribeEndpointsRequestBuilder
    implements
        Builder<DescribeEndpointsRequest, DescribeEndpointsRequestBuilder> {
  _$DescribeEndpointsRequest? _$v;

  DescribeEndpointsRequestBuilder() {
    DescribeEndpointsRequest._init(this);
  }

  @override
  void replace(DescribeEndpointsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeEndpointsRequest;
  }

  @override
  void update(void Function(DescribeEndpointsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeEndpointsRequest build() => _build();

  _$DescribeEndpointsRequest _build() {
    final _$result = _$v ?? new _$DescribeEndpointsRequest._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
