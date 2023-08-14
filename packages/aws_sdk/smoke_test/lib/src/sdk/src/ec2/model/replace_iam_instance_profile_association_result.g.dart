// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_iam_instance_profile_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceIamInstanceProfileAssociationResult
    extends ReplaceIamInstanceProfileAssociationResult {
  @override
  final IamInstanceProfileAssociation? iamInstanceProfileAssociation;

  factory _$ReplaceIamInstanceProfileAssociationResult(
          [void Function(ReplaceIamInstanceProfileAssociationResultBuilder)?
              updates]) =>
      (new ReplaceIamInstanceProfileAssociationResultBuilder()..update(updates))
          ._build();

  _$ReplaceIamInstanceProfileAssociationResult._(
      {this.iamInstanceProfileAssociation})
      : super._();

  @override
  ReplaceIamInstanceProfileAssociationResult rebuild(
          void Function(ReplaceIamInstanceProfileAssociationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceIamInstanceProfileAssociationResultBuilder toBuilder() =>
      new ReplaceIamInstanceProfileAssociationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceIamInstanceProfileAssociationResult &&
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

class ReplaceIamInstanceProfileAssociationResultBuilder
    implements
        Builder<ReplaceIamInstanceProfileAssociationResult,
            ReplaceIamInstanceProfileAssociationResultBuilder> {
  _$ReplaceIamInstanceProfileAssociationResult? _$v;

  IamInstanceProfileAssociationBuilder? _iamInstanceProfileAssociation;
  IamInstanceProfileAssociationBuilder get iamInstanceProfileAssociation =>
      _$this._iamInstanceProfileAssociation ??=
          new IamInstanceProfileAssociationBuilder();
  set iamInstanceProfileAssociation(
          IamInstanceProfileAssociationBuilder?
              iamInstanceProfileAssociation) =>
      _$this._iamInstanceProfileAssociation = iamInstanceProfileAssociation;

  ReplaceIamInstanceProfileAssociationResultBuilder();

  ReplaceIamInstanceProfileAssociationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iamInstanceProfileAssociation =
          $v.iamInstanceProfileAssociation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceIamInstanceProfileAssociationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceIamInstanceProfileAssociationResult;
  }

  @override
  void update(
      void Function(ReplaceIamInstanceProfileAssociationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceIamInstanceProfileAssociationResult build() => _build();

  _$ReplaceIamInstanceProfileAssociationResult _build() {
    _$ReplaceIamInstanceProfileAssociationResult _$result;
    try {
      _$result = _$v ??
          new _$ReplaceIamInstanceProfileAssociationResult._(
              iamInstanceProfileAssociation:
                  _iamInstanceProfileAssociation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfileAssociation';
        _iamInstanceProfileAssociation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplaceIamInstanceProfileAssociationResult',
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
