// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_trust_provider_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessTrustProviderResult
    extends CreateVerifiedAccessTrustProviderResult {
  @override
  final VerifiedAccessTrustProvider? verifiedAccessTrustProvider;

  factory _$CreateVerifiedAccessTrustProviderResult(
          [void Function(CreateVerifiedAccessTrustProviderResultBuilder)?
              updates]) =>
      (new CreateVerifiedAccessTrustProviderResultBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessTrustProviderResult._(
      {this.verifiedAccessTrustProvider})
      : super._();

  @override
  CreateVerifiedAccessTrustProviderResult rebuild(
          void Function(CreateVerifiedAccessTrustProviderResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessTrustProviderResultBuilder toBuilder() =>
      new CreateVerifiedAccessTrustProviderResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessTrustProviderResult &&
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

class CreateVerifiedAccessTrustProviderResultBuilder
    implements
        Builder<CreateVerifiedAccessTrustProviderResult,
            CreateVerifiedAccessTrustProviderResultBuilder> {
  _$CreateVerifiedAccessTrustProviderResult? _$v;

  VerifiedAccessTrustProviderBuilder? _verifiedAccessTrustProvider;
  VerifiedAccessTrustProviderBuilder get verifiedAccessTrustProvider =>
      _$this._verifiedAccessTrustProvider ??=
          new VerifiedAccessTrustProviderBuilder();
  set verifiedAccessTrustProvider(
          VerifiedAccessTrustProviderBuilder? verifiedAccessTrustProvider) =>
      _$this._verifiedAccessTrustProvider = verifiedAccessTrustProvider;

  CreateVerifiedAccessTrustProviderResultBuilder();

  CreateVerifiedAccessTrustProviderResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProvider =
          $v.verifiedAccessTrustProvider?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessTrustProviderResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessTrustProviderResult;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessTrustProviderResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessTrustProviderResult build() => _build();

  _$CreateVerifiedAccessTrustProviderResult _build() {
    _$CreateVerifiedAccessTrustProviderResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessTrustProviderResult._(
              verifiedAccessTrustProvider:
                  _verifiedAccessTrustProvider?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProvider';
        _verifiedAccessTrustProvider?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessTrustProviderResult',
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
