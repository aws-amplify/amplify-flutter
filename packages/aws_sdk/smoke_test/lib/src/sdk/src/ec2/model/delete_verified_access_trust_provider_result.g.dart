// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_trust_provider_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessTrustProviderResult
    extends DeleteVerifiedAccessTrustProviderResult {
  @override
  final VerifiedAccessTrustProvider? verifiedAccessTrustProvider;

  factory _$DeleteVerifiedAccessTrustProviderResult(
          [void Function(DeleteVerifiedAccessTrustProviderResultBuilder)?
              updates]) =>
      (new DeleteVerifiedAccessTrustProviderResultBuilder()..update(updates))
          ._build();

  _$DeleteVerifiedAccessTrustProviderResult._(
      {this.verifiedAccessTrustProvider})
      : super._();

  @override
  DeleteVerifiedAccessTrustProviderResult rebuild(
          void Function(DeleteVerifiedAccessTrustProviderResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessTrustProviderResultBuilder toBuilder() =>
      new DeleteVerifiedAccessTrustProviderResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessTrustProviderResult &&
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

class DeleteVerifiedAccessTrustProviderResultBuilder
    implements
        Builder<DeleteVerifiedAccessTrustProviderResult,
            DeleteVerifiedAccessTrustProviderResultBuilder> {
  _$DeleteVerifiedAccessTrustProviderResult? _$v;

  VerifiedAccessTrustProviderBuilder? _verifiedAccessTrustProvider;
  VerifiedAccessTrustProviderBuilder get verifiedAccessTrustProvider =>
      _$this._verifiedAccessTrustProvider ??=
          new VerifiedAccessTrustProviderBuilder();
  set verifiedAccessTrustProvider(
          VerifiedAccessTrustProviderBuilder? verifiedAccessTrustProvider) =>
      _$this._verifiedAccessTrustProvider = verifiedAccessTrustProvider;

  DeleteVerifiedAccessTrustProviderResultBuilder();

  DeleteVerifiedAccessTrustProviderResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProvider =
          $v.verifiedAccessTrustProvider?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessTrustProviderResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessTrustProviderResult;
  }

  @override
  void update(
      void Function(DeleteVerifiedAccessTrustProviderResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessTrustProviderResult build() => _build();

  _$DeleteVerifiedAccessTrustProviderResult _build() {
    _$DeleteVerifiedAccessTrustProviderResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVerifiedAccessTrustProviderResult._(
              verifiedAccessTrustProvider:
                  _verifiedAccessTrustProvider?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProvider';
        _verifiedAccessTrustProvider?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVerifiedAccessTrustProviderResult',
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
