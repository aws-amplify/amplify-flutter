// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_associated_enclave_certificate_iam_roles_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAssociatedEnclaveCertificateIamRolesResult
    extends GetAssociatedEnclaveCertificateIamRolesResult {
  @override
  final _i2.BuiltList<AssociatedRole>? associatedRoles;

  factory _$GetAssociatedEnclaveCertificateIamRolesResult(
          [void Function(GetAssociatedEnclaveCertificateIamRolesResultBuilder)?
              updates]) =>
      (new GetAssociatedEnclaveCertificateIamRolesResultBuilder()
            ..update(updates))
          ._build();

  _$GetAssociatedEnclaveCertificateIamRolesResult._({this.associatedRoles})
      : super._();

  @override
  GetAssociatedEnclaveCertificateIamRolesResult rebuild(
          void Function(GetAssociatedEnclaveCertificateIamRolesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAssociatedEnclaveCertificateIamRolesResultBuilder toBuilder() =>
      new GetAssociatedEnclaveCertificateIamRolesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAssociatedEnclaveCertificateIamRolesResult &&
        associatedRoles == other.associatedRoles;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associatedRoles.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAssociatedEnclaveCertificateIamRolesResultBuilder
    implements
        Builder<GetAssociatedEnclaveCertificateIamRolesResult,
            GetAssociatedEnclaveCertificateIamRolesResultBuilder> {
  _$GetAssociatedEnclaveCertificateIamRolesResult? _$v;

  _i2.ListBuilder<AssociatedRole>? _associatedRoles;
  _i2.ListBuilder<AssociatedRole> get associatedRoles =>
      _$this._associatedRoles ??= new _i2.ListBuilder<AssociatedRole>();
  set associatedRoles(_i2.ListBuilder<AssociatedRole>? associatedRoles) =>
      _$this._associatedRoles = associatedRoles;

  GetAssociatedEnclaveCertificateIamRolesResultBuilder();

  GetAssociatedEnclaveCertificateIamRolesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associatedRoles = $v.associatedRoles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAssociatedEnclaveCertificateIamRolesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAssociatedEnclaveCertificateIamRolesResult;
  }

  @override
  void update(
      void Function(GetAssociatedEnclaveCertificateIamRolesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAssociatedEnclaveCertificateIamRolesResult build() => _build();

  _$GetAssociatedEnclaveCertificateIamRolesResult _build() {
    _$GetAssociatedEnclaveCertificateIamRolesResult _$result;
    try {
      _$result = _$v ??
          new _$GetAssociatedEnclaveCertificateIamRolesResult._(
              associatedRoles: _associatedRoles?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associatedRoles';
        _associatedRoles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAssociatedEnclaveCertificateIamRolesResult',
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
