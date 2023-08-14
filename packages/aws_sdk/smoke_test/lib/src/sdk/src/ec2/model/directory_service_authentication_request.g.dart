// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directory_service_authentication_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DirectoryServiceAuthenticationRequest
    extends DirectoryServiceAuthenticationRequest {
  @override
  final String? directoryId;

  factory _$DirectoryServiceAuthenticationRequest(
          [void Function(DirectoryServiceAuthenticationRequestBuilder)?
              updates]) =>
      (new DirectoryServiceAuthenticationRequestBuilder()..update(updates))
          ._build();

  _$DirectoryServiceAuthenticationRequest._({this.directoryId}) : super._();

  @override
  DirectoryServiceAuthenticationRequest rebuild(
          void Function(DirectoryServiceAuthenticationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectoryServiceAuthenticationRequestBuilder toBuilder() =>
      new DirectoryServiceAuthenticationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectoryServiceAuthenticationRequest &&
        directoryId == other.directoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, directoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DirectoryServiceAuthenticationRequestBuilder
    implements
        Builder<DirectoryServiceAuthenticationRequest,
            DirectoryServiceAuthenticationRequestBuilder> {
  _$DirectoryServiceAuthenticationRequest? _$v;

  String? _directoryId;
  String? get directoryId => _$this._directoryId;
  set directoryId(String? directoryId) => _$this._directoryId = directoryId;

  DirectoryServiceAuthenticationRequestBuilder();

  DirectoryServiceAuthenticationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _directoryId = $v.directoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectoryServiceAuthenticationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DirectoryServiceAuthenticationRequest;
  }

  @override
  void update(
      void Function(DirectoryServiceAuthenticationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DirectoryServiceAuthenticationRequest build() => _build();

  _$DirectoryServiceAuthenticationRequest _build() {
    final _$result = _$v ??
        new _$DirectoryServiceAuthenticationRequest._(directoryId: directoryId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
