// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_interface_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInterfaceResult extends CreateNetworkInterfaceResult {
  @override
  final NetworkInterface? networkInterface;
  @override
  final String? clientToken;

  factory _$CreateNetworkInterfaceResult(
          [void Function(CreateNetworkInterfaceResultBuilder)? updates]) =>
      (new CreateNetworkInterfaceResultBuilder()..update(updates))._build();

  _$CreateNetworkInterfaceResult._({this.networkInterface, this.clientToken})
      : super._();

  @override
  CreateNetworkInterfaceResult rebuild(
          void Function(CreateNetworkInterfaceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInterfaceResultBuilder toBuilder() =>
      new CreateNetworkInterfaceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInterfaceResult &&
        networkInterface == other.networkInterface &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterface.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInterfaceResultBuilder
    implements
        Builder<CreateNetworkInterfaceResult,
            CreateNetworkInterfaceResultBuilder> {
  _$CreateNetworkInterfaceResult? _$v;

  NetworkInterfaceBuilder? _networkInterface;
  NetworkInterfaceBuilder get networkInterface =>
      _$this._networkInterface ??= new NetworkInterfaceBuilder();
  set networkInterface(NetworkInterfaceBuilder? networkInterface) =>
      _$this._networkInterface = networkInterface;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateNetworkInterfaceResultBuilder();

  CreateNetworkInterfaceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterface = $v.networkInterface?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInterfaceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInterfaceResult;
  }

  @override
  void update(void Function(CreateNetworkInterfaceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInterfaceResult build() => _build();

  _$CreateNetworkInterfaceResult _build() {
    _$CreateNetworkInterfaceResult _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInterfaceResult._(
              networkInterface: _networkInterface?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInterface';
        _networkInterface?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInterfaceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
