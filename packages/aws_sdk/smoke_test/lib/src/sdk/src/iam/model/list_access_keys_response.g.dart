// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_access_keys_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListAccessKeysResponse extends ListAccessKeysResponse {
  @override
  final _i3.BuiltList<_i2.AccessKeyMetadata> accessKeyMetadata;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListAccessKeysResponse(
          [void Function(ListAccessKeysResponseBuilder)? updates]) =>
      (new ListAccessKeysResponseBuilder()..update(updates))._build();

  _$ListAccessKeysResponse._(
      {required this.accessKeyMetadata, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyMetadata, r'ListAccessKeysResponse', 'accessKeyMetadata');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListAccessKeysResponse', 'isTruncated');
  }

  @override
  ListAccessKeysResponse rebuild(
          void Function(ListAccessKeysResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListAccessKeysResponseBuilder toBuilder() =>
      new ListAccessKeysResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListAccessKeysResponse &&
        accessKeyMetadata == other.accessKeyMetadata &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyMetadata.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListAccessKeysResponseBuilder
    implements Builder<ListAccessKeysResponse, ListAccessKeysResponseBuilder> {
  _$ListAccessKeysResponse? _$v;

  _i3.ListBuilder<_i2.AccessKeyMetadata>? _accessKeyMetadata;
  _i3.ListBuilder<_i2.AccessKeyMetadata> get accessKeyMetadata =>
      _$this._accessKeyMetadata ??=
          new _i3.ListBuilder<_i2.AccessKeyMetadata>();
  set accessKeyMetadata(
          _i3.ListBuilder<_i2.AccessKeyMetadata>? accessKeyMetadata) =>
      _$this._accessKeyMetadata = accessKeyMetadata;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListAccessKeysResponseBuilder() {
    ListAccessKeysResponse._init(this);
  }

  ListAccessKeysResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyMetadata = $v.accessKeyMetadata.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListAccessKeysResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListAccessKeysResponse;
  }

  @override
  void update(void Function(ListAccessKeysResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListAccessKeysResponse build() => _build();

  _$ListAccessKeysResponse _build() {
    _$ListAccessKeysResponse _$result;
    try {
      _$result = _$v ??
          new _$ListAccessKeysResponse._(
              accessKeyMetadata: accessKeyMetadata.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListAccessKeysResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessKeyMetadata';
        accessKeyMetadata.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListAccessKeysResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
