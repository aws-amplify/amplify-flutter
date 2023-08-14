// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_service_permissions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointServicePermissionsResult
    extends ModifyVpcEndpointServicePermissionsResult {
  @override
  final _i2.BuiltList<AddedPrincipal>? addedPrincipals;
  @override
  final bool returnValue;

  factory _$ModifyVpcEndpointServicePermissionsResult(
          [void Function(ModifyVpcEndpointServicePermissionsResultBuilder)?
              updates]) =>
      (new ModifyVpcEndpointServicePermissionsResultBuilder()..update(updates))
          ._build();

  _$ModifyVpcEndpointServicePermissionsResult._(
      {this.addedPrincipals, required this.returnValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(returnValue,
        r'ModifyVpcEndpointServicePermissionsResult', 'returnValue');
  }

  @override
  ModifyVpcEndpointServicePermissionsResult rebuild(
          void Function(ModifyVpcEndpointServicePermissionsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointServicePermissionsResultBuilder toBuilder() =>
      new ModifyVpcEndpointServicePermissionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointServicePermissionsResult &&
        addedPrincipals == other.addedPrincipals &&
        returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addedPrincipals.hashCode);
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointServicePermissionsResultBuilder
    implements
        Builder<ModifyVpcEndpointServicePermissionsResult,
            ModifyVpcEndpointServicePermissionsResultBuilder> {
  _$ModifyVpcEndpointServicePermissionsResult? _$v;

  _i2.ListBuilder<AddedPrincipal>? _addedPrincipals;
  _i2.ListBuilder<AddedPrincipal> get addedPrincipals =>
      _$this._addedPrincipals ??= new _i2.ListBuilder<AddedPrincipal>();
  set addedPrincipals(_i2.ListBuilder<AddedPrincipal>? addedPrincipals) =>
      _$this._addedPrincipals = addedPrincipals;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  ModifyVpcEndpointServicePermissionsResultBuilder() {
    ModifyVpcEndpointServicePermissionsResult._init(this);
  }

  ModifyVpcEndpointServicePermissionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addedPrincipals = $v.addedPrincipals?.toBuilder();
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointServicePermissionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointServicePermissionsResult;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointServicePermissionsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointServicePermissionsResult build() => _build();

  _$ModifyVpcEndpointServicePermissionsResult _build() {
    _$ModifyVpcEndpointServicePermissionsResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcEndpointServicePermissionsResult._(
              addedPrincipals: _addedPrincipals?.build(),
              returnValue: BuiltValueNullFieldError.checkNotNull(returnValue,
                  r'ModifyVpcEndpointServicePermissionsResult', 'returnValue'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addedPrincipals';
        _addedPrincipals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcEndpointServicePermissionsResult',
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
