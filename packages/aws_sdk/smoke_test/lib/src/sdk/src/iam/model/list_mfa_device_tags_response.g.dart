// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_mfa_device_tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListMfaDeviceTagsResponse extends ListMfaDeviceTagsResponse {
  @override
  final _i3.BuiltList<_i2.Tag> tags;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListMfaDeviceTagsResponse(
          [void Function(ListMfaDeviceTagsResponseBuilder)? updates]) =>
      (new ListMfaDeviceTagsResponseBuilder()..update(updates))._build();

  _$ListMfaDeviceTagsResponse._(
      {required this.tags, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'ListMfaDeviceTagsResponse', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListMfaDeviceTagsResponse', 'isTruncated');
  }

  @override
  ListMfaDeviceTagsResponse rebuild(
          void Function(ListMfaDeviceTagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListMfaDeviceTagsResponseBuilder toBuilder() =>
      new ListMfaDeviceTagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListMfaDeviceTagsResponse &&
        tags == other.tags &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListMfaDeviceTagsResponseBuilder
    implements
        Builder<ListMfaDeviceTagsResponse, ListMfaDeviceTagsResponseBuilder> {
  _$ListMfaDeviceTagsResponse? _$v;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListMfaDeviceTagsResponseBuilder() {
    ListMfaDeviceTagsResponse._init(this);
  }

  ListMfaDeviceTagsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListMfaDeviceTagsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListMfaDeviceTagsResponse;
  }

  @override
  void update(void Function(ListMfaDeviceTagsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListMfaDeviceTagsResponse build() => _build();

  _$ListMfaDeviceTagsResponse _build() {
    _$ListMfaDeviceTagsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListMfaDeviceTagsResponse._(
              tags: tags.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListMfaDeviceTagsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListMfaDeviceTagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
