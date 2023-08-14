// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_verified_access_endpoint_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVerifiedAccessEndpointResult
    extends DeleteVerifiedAccessEndpointResult {
  @override
  final VerifiedAccessEndpoint? verifiedAccessEndpoint;

  factory _$DeleteVerifiedAccessEndpointResult(
          [void Function(DeleteVerifiedAccessEndpointResultBuilder)?
              updates]) =>
      (new DeleteVerifiedAccessEndpointResultBuilder()..update(updates))
          ._build();

  _$DeleteVerifiedAccessEndpointResult._({this.verifiedAccessEndpoint})
      : super._();

  @override
  DeleteVerifiedAccessEndpointResult rebuild(
          void Function(DeleteVerifiedAccessEndpointResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVerifiedAccessEndpointResultBuilder toBuilder() =>
      new DeleteVerifiedAccessEndpointResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVerifiedAccessEndpointResult &&
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

class DeleteVerifiedAccessEndpointResultBuilder
    implements
        Builder<DeleteVerifiedAccessEndpointResult,
            DeleteVerifiedAccessEndpointResultBuilder> {
  _$DeleteVerifiedAccessEndpointResult? _$v;

  VerifiedAccessEndpointBuilder? _verifiedAccessEndpoint;
  VerifiedAccessEndpointBuilder get verifiedAccessEndpoint =>
      _$this._verifiedAccessEndpoint ??= new VerifiedAccessEndpointBuilder();
  set verifiedAccessEndpoint(
          VerifiedAccessEndpointBuilder? verifiedAccessEndpoint) =>
      _$this._verifiedAccessEndpoint = verifiedAccessEndpoint;

  DeleteVerifiedAccessEndpointResultBuilder();

  DeleteVerifiedAccessEndpointResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verifiedAccessEndpoint = $v.verifiedAccessEndpoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVerifiedAccessEndpointResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVerifiedAccessEndpointResult;
  }

  @override
  void update(
      void Function(DeleteVerifiedAccessEndpointResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVerifiedAccessEndpointResult build() => _build();

  _$DeleteVerifiedAccessEndpointResult _build() {
    _$DeleteVerifiedAccessEndpointResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteVerifiedAccessEndpointResult._(
              verifiedAccessEndpoint: _verifiedAccessEndpoint?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'verifiedAccessEndpoint';
        _verifiedAccessEndpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVerifiedAccessEndpointResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
