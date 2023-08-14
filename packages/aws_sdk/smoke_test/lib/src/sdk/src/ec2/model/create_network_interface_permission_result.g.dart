// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_network_interface_permission_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInterfacePermissionResult
    extends CreateNetworkInterfacePermissionResult {
  @override
  final NetworkInterfacePermission? interfacePermission;

  factory _$CreateNetworkInterfacePermissionResult(
          [void Function(CreateNetworkInterfacePermissionResultBuilder)?
              updates]) =>
      (new CreateNetworkInterfacePermissionResultBuilder()..update(updates))
          ._build();

  _$CreateNetworkInterfacePermissionResult._({this.interfacePermission})
      : super._();

  @override
  CreateNetworkInterfacePermissionResult rebuild(
          void Function(CreateNetworkInterfacePermissionResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInterfacePermissionResultBuilder toBuilder() =>
      new CreateNetworkInterfacePermissionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInterfacePermissionResult &&
        interfacePermission == other.interfacePermission;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interfacePermission.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInterfacePermissionResultBuilder
    implements
        Builder<CreateNetworkInterfacePermissionResult,
            CreateNetworkInterfacePermissionResultBuilder> {
  _$CreateNetworkInterfacePermissionResult? _$v;

  NetworkInterfacePermissionBuilder? _interfacePermission;
  NetworkInterfacePermissionBuilder get interfacePermission =>
      _$this._interfacePermission ??= new NetworkInterfacePermissionBuilder();
  set interfacePermission(
          NetworkInterfacePermissionBuilder? interfacePermission) =>
      _$this._interfacePermission = interfacePermission;

  CreateNetworkInterfacePermissionResultBuilder();

  CreateNetworkInterfacePermissionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interfacePermission = $v.interfacePermission?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInterfacePermissionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInterfacePermissionResult;
  }

  @override
  void update(
      void Function(CreateNetworkInterfacePermissionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInterfacePermissionResult build() => _build();

  _$CreateNetworkInterfacePermissionResult _build() {
    _$CreateNetworkInterfacePermissionResult _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInterfacePermissionResult._(
              interfacePermission: _interfacePermission?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interfacePermission';
        _interfacePermission?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInterfacePermissionResult',
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
