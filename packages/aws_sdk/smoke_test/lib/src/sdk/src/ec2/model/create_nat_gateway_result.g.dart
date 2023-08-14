// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_nat_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNatGatewayResult extends CreateNatGatewayResult {
  @override
  final String? clientToken;
  @override
  final NatGateway? natGateway;

  factory _$CreateNatGatewayResult(
          [void Function(CreateNatGatewayResultBuilder)? updates]) =>
      (new CreateNatGatewayResultBuilder()..update(updates))._build();

  _$CreateNatGatewayResult._({this.clientToken, this.natGateway}) : super._();

  @override
  CreateNatGatewayResult rebuild(
          void Function(CreateNatGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNatGatewayResultBuilder toBuilder() =>
      new CreateNatGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNatGatewayResult &&
        clientToken == other.clientToken &&
        natGateway == other.natGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, natGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNatGatewayResultBuilder
    implements Builder<CreateNatGatewayResult, CreateNatGatewayResultBuilder> {
  _$CreateNatGatewayResult? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  NatGatewayBuilder? _natGateway;
  NatGatewayBuilder get natGateway =>
      _$this._natGateway ??= new NatGatewayBuilder();
  set natGateway(NatGatewayBuilder? natGateway) =>
      _$this._natGateway = natGateway;

  CreateNatGatewayResultBuilder();

  CreateNatGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _natGateway = $v.natGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNatGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNatGatewayResult;
  }

  @override
  void update(void Function(CreateNatGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNatGatewayResult build() => _build();

  _$CreateNatGatewayResult _build() {
    _$CreateNatGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateNatGatewayResult._(
              clientToken: clientToken, natGateway: _natGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'natGateway';
        _natGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNatGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
