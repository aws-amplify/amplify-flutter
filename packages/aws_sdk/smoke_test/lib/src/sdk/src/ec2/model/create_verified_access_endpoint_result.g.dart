// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_verified_access_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVerifiedAccessEndpointResult
    extends CreateVerifiedAccessEndpointResult {
  @override
  final VerifiedAccessEndpoint? verifiedAccessEndpoint;

  factory _$CreateVerifiedAccessEndpointResult(
          [void Function(CreateVerifiedAccessEndpointResultBuilder)?
              updates]) =>
      (new CreateVerifiedAccessEndpointResultBuilder()..update(updates))
          ._build();

  _$CreateVerifiedAccessEndpointResult._({this.verifiedAccessEndpoint})
      : super._();

  @override
  CreateVerifiedAccessEndpointResult rebuild(
          void Function(CreateVerifiedAccessEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVerifiedAccessEndpointResultBuilder toBuilder() =>
      new CreateVerifiedAccessEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVerifiedAccessEndpointResult &&
        verifiedAccessEndpoint == other.verifiedAccessEndpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verifiedAccessEndpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVerifiedAccessEndpointResultBuilder
    implements
        Builder<CreateVerifiedAccessEndpointResult,
            CreateVerifiedAccessEndpointResultBuilder> {
  _$CreateVerifiedAccessEndpointResult? _$v;

  VerifiedAccessEndpointBuilder? _verifiedAccessEndpoint;
  VerifiedAccessEndpointBuilder get verifiedAccessEndpoint =>
      _$this._verifiedAccessEndpoint ??= new VerifiedAccessEndpointBuilder();
  set verifiedAccessEndpoint(
          VerifiedAccessEndpointBuilder? verifiedAccessEndpoint) =>
      _$this._verifiedAccessEndpoint = verifiedAccessEndpoint;

  CreateVerifiedAccessEndpointResultBuilder();

  CreateVerifiedAccessEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpoint = $v.verifiedAccessEndpoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVerifiedAccessEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVerifiedAccessEndpointResult;
  }

  @override
  void update(
      void Function(CreateVerifiedAccessEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVerifiedAccessEndpointResult build() => _build();

  _$CreateVerifiedAccessEndpointResult _build() {
    _$CreateVerifiedAccessEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVerifiedAccessEndpointResult._(
              verifiedAccessEndpoint: _verifiedAccessEndpoint?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessEndpoint';
        _verifiedAccessEndpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVerifiedAccessEndpointResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
