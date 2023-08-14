// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'added_principal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddedPrincipal extends AddedPrincipal {
  @override
  final PrincipalType? principalType;
  @override
  final String? principal;
  @override
  final String? servicePermissionId;
  @override
  final String? serviceId;

  factory _$AddedPrincipal([void Function(AddedPrincipalBuilder)? updates]) =>
      (new AddedPrincipalBuilder()..update(updates))._build();

  _$AddedPrincipal._(
      {this.principalType,
      this.principal,
      this.servicePermissionId,
      this.serviceId})
      : super._();

  @override
  AddedPrincipal rebuild(void Function(AddedPrincipalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddedPrincipalBuilder toBuilder() =>
      new AddedPrincipalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddedPrincipal &&
        principalType == other.principalType &&
        principal == other.principal &&
        servicePermissionId == other.servicePermissionId &&
        serviceId == other.serviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, principalType.hashCode);
    _$hash = $jc(_$hash, principal.hashCode);
    _$hash = $jc(_$hash, servicePermissionId.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AddedPrincipalBuilder
    implements Builder<AddedPrincipal, AddedPrincipalBuilder> {
  _$AddedPrincipal? _$v;

  PrincipalType? _principalType;
  PrincipalType? get principalType => _$this._principalType;
  set principalType(PrincipalType? principalType) =>
      _$this._principalType = principalType;

  String? _principal;
  String? get principal => _$this._principal;
  set principal(String? principal) => _$this._principal = principal;

  String? _servicePermissionId;
  String? get servicePermissionId => _$this._servicePermissionId;
  set servicePermissionId(String? servicePermissionId) =>
      _$this._servicePermissionId = servicePermissionId;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  AddedPrincipalBuilder();

  AddedPrincipalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _principalType = $v.principalType;
      _principal = $v.principal;
      _servicePermissionId = $v.servicePermissionId;
      _serviceId = $v.serviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddedPrincipal other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddedPrincipal;
  }

  @override
  void update(void Function(AddedPrincipalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddedPrincipal build() => _build();

  _$AddedPrincipal _build() {
    final _$result = _$v ??
        new _$AddedPrincipal._(
            principalType: principalType,
            principal: principal,
            servicePermissionId: servicePermissionId,
            serviceId: serviceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
