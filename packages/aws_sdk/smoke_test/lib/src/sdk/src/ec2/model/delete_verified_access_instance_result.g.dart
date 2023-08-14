// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_instance_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessInstanceResult
    extends DeleteVerifiedAccessInstanceResult {
  @override
  final VerifiedAccessInstance? verifiedAccessInstance;

  factory _$DeleteVerifiedAccessInstanceResult(
          [void Function(DeleteVerifiedAccessInstanceResultBuilder)?
              updates]) =>
      (new DeleteVerifiedAccessInstanceResultBuilder()..update(updates))
          ._build();

  _$DeleteVerifiedAccessInstanceResult._({this.verifiedAccessInstance})
      : super._();

  @override
  DeleteVerifiedAccessInstanceResult rebuild(
          void Function(DeleteVerifiedAccessInstanceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessInstanceResultBuilder toBuilder() =>
      new DeleteVerifiedAccessInstanceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessInstanceResult &&
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

class DeleteVerifiedAccessInstanceResultBuilder
    implements
        Builder<DeleteVerifiedAccessInstanceResult,
            DeleteVerifiedAccessInstanceResultBuilder> {
  _$DeleteVerifiedAccessInstanceResult? _$v;

  VerifiedAccessInstanceBuilder? _verifiedAccessInstance;
  VerifiedAccessInstanceBuilder get verifiedAccessInstance =>
      _$this._verifiedAccessInstance ??= new VerifiedAccessInstanceBuilder();
  set verifiedAccessInstance(
          VerifiedAccessInstanceBuilder? verifiedAccessInstance) =>
      _$this._verifiedAccessInstance = verifiedAccessInstance;

  DeleteVerifiedAccessInstanceResultBuilder();

  DeleteVerifiedAccessInstanceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstance = $v.verifiedAccessInstance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessInstanceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessInstanceResult;
  }

  @override
  void update(
      void Function(DeleteVerifiedAccessInstanceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessInstanceResult build() => _build();

  _$DeleteVerifiedAccessInstanceResult _build() {
    _$DeleteVerifiedAccessInstanceResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVerifiedAccessInstanceResult._(
              verifiedAccessInstance: _verifiedAccessInstance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessInstance';
        _verifiedAccessInstance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVerifiedAccessInstanceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
