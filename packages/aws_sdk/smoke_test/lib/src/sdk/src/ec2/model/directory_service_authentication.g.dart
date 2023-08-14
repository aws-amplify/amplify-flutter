// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directory_service_authentication.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DirectoryServiceAuthentication extends DirectoryServiceAuthentication {
  @override
  final String? directoryId;

  factory _$DirectoryServiceAuthentication(
          [void Function(DirectoryServiceAuthenticationBuilder)? updates]) =>
      (new DirectoryServiceAuthenticationBuilder()..update(updates))._build();

  _$DirectoryServiceAuthentication._({this.directoryId}) : super._();

  @override
  DirectoryServiceAuthentication rebuild(
          void Function(DirectoryServiceAuthenticationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectoryServiceAuthenticationBuilder toBuilder() =>
      new DirectoryServiceAuthenticationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectoryServiceAuthentication &&
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

class DirectoryServiceAuthenticationBuilder
    implements
        Builder<DirectoryServiceAuthentication,
            DirectoryServiceAuthenticationBuilder> {
  _$DirectoryServiceAuthentication? _$v;

  String? _directoryId;
  String? get directoryId => _$this._directoryId;
  set directoryId(String? directoryId) => _$this._directoryId = directoryId;

  DirectoryServiceAuthenticationBuilder();

  DirectoryServiceAuthenticationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _directoryId = $v.directoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DirectoryServiceAuthentication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DirectoryServiceAuthentication;
  }

  @override
  void update(void Function(DirectoryServiceAuthenticationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DirectoryServiceAuthentication build() => _build();

  _$DirectoryServiceAuthentication _build() {
    final _$result =
        _$v ?? new _$DirectoryServiceAuthentication._(directoryId: directoryId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
