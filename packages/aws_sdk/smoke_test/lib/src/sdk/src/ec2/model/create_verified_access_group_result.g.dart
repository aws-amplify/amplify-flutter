// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_group_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessGroupResult
    extends CreateVerifiedAccessGroupResult {
  @override
  final VerifiedAccessGroup? verifiedAccessGroup;

  factory _$CreateVerifiedAccessGroupResult(
          [void Function(CreateVerifiedAccessGroupResultBuilder)? updates]) =>
      (new CreateVerifiedAccessGroupResultBuilder()..update(updates))._build();

  _$CreateVerifiedAccessGroupResult._({this.verifiedAccessGroup}) : super._();

  @override
  CreateVerifiedAccessGroupResult rebuild(
          void Function(CreateVerifiedAccessGroupResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessGroupResultBuilder toBuilder() =>
      new CreateVerifiedAccessGroupResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessGroupResult &&
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

class CreateVerifiedAccessGroupResultBuilder
    implements
        Builder<CreateVerifiedAccessGroupResult,
            CreateVerifiedAccessGroupResultBuilder> {
  _$CreateVerifiedAccessGroupResult? _$v;

  VerifiedAccessGroupBuilder? _verifiedAccessGroup;
  VerifiedAccessGroupBuilder get verifiedAccessGroup =>
      _$this._verifiedAccessGroup ??= new VerifiedAccessGroupBuilder();
  set verifiedAccessGroup(VerifiedAccessGroupBuilder? verifiedAccessGroup) =>
      _$this._verifiedAccessGroup = verifiedAccessGroup;

  CreateVerifiedAccessGroupResultBuilder();

  CreateVerifiedAccessGroupResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessGroup = $v.verifiedAccessGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessGroupResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessGroupResult;
  }

  @override
  void update(void Function(CreateVerifiedAccessGroupResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessGroupResult build() => _build();

  _$CreateVerifiedAccessGroupResult _build() {
    _$CreateVerifiedAccessGroupResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessGroupResult._(
              verifiedAccessGroup: _verifiedAccessGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessGroup';
        _verifiedAccessGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessGroupResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
