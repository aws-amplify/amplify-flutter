// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_instance_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessInstanceResult
    extends ModifyVerifiedAccessInstanceResult {
  @override
  final VerifiedAccessInstance? verifiedAccessInstance;

  factory _$ModifyVerifiedAccessInstanceResult(
          [void Function(ModifyVerifiedAccessInstanceResultBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessInstanceResultBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessInstanceResult._({this.verifiedAccessInstance})
      : super._();

  @override
  ModifyVerifiedAccessInstanceResult rebuild(
          void Function(ModifyVerifiedAccessInstanceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessInstanceResultBuilder toBuilder() =>
      new ModifyVerifiedAccessInstanceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessInstanceResult &&
        verifiedAccessInstance == other.verifiedAccessInstance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessInstance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessInstanceResultBuilder
    implements
        Builder<ModifyVerifiedAccessInstanceResult,
            ModifyVerifiedAccessInstanceResultBuilder> {
  _$ModifyVerifiedAccessInstanceResult? _$v;

  VerifiedAccessInstanceBuilder? _verifiedAccessInstance;
  VerifiedAccessInstanceBuilder get verifiedAccessInstance =>
      _$this._verifiedAccessInstance ??= new VerifiedAccessInstanceBuilder();
  set verifiedAccessInstance(
          VerifiedAccessInstanceBuilder? verifiedAccessInstance) =>
      _$this._verifiedAccessInstance = verifiedAccessInstance;

  ModifyVerifiedAccessInstanceResultBuilder();

  ModifyVerifiedAccessInstanceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstance = $v.verifiedAccessInstance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessInstanceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessInstanceResult;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessInstanceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessInstanceResult build() => _build();

  _$ModifyVerifiedAccessInstanceResult _build() {
    _$ModifyVerifiedAccessInstanceResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessInstanceResult._(
              verifiedAccessInstance: _verifiedAccessInstance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessInstance';
        _verifiedAccessInstance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessInstanceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
