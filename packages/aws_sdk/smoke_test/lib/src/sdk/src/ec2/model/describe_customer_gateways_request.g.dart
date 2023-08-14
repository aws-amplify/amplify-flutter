// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_customer_gateways_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCustomerGatewaysRequest
    extends DescribeCustomerGatewaysRequest {
  @override
  final _i3.BuiltList<String>? customerGatewayIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeCustomerGatewaysRequest(
          [void Function(DescribeCustomerGatewaysRequestBuilder)? updates]) =>
      (new DescribeCustomerGatewaysRequestBuilder()..update(updates))._build();

  _$DescribeCustomerGatewaysRequest._(
      {this.customerGatewayIds, this.filters, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeCustomerGatewaysRequest', 'dryRun');
  }

  @override
  DescribeCustomerGatewaysRequest rebuild(
          void Function(DescribeCustomerGatewaysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCustomerGatewaysRequestBuilder toBuilder() =>
      new DescribeCustomerGatewaysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCustomerGatewaysRequest &&
        customerGatewayIds == other.customerGatewayIds &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerGatewayIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCustomerGatewaysRequestBuilder
    implements
        Builder<DescribeCustomerGatewaysRequest,
            DescribeCustomerGatewaysRequestBuilder> {
  _$DescribeCustomerGatewaysRequest? _$v;

  _i3.ListBuilder<String>? _customerGatewayIds;
  _i3.ListBuilder<String> get customerGatewayIds =>
      _$this._customerGatewayIds ??= new _i3.ListBuilder<String>();
  set customerGatewayIds(_i3.ListBuilder<String>? customerGatewayIds) =>
      _$this._customerGatewayIds = customerGatewayIds;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeCustomerGatewaysRequestBuilder() {
    DescribeCustomerGatewaysRequest._init(this);
  }

  DescribeCustomerGatewaysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerGatewayIds = $v.customerGatewayIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCustomerGatewaysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCustomerGatewaysRequest;
  }

  @override
  void update(void Function(DescribeCustomerGatewaysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCustomerGatewaysRequest build() => _build();

  _$DescribeCustomerGatewaysRequest _build() {
    _$DescribeCustomerGatewaysRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeCustomerGatewaysRequest._(
              customerGatewayIds: _customerGatewayIds?.build(),
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeCustomerGatewaysRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customerGatewayIds';
        _customerGatewayIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCustomerGatewaysRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
