// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_instance_connect_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInstanceConnectEndpointResult
    extends CreateInstanceConnectEndpointResult {
  @override
  final Ec2InstanceConnectEndpoint? instanceConnectEndpoint;
  @override
  final String? clientToken;

  factory _$CreateInstanceConnectEndpointResult(
          [void Function(CreateInstanceConnectEndpointResultBuilder)?
              updates]) =>
      (new CreateInstanceConnectEndpointResultBuilder()..update(updates))
          ._build();

  _$CreateInstanceConnectEndpointResult._(
      {this.instanceConnectEndpoint, this.clientToken})
      : super._();

  @override
  CreateInstanceConnectEndpointResult rebuild(
          void Function(CreateInstanceConnectEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateInstanceConnectEndpointResultBuilder toBuilder() =>
      new CreateInstanceConnectEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInstanceConnectEndpointResult &&
        instanceConnectEndpoint == other.instanceConnectEndpoint &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceConnectEndpoint.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateInstanceConnectEndpointResultBuilder
    implements
        Builder<CreateInstanceConnectEndpointResult,
            CreateInstanceConnectEndpointResultBuilder> {
  _$CreateInstanceConnectEndpointResult? _$v;

  Ec2InstanceConnectEndpointBuilder? _instanceConnectEndpoint;
  Ec2InstanceConnectEndpointBuilder get instanceConnectEndpoint =>
      _$this._instanceConnectEndpoint ??=
          new Ec2InstanceConnectEndpointBuilder();
  set instanceConnectEndpoint(
          Ec2InstanceConnectEndpointBuilder? instanceConnectEndpoint) =>
      _$this._instanceConnectEndpoint = instanceConnectEndpoint;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateInstanceConnectEndpointResultBuilder();

  CreateInstanceConnectEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceConnectEndpoint = $v.instanceConnectEndpoint?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInstanceConnectEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateInstanceConnectEndpointResult;
  }

  @override
  void update(
      void Function(CreateInstanceConnectEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInstanceConnectEndpointResult build() => _build();

  _$CreateInstanceConnectEndpointResult _build() {
    _$CreateInstanceConnectEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$CreateInstanceConnectEndpointResult._(
              instanceConnectEndpoint: _instanceConnectEndpoint?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceConnectEndpoint';
        _instanceConnectEndpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateInstanceConnectEndpointResult',
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
