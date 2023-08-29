// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_verified_access_trust_providers_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVerifiedAccessTrustProvidersResult
    extends DescribeVerifiedAccessTrustProvidersResult {
  @override
  final _i2.BuiltList<VerifiedAccessTrustProvider>?
      verifiedAccessTrustProviders;
  @override
  final String? nextToken;

  factory _$DescribeVerifiedAccessTrustProvidersResult(
          [void Function(DescribeVerifiedAccessTrustProvidersResultBuilder)?
              updates]) =>
      (new DescribeVerifiedAccessTrustProvidersResultBuilder()..update(updates))
          ._build();

  _$DescribeVerifiedAccessTrustProvidersResult._(
      {this.verifiedAccessTrustProviders, this.nextToken})
      : super._();

  @override
  DescribeVerifiedAccessTrustProvidersResult rebuild(
          void Function(DescribeVerifiedAccessTrustProvidersResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVerifiedAccessTrustProvidersResultBuilder toBuilder() =>
      new DescribeVerifiedAccessTrustProvidersResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVerifiedAccessTrustProvidersResult &&
        verifiedAccessTrustProviders == other.verifiedAccessTrustProviders &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessTrustProviders.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVerifiedAccessTrustProvidersResultBuilder
    implements
        Builder<DescribeVerifiedAccessTrustProvidersResult,
            DescribeVerifiedAccessTrustProvidersResultBuilder> {
  _$DescribeVerifiedAccessTrustProvidersResult? _$v;

  _i2.ListBuilder<VerifiedAccessTrustProvider>? _verifiedAccessTrustProviders;
  _i2.ListBuilder<VerifiedAccessTrustProvider>
      get verifiedAccessTrustProviders =>
          _$this._verifiedAccessTrustProviders ??=
              new _i2.ListBuilder<VerifiedAccessTrustProvider>();
  set verifiedAccessTrustProviders(
          _i2.ListBuilder<VerifiedAccessTrustProvider>?
              verifiedAccessTrustProviders) =>
      _$this._verifiedAccessTrustProviders = verifiedAccessTrustProviders;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVerifiedAccessTrustProvidersResultBuilder();

  DescribeVerifiedAccessTrustProvidersResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessTrustProviders =
          $v.verifiedAccessTrustProviders?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVerifiedAccessTrustProvidersResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVerifiedAccessTrustProvidersResult;
  }

  @override
  void update(
      void Function(DescribeVerifiedAccessTrustProvidersResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVerifiedAccessTrustProvidersResult build() => _build();

  _$DescribeVerifiedAccessTrustProvidersResult _build() {
    _$DescribeVerifiedAccessTrustProvidersResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVerifiedAccessTrustProvidersResult._(
              verifiedAccessTrustProviders:
                  _verifiedAccessTrustProviders?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessTrustProviders';
        _verifiedAccessTrustProviders?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVerifiedAccessTrustProvidersResult',
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
