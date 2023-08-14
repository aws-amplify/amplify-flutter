// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_instance_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessInstanceResult
    extends CreateVerifiedAccessInstanceResult {
  @override
  final VerifiedAccessInstance? verifiedAccessInstance;

  factory _$CreateVerifiedAccessInstanceResult(
          [void Function(CreateVerifiedAccessInstanceResultBuilder)?
              updates]) =>
      (new CreateVerifiedAccessInstanceResultBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessInstanceResult._({this.verifiedAccessInstance})
      : super._();

  @override
  CreateVerifiedAccessInstanceResult rebuild(
          void Function(CreateVerifiedAccessInstanceResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessInstanceResultBuilder toBuilder() =>
      new CreateVerifiedAccessInstanceResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessInstanceResult &&
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

class CreateVerifiedAccessInstanceResultBuilder
    implements
        Builder<CreateVerifiedAccessInstanceResult,
            CreateVerifiedAccessInstanceResultBuilder> {
  _$CreateVerifiedAccessInstanceResult? _$v;

  VerifiedAccessInstanceBuilder? _verifiedAccessInstance;
  VerifiedAccessInstanceBuilder get verifiedAccessInstance =>
      _$this._verifiedAccessInstance ??= new VerifiedAccessInstanceBuilder();
  set verifiedAccessInstance(
          VerifiedAccessInstanceBuilder? verifiedAccessInstance) =>
      _$this._verifiedAccessInstance = verifiedAccessInstance;

  CreateVerifiedAccessInstanceResultBuilder();

  CreateVerifiedAccessInstanceResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessInstance = $v.verifiedAccessInstance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessInstanceResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessInstanceResult;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessInstanceResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessInstanceResult build() => _build();

  _$CreateVerifiedAccessInstanceResult _build() {
    _$CreateVerifiedAccessInstanceResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessInstanceResult._(
              verifiedAccessInstance: _verifiedAccessInstance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessInstance';
        _verifiedAccessInstance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessInstanceResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
