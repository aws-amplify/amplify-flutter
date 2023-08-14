// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_verified_access_trust_provider_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachVerifiedAccessTrustProviderResult
    extends DetachVerifiedAccessTrustProviderResult {
  @override
  final VerifiedAccessTrustProvider? verifiedAccessTrustProvider;
  @override
  final VerifiedAccessInstance? verifiedAccessInstance;

  factory _$DetachVerifiedAccessTrustProviderResult(
          [void Function(DetachVerifiedAccessTrustProviderResultBuilder)?
              updates]) =>
      (new DetachVerifiedAccessTrustProviderResultBuilder()..update(updates))
          ._build();

  _$DetachVerifiedAccessTrustProviderResult._(
      {this.verifiedAccessTrustProvider, this.verifiedAccessInstance})
      : super._();

  @override
  DetachVerifiedAccessTrustProviderResult rebuild(
          void Function(DetachVerifiedAccessTrustProviderResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachVerifiedAccessTrustProviderResultBuilder toBuilder() =>
      new DetachVerifiedAccessTrustProviderResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachVerifiedAccessTrustProviderResult &&
        verifiedAccessTrustProvider == other.verifiedAccessTrustProvider &&
        verifiedAccessInstance == other.verifiedAccessInstance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProvider.hashCode);
    _$hash = $jc(_$hash, verifiedAccessInstance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachVerifiedAccessTrustProviderResultBuilder
    implements
        Builder<DetachVerifiedAccessTrustProviderResult,
            DetachVerifiedAccessTrustProviderResultBuilder> {
  _$DetachVerifiedAccessTrustProviderResult? _$v;

  VerifiedAccessTrustProviderBuilder? _verifiedAccessTrustProvider;
  VerifiedAccessTrustProviderBuilder get verifiedAccessTrustProvider =>
      _$this._verifiedAccessTrustProvider ??=
          new VerifiedAccessTrustProviderBuilder();
  set verifiedAccessTrustProvider(
          VerifiedAccessTrustProviderBuilder? verifiedAccessTrustProvider) =>
      _$this._verifiedAccessTrustProvider = verifiedAccessTrustProvider;

  VerifiedAccessInstanceBuilder? _verifiedAccessInstance;
  VerifiedAccessInstanceBuilder get verifiedAccessInstance =>
      _$this._verifiedAccessInstance ??= new VerifiedAccessInstanceBuilder();
  set verifiedAccessInstance(
          VerifiedAccessInstanceBuilder? verifiedAccessInstance) =>
      _$this._verifiedAccessInstance = verifiedAccessInstance;

  DetachVerifiedAccessTrustProviderResultBuilder();

  DetachVerifiedAccessTrustProviderResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProvider =
          $v.verifiedAccessTrustProvider?.toBuilder();
      _verifiedAccessInstance = $v.verifiedAccessInstance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachVerifiedAccessTrustProviderResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachVerifiedAccessTrustProviderResult;
  }

  @override
  void update(
      void Function(DetachVerifiedAccessTrustProviderResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachVerifiedAccessTrustProviderResult build() => _build();

  _$DetachVerifiedAccessTrustProviderResult _build() {
    _$DetachVerifiedAccessTrustProviderResult _$result;
    try {
      _$result = _$v ??
          new _$DetachVerifiedAccessTrustProviderResult._(
              verifiedAccessTrustProvider:
                  _verifiedAccessTrustProvider?.build(),
              verifiedAccessInstance: _verifiedAccessInstance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProvider';
        _verifiedAccessTrustProvider?.build();
        _$failedField = 'verifiedAccessInstance';
        _verifiedAccessInstance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DetachVerifiedAccessTrustProviderResult',
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
