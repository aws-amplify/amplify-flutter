// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_iam_instance_profile_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateIamInstanceProfileResult
    extends AssociateIamInstanceProfileResult {
  @override
  final IamInstanceProfileAssociation? iamInstanceProfileAssociation;

  factory _$AssociateIamInstanceProfileResult(
          [void Function(AssociateIamInstanceProfileResultBuilder)? updates]) =>
      (new AssociateIamInstanceProfileResultBuilder()..update(updates))
          ._build();

  _$AssociateIamInstanceProfileResult._({this.iamInstanceProfileAssociation})
      : super._();

  @override
  AssociateIamInstanceProfileResult rebuild(
          void Function(AssociateIamInstanceProfileResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateIamInstanceProfileResultBuilder toBuilder() =>
      new AssociateIamInstanceProfileResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateIamInstanceProfileResult &&
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

class AssociateIamInstanceProfileResultBuilder
    implements
        Builder<AssociateIamInstanceProfileResult,
            AssociateIamInstanceProfileResultBuilder> {
  _$AssociateIamInstanceProfileResult? _$v;

  IamInstanceProfileAssociationBuilder? _iamInstanceProfileAssociation;
  IamInstanceProfileAssociationBuilder get iamInstanceProfileAssociation =>
      _$this._iamInstanceProfileAssociation ??=
          new IamInstanceProfileAssociationBuilder();
  set iamInstanceProfileAssociation(
          IamInstanceProfileAssociationBuilder?
              iamInstanceProfileAssociation) =>
      _$this._iamInstanceProfileAssociation = iamInstanceProfileAssociation;

  AssociateIamInstanceProfileResultBuilder();

  AssociateIamInstanceProfileResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iamInstanceProfileAssociation =
          $v.iamInstanceProfileAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateIamInstanceProfileResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateIamInstanceProfileResult;
  }

  @override
  void update(
      void Function(AssociateIamInstanceProfileResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateIamInstanceProfileResult build() => _build();

  _$AssociateIamInstanceProfileResult _build() {
    _$AssociateIamInstanceProfileResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateIamInstanceProfileResult._(
              iamInstanceProfileAssociation:
                  _iamInstanceProfileAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfileAssociation';
        _iamInstanceProfileAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateIamInstanceProfileResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
