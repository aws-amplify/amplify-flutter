// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_verified_access_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVerifiedAccessEndpointResult
    extends ModifyVerifiedAccessEndpointResult {
  @override
  final VerifiedAccessEndpoint? verifiedAccessEndpoint;

  factory _$ModifyVerifiedAccessEndpointResult(
          [void Function(ModifyVerifiedAccessEndpointResultBuilder)?
              updates]) =>
      (new ModifyVerifiedAccessEndpointResultBuilder()..update(updates))
          ._build();

  _$ModifyVerifiedAccessEndpointResult._({this.verifiedAccessEndpoint})
      : super._();

  @override
  ModifyVerifiedAccessEndpointResult rebuild(
          void Function(ModifyVerifiedAccessEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVerifiedAccessEndpointResultBuilder toBuilder() =>
      new ModifyVerifiedAccessEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVerifiedAccessEndpointResult &&
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

class ModifyVerifiedAccessEndpointResultBuilder
    implements
        Builder<ModifyVerifiedAccessEndpointResult,
            ModifyVerifiedAccessEndpointResultBuilder> {
  _$ModifyVerifiedAccessEndpointResult? _$v;

  VerifiedAccessEndpointBuilder? _verifiedAccessEndpoint;
  VerifiedAccessEndpointBuilder get verifiedAccessEndpoint =>
      _$this._verifiedAccessEndpoint ??= new VerifiedAccessEndpointBuilder();
  set verifiedAccessEndpoint(
          VerifiedAccessEndpointBuilder? verifiedAccessEndpoint) =>
      _$this._verifiedAccessEndpoint = verifiedAccessEndpoint;

  ModifyVerifiedAccessEndpointResultBuilder();

  ModifyVerifiedAccessEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpoint = $v.verifiedAccessEndpoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVerifiedAccessEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVerifiedAccessEndpointResult;
  }

  @override
  void update(
      void Function(ModifyVerifiedAccessEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVerifiedAccessEndpointResult build() => _build();

  _$ModifyVerifiedAccessEndpointResult _build() {
    _$ModifyVerifiedAccessEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyVerifiedAccessEndpointResult._(
              verifiedAccessEndpoint: _verifiedAccessEndpoint?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessEndpoint';
        _verifiedAccessEndpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVerifiedAccessEndpointResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
