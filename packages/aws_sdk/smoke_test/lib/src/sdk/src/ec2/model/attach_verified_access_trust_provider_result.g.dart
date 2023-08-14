// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attach_verified_access_trust_provider_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachVerifiedAccessTrustProviderResult
    extends AttachVerifiedAccessTrustProviderResult {
  @override
  final VerifiedAccessTrustProvider? verifiedAccessTrustProvider;
  @override
  final VerifiedAccessInstance? verifiedAccessInstance;

  factory _$AttachVerifiedAccessTrustProviderResult(
          [void Function(AttachVerifiedAccessTrustProviderResultBuilder)?
              updates]) =>
      (new AttachVerifiedAccessTrustProviderResultBuilder()..update(updates))
          ._build();

  _$AttachVerifiedAccessTrustProviderResult._(
      {this.verifiedAccessTrustProvider, this.verifiedAccessInstance})
      : super._();

  @override
  AttachVerifiedAccessTrustProviderResult rebuild(
          void Function(AttachVerifiedAccessTrustProviderResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachVerifiedAccessTrustProviderResultBuilder toBuilder() =>
      new AttachVerifiedAccessTrustProviderResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachVerifiedAccessTrustProviderResult &&
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

class AttachVerifiedAccessTrustProviderResultBuilder
    implements
        Builder<AttachVerifiedAccessTrustProviderResult,
            AttachVerifiedAccessTrustProviderResultBuilder> {
  _$AttachVerifiedAccessTrustProviderResult? _$v;

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

  AttachVerifiedAccessTrustProviderResultBuilder();

  AttachVerifiedAccessTrustProviderResultBuilder get _$this {
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
  void replace(AttachVerifiedAccessTrustProviderResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachVerifiedAccessTrustProviderResult;
  }

  @override
  void update(
      void Function(AttachVerifiedAccessTrustProviderResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachVerifiedAccessTrustProviderResult build() => _build();

  _$AttachVerifiedAccessTrustProviderResult _build() {
    _$AttachVerifiedAccessTrustProviderResult _$result;
    try {
      _$result = _$v ??
          new _$AttachVerifiedAccessTrustProviderResult._(
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
            r'AttachVerifiedAccessTrustProviderResult',
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
