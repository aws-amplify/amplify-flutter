// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcEndpointResult extends CreateVpcEndpointResult {
  @override
  final VpcEndpoint? vpcEndpoint;
  @override
  final String? clientToken;

  factory _$CreateVpcEndpointResult(
          [void Function(CreateVpcEndpointResultBuilder)? updates]) =>
      (new CreateVpcEndpointResultBuilder()..update(updates))._build();

  _$CreateVpcEndpointResult._({this.vpcEndpoint, this.clientToken}) : super._();

  @override
  CreateVpcEndpointResult rebuild(
          void Function(CreateVpcEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcEndpointResultBuilder toBuilder() =>
      new CreateVpcEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcEndpointResult &&
        vpcEndpoint == other.vpcEndpoint &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcEndpoint.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcEndpointResultBuilder
    implements
        Builder<CreateVpcEndpointResult, CreateVpcEndpointResultBuilder> {
  _$CreateVpcEndpointResult? _$v;

  VpcEndpointBuilder? _vpcEndpoint;
  VpcEndpointBuilder get vpcEndpoint =>
      _$this._vpcEndpoint ??= new VpcEndpointBuilder();
  set vpcEndpoint(VpcEndpointBuilder? vpcEndpoint) =>
      _$this._vpcEndpoint = vpcEndpoint;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateVpcEndpointResultBuilder();

  CreateVpcEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcEndpoint = $v.vpcEndpoint?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcEndpointResult;
  }

  @override
  void update(void Function(CreateVpcEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcEndpointResult build() => _build();

  _$CreateVpcEndpointResult _build() {
    _$CreateVpcEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcEndpointResult._(
              vpcEndpoint: _vpcEndpoint?.build(), clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpoint';
        _vpcEndpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcEndpointResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
