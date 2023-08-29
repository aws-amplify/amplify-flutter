// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_group_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessGroupResult
    extends DeleteVerifiedAccessGroupResult {
  @override
  final VerifiedAccessGroup? verifiedAccessGroup;

  factory _$DeleteVerifiedAccessGroupResult(
          [void Function(DeleteVerifiedAccessGroupResultBuilder)? updates]) =>
      (new DeleteVerifiedAccessGroupResultBuilder()..update(updates))._build();

  _$DeleteVerifiedAccessGroupResult._({this.verifiedAccessGroup}) : super._();

  @override
  DeleteVerifiedAccessGroupResult rebuild(
          void Function(DeleteVerifiedAccessGroupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessGroupResultBuilder toBuilder() =>
      new DeleteVerifiedAccessGroupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessGroupResult &&
        verifiedAccessGroup == other.verifiedAccessGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVerifiedAccessGroupResultBuilder
    implements
        Builder<DeleteVerifiedAccessGroupResult,
            DeleteVerifiedAccessGroupResultBuilder> {
  _$DeleteVerifiedAccessGroupResult? _$v;

  VerifiedAccessGroupBuilder? _verifiedAccessGroup;
  VerifiedAccessGroupBuilder get verifiedAccessGroup =>
      _$this._verifiedAccessGroup ??= new VerifiedAccessGroupBuilder();
  set verifiedAccessGroup(VerifiedAccessGroupBuilder? verifiedAccessGroup) =>
      _$this._verifiedAccessGroup = verifiedAccessGroup;

  DeleteVerifiedAccessGroupResultBuilder();

  DeleteVerifiedAccessGroupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroup = $v.verifiedAccessGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessGroupResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessGroupResult;
  }

  @override
  void update(void Function(DeleteVerifiedAccessGroupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessGroupResult build() => _build();

  _$DeleteVerifiedAccessGroupResult _build() {
    _$DeleteVerifiedAccessGroupResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVerifiedAccessGroupResult._(
              verifiedAccessGroup: _verifiedAccessGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessGroup';
        _verifiedAccessGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVerifiedAccessGroupResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
