// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_trust_provider_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessTrustProviderResult
    extends ModifyVerifiedAccessTrustProviderResult {
  @override
  final VerifiedAccessTrustProvider? verifiedAccessTrustProvider;

  factory _$ModifyVerifiedAccessTrustProviderResult(
          [void Function(ModifyVerifiedAccessTrustProviderResultBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessTrustProviderResultBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessTrustProviderResult._(
      {this.verifiedAccessTrustProvider})
      : super._();

  @override
  ModifyVerifiedAccessTrustProviderResult rebuild(
          void Function(ModifyVerifiedAccessTrustProviderResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessTrustProviderResultBuilder toBuilder() =>
      new ModifyVerifiedAccessTrustProviderResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessTrustProviderResult &&
        verifiedAccessTrustProvider == other.verifiedAccessTrustProvider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProvider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVerifiedAccessTrustProviderResultBuilder
    implements
        Builder<ModifyVerifiedAccessTrustProviderResult,
            ModifyVerifiedAccessTrustProviderResultBuilder> {
  _$ModifyVerifiedAccessTrustProviderResult? _$v;

  VerifiedAccessTrustProviderBuilder? _verifiedAccessTrustProvider;
  VerifiedAccessTrustProviderBuilder get verifiedAccessTrustProvider =>
      _$this._verifiedAccessTrustProvider ??=
          new VerifiedAccessTrustProviderBuilder();
  set verifiedAccessTrustProvider(
          VerifiedAccessTrustProviderBuilder? verifiedAccessTrustProvider) =>
      _$this._verifiedAccessTrustProvider = verifiedAccessTrustProvider;

  ModifyVerifiedAccessTrustProviderResultBuilder();

  ModifyVerifiedAccessTrustProviderResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProvider =
          $v.verifiedAccessTrustProvider?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessTrustProviderResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessTrustProviderResult;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessTrustProviderResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessTrustProviderResult build() => _build();

  _$ModifyVerifiedAccessTrustProviderResult _build() {
    _$ModifyVerifiedAccessTrustProviderResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessTrustProviderResult._(
              verifiedAccessTrustProvider:
                  _verifiedAccessTrustProvider?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProvider';
        _verifiedAccessTrustProvider?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessTrustProviderResult',
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
