// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_iam_instance_profile_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateIamInstanceProfileResult
    extends DisassociateIamInstanceProfileResult {
  @override
  final IamInstanceProfileAssociation? iamInstanceProfileAssociation;

  factory _$DisassociateIamInstanceProfileResult(
          [void Function(DisassociateIamInstanceProfileResultBuilder)?
              updates]) =>
      (new DisassociateIamInstanceProfileResultBuilder()..update(updates))
          ._build();

  _$DisassociateIamInstanceProfileResult._({this.iamInstanceProfileAssociation})
      : super._();

  @override
  DisassociateIamInstanceProfileResult rebuild(
          void Function(DisassociateIamInstanceProfileResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateIamInstanceProfileResultBuilder toBuilder() =>
      new DisassociateIamInstanceProfileResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateIamInstanceProfileResult &&
        iamInstanceProfileAssociation == other.iamInstanceProfileAssociation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, iamInstanceProfileAssociation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateIamInstanceProfileResultBuilder
    implements
        Builder<DisassociateIamInstanceProfileResult,
            DisassociateIamInstanceProfileResultBuilder> {
  _$DisassociateIamInstanceProfileResult? _$v;

  IamInstanceProfileAssociationBuilder? _iamInstanceProfileAssociation;
  IamInstanceProfileAssociationBuilder get iamInstanceProfileAssociation =>
      _$this._iamInstanceProfileAssociation ??=
          new IamInstanceProfileAssociationBuilder();
  set iamInstanceProfileAssociation(
          IamInstanceProfileAssociationBuilder?
              iamInstanceProfileAssociation) =>
      _$this._iamInstanceProfileAssociation = iamInstanceProfileAssociation;

  DisassociateIamInstanceProfileResultBuilder();

  DisassociateIamInstanceProfileResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iamInstanceProfileAssociation =
          $v.iamInstanceProfileAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateIamInstanceProfileResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateIamInstanceProfileResult;
  }

  @override
  void update(
      void Function(DisassociateIamInstanceProfileResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateIamInstanceProfileResult build() => _build();

  _$DisassociateIamInstanceProfileResult _build() {
    _$DisassociateIamInstanceProfileResult _$result;
    try {
      _$result = _$v ??
          new _$DisassociateIamInstanceProfileResult._(
              iamInstanceProfileAssociation:
                  _iamInstanceProfileAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfileAssociation';
        _iamInstanceProfileAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DisassociateIamInstanceProfileResult',
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
