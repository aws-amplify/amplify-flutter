// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_endpoint_service_configuration_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcEndpointServiceConfigurationResult
    extends CreateVpcEndpointServiceConfigurationResult {
  @override
  final ServiceConfiguration? serviceConfiguration;
  @override
  final String? clientToken;

  factory _$CreateVpcEndpointServiceConfigurationResult(
          [void Function(CreateVpcEndpointServiceConfigurationResultBuilder)?
              updates]) =>
      (new CreateVpcEndpointServiceConfigurationResultBuilder()
            ..update(updates))
          ._build();

  _$CreateVpcEndpointServiceConfigurationResult._(
      {this.serviceConfiguration, this.clientToken})
      : super._();

  @override
  CreateVpcEndpointServiceConfigurationResult rebuild(
          void Function(CreateVpcEndpointServiceConfigurationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcEndpointServiceConfigurationResultBuilder toBuilder() =>
      new CreateVpcEndpointServiceConfigurationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcEndpointServiceConfigurationResult &&
        serviceConfiguration == other.serviceConfiguration &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceConfiguration.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcEndpointServiceConfigurationResultBuilder
    implements
        Builder<CreateVpcEndpointServiceConfigurationResult,
            CreateVpcEndpointServiceConfigurationResultBuilder> {
  _$CreateVpcEndpointServiceConfigurationResult? _$v;

  ServiceConfigurationBuilder? _serviceConfiguration;
  ServiceConfigurationBuilder get serviceConfiguration =>
      _$this._serviceConfiguration ??= new ServiceConfigurationBuilder();
  set serviceConfiguration(ServiceConfigurationBuilder? serviceConfiguration) =>
      _$this._serviceConfiguration = serviceConfiguration;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateVpcEndpointServiceConfigurationResultBuilder();

  CreateVpcEndpointServiceConfigurationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceConfiguration = $v.serviceConfiguration?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcEndpointServiceConfigurationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcEndpointServiceConfigurationResult;
  }

  @override
  void update(
      void Function(CreateVpcEndpointServiceConfigurationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcEndpointServiceConfigurationResult build() => _build();

  _$CreateVpcEndpointServiceConfigurationResult _build() {
    _$CreateVpcEndpointServiceConfigurationResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcEndpointServiceConfigurationResult._(
              serviceConfiguration: _serviceConfiguration?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceConfiguration';
        _serviceConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcEndpointServiceConfigurationResult',
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
