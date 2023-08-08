// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_user_tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListUserTagsResponse extends ListUserTagsResponse {
  @override
  final _i3.BuiltList<_i2.Tag> tags;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListUserTagsResponse(
          [void Function(ListUserTagsResponseBuilder)? updates]) =>
      (new ListUserTagsResponseBuilder()..update(updates))._build();

  _$ListUserTagsResponse._(
      {required this.tags, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'ListUserTagsResponse', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListUserTagsResponse', 'isTruncated');
  }

  @override
  ListUserTagsResponse rebuild(
          void Function(ListUserTagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListUserTagsResponseBuilder toBuilder() =>
      new ListUserTagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListUserTagsResponse &&
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

class ListUserTagsResponseBuilder
    implements Builder<ListUserTagsResponse, ListUserTagsResponseBuilder> {
  _$ListUserTagsResponse? _$v;

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

  ListUserTagsResponseBuilder() {
    ListUserTagsResponse._init(this);
  }

  ListUserTagsResponseBuilder get _$this {
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
  void replace(ListUserTagsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListUserTagsResponse;
  }

  @override
  void update(void Function(ListUserTagsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListUserTagsResponse build() => _build();

  _$ListUserTagsResponse _build() {
    _$ListUserTagsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListUserTagsResponse._(
              tags: tags.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListUserTagsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListUserTagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
