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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
