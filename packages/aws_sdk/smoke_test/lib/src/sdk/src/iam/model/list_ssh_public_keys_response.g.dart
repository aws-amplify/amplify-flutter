// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_ssh_public_keys_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSshPublicKeysResponse extends ListSshPublicKeysResponse {
  @override
  final _i3.BuiltList<_i2.SshPublicKeyMetadata>? sshPublicKeys;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListSshPublicKeysResponse(
          [void Function(ListSshPublicKeysResponseBuilder)? updates]) =>
      (new ListSshPublicKeysResponseBuilder()..update(updates))._build();

  _$ListSshPublicKeysResponse._(
      {this.sshPublicKeys, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListSshPublicKeysResponse', 'isTruncated');
  }

  @override
  ListSshPublicKeysResponse rebuild(
          void Function(ListSshPublicKeysResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSshPublicKeysResponseBuilder toBuilder() =>
      new ListSshPublicKeysResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSshPublicKeysResponse &&
        sshPublicKeys == other.sshPublicKeys &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sshPublicKeys.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSshPublicKeysResponseBuilder
    implements
        Builder<ListSshPublicKeysResponse, ListSshPublicKeysResponseBuilder> {
  _$ListSshPublicKeysResponse? _$v;

  _i3.ListBuilder<_i2.SshPublicKeyMetadata>? _sshPublicKeys;
  _i3.ListBuilder<_i2.SshPublicKeyMetadata> get sshPublicKeys =>
      _$this._sshPublicKeys ??= new _i3.ListBuilder<_i2.SshPublicKeyMetadata>();
  set sshPublicKeys(_i3.ListBuilder<_i2.SshPublicKeyMetadata>? sshPublicKeys) =>
      _$this._sshPublicKeys = sshPublicKeys;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListSshPublicKeysResponseBuilder() {
    ListSshPublicKeysResponse._init(this);
  }

  ListSshPublicKeysResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sshPublicKeys = $v.sshPublicKeys?.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSshPublicKeysResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSshPublicKeysResponse;
  }

  @override
  void update(void Function(ListSshPublicKeysResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSshPublicKeysResponse build() => _build();

  _$ListSshPublicKeysResponse _build() {
    _$ListSshPublicKeysResponse _$result;
    try {
      _$result = _$v ??
          new _$ListSshPublicKeysResponse._(
              sshPublicKeys: _sshPublicKeys?.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListSshPublicKeysResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sshPublicKeys';
        _sshPublicKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListSshPublicKeysResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
