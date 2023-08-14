// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_services_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointServicesResult
    extends DescribeVpcEndpointServicesResult {
  @override
  final _i2.BuiltList<String>? serviceNames;
  @override
  final _i2.BuiltList<ServiceDetail>? serviceDetails;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointServicesResult(
          [void Function(DescribeVpcEndpointServicesResultBuilder)? updates]) =>
      (new DescribeVpcEndpointServicesResultBuilder()..update(updates))
          ._build();

  _$DescribeVpcEndpointServicesResult._(
      {this.serviceNames, this.serviceDetails, this.nextToken})
      : super._();

  @override
  DescribeVpcEndpointServicesResult rebuild(
          void Function(DescribeVpcEndpointServicesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointServicesResultBuilder toBuilder() =>
      new DescribeVpcEndpointServicesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointServicesResult &&
        serviceNames == other.serviceNames &&
        serviceDetails == other.serviceDetails &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceNames.hashCode);
    _$hash = $jc(_$hash, serviceDetails.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointServicesResultBuilder
    implements
        Builder<DescribeVpcEndpointServicesResult,
            DescribeVpcEndpointServicesResultBuilder> {
  _$DescribeVpcEndpointServicesResult? _$v;

  _i2.ListBuilder<String>? _serviceNames;
  _i2.ListBuilder<String> get serviceNames =>
      _$this._serviceNames ??= new _i2.ListBuilder<String>();
  set serviceNames(_i2.ListBuilder<String>? serviceNames) =>
      _$this._serviceNames = serviceNames;

  _i2.ListBuilder<ServiceDetail>? _serviceDetails;
  _i2.ListBuilder<ServiceDetail> get serviceDetails =>
      _$this._serviceDetails ??= new _i2.ListBuilder<ServiceDetail>();
  set serviceDetails(_i2.ListBuilder<ServiceDetail>? serviceDetails) =>
      _$this._serviceDetails = serviceDetails;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointServicesResultBuilder();

  DescribeVpcEndpointServicesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceNames = $v.serviceNames?.toBuilder();
      _serviceDetails = $v.serviceDetails?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointServicesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointServicesResult;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointServicesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointServicesResult build() => _build();

  _$DescribeVpcEndpointServicesResult _build() {
    _$DescribeVpcEndpointServicesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointServicesResult._(
              serviceNames: _serviceNames?.build(),
              serviceDetails: _serviceDetails?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceNames';
        _serviceNames?.build();
        _$failedField = 'serviceDetails';
        _serviceDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointServicesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
