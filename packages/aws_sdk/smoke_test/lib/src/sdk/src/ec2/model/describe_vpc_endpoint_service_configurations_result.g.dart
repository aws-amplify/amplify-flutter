// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_service_configurations_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointServiceConfigurationsResult
    extends DescribeVpcEndpointServiceConfigurationsResult {
  @override
  final _i2.BuiltList<ServiceConfiguration>? serviceConfigurations;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointServiceConfigurationsResult(
          [void Function(DescribeVpcEndpointServiceConfigurationsResultBuilder)?
              updates]) =>
      (new DescribeVpcEndpointServiceConfigurationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeVpcEndpointServiceConfigurationsResult._(
      {this.serviceConfigurations, this.nextToken})
      : super._();

  @override
  DescribeVpcEndpointServiceConfigurationsResult rebuild(
          void Function(DescribeVpcEndpointServiceConfigurationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointServiceConfigurationsResultBuilder toBuilder() =>
      new DescribeVpcEndpointServiceConfigurationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointServiceConfigurationsResult &&
        serviceConfigurations == other.serviceConfigurations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceConfigurations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointServiceConfigurationsResultBuilder
    implements
        Builder<DescribeVpcEndpointServiceConfigurationsResult,
            DescribeVpcEndpointServiceConfigurationsResultBuilder> {
  _$DescribeVpcEndpointServiceConfigurationsResult? _$v;

  _i2.ListBuilder<ServiceConfiguration>? _serviceConfigurations;
  _i2.ListBuilder<ServiceConfiguration> get serviceConfigurations =>
      _$this._serviceConfigurations ??=
          new _i2.ListBuilder<ServiceConfiguration>();
  set serviceConfigurations(
          _i2.ListBuilder<ServiceConfiguration>? serviceConfigurations) =>
      _$this._serviceConfigurations = serviceConfigurations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointServiceConfigurationsResultBuilder();

  DescribeVpcEndpointServiceConfigurationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceConfigurations = $v.serviceConfigurations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointServiceConfigurationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointServiceConfigurationsResult;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointServiceConfigurationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointServiceConfigurationsResult build() => _build();

  _$DescribeVpcEndpointServiceConfigurationsResult _build() {
    _$DescribeVpcEndpointServiceConfigurationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointServiceConfigurationsResult._(
              serviceConfigurations: _serviceConfigurations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceConfigurations';
        _serviceConfigurations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointServiceConfigurationsResult',
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
