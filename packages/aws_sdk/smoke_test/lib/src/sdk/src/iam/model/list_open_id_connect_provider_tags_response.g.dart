// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_open_id_connect_provider_tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListOpenIdConnectProviderTagsResponse
    extends ListOpenIdConnectProviderTagsResponse {
  @override
  final _i2.BuiltList<Tag> tags;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListOpenIdConnectProviderTagsResponse(
          [void Function(ListOpenIdConnectProviderTagsResponseBuilder)?
              updates]) =>
      (new ListOpenIdConnectProviderTagsResponseBuilder()..update(updates))
          ._build();

  _$ListOpenIdConnectProviderTagsResponse._(
      {required this.tags, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'ListOpenIdConnectProviderTagsResponse', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListOpenIdConnectProviderTagsResponse', 'isTruncated');
  }

  @override
  ListOpenIdConnectProviderTagsResponse rebuild(
          void Function(ListOpenIdConnectProviderTagsResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListOpenIdConnectProviderTagsResponseBuilder toBuilder() =>
      new ListOpenIdConnectProviderTagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListOpenIdConnectProviderTagsResponse &&
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

class ListOpenIdConnectProviderTagsResponseBuilder
    implements
        Builder<ListOpenIdConnectProviderTagsResponse,
            ListOpenIdConnectProviderTagsResponseBuilder> {
  _$ListOpenIdConnectProviderTagsResponse? _$v;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListOpenIdConnectProviderTagsResponseBuilder() {
    ListOpenIdConnectProviderTagsResponse._init(this);
  }

  ListOpenIdConnectProviderTagsResponseBuilder get _$this {
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
  void replace(ListOpenIdConnectProviderTagsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListOpenIdConnectProviderTagsResponse;
  }

  @override
  void update(
      void Function(ListOpenIdConnectProviderTagsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListOpenIdConnectProviderTagsResponse build() => _build();

  _$ListOpenIdConnectProviderTagsResponse _build() {
    _$ListOpenIdConnectProviderTagsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListOpenIdConnectProviderTagsResponse._(
              tags: tags.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListOpenIdConnectProviderTagsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListOpenIdConnectProviderTagsResponse',
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
