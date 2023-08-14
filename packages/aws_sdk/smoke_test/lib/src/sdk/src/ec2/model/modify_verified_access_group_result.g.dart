// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_group_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessGroupResult
    extends ModifyVerifiedAccessGroupResult {
  @override
  final VerifiedAccessGroup? verifiedAccessGroup;

  factory _$ModifyVerifiedAccessGroupResult(
          [void Function(ModifyVerifiedAccessGroupResultBuilder)? updates]) =>
      (new ModifyVerifiedAccessGroupResultBuilder()..update(updates))._build();

  _$ModifyVerifiedAccessGroupResult._({this.verifiedAccessGroup}) : super._();

  @override
  ModifyVerifiedAccessGroupResult rebuild(
          void Function(ModifyVerifiedAccessGroupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessGroupResultBuilder toBuilder() =>
      new ModifyVerifiedAccessGroupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessGroupResult &&
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

class ModifyVerifiedAccessGroupResultBuilder
    implements
        Builder<ModifyVerifiedAccessGroupResult,
            ModifyVerifiedAccessGroupResultBuilder> {
  _$ModifyVerifiedAccessGroupResult? _$v;

  VerifiedAccessGroupBuilder? _verifiedAccessGroup;
  VerifiedAccessGroupBuilder get verifiedAccessGroup =>
      _$this._verifiedAccessGroup ??= new VerifiedAccessGroupBuilder();
  set verifiedAccessGroup(VerifiedAccessGroupBuilder? verifiedAccessGroup) =>
      _$this._verifiedAccessGroup = verifiedAccessGroup;

  ModifyVerifiedAccessGroupResultBuilder();

  ModifyVerifiedAccessGroupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroup = $v.verifiedAccessGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessGroupResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessGroupResult;
  }

  @override
  void update(void Function(ModifyVerifiedAccessGroupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessGroupResult build() => _build();

  _$ModifyVerifiedAccessGroupResult _build() {
    _$ModifyVerifiedAccessGroupResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessGroupResult._(
              verifiedAccessGroup: _verifiedAccessGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessGroup';
        _verifiedAccessGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessGroupResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
