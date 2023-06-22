// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_saml_provider_tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSamlProviderTagsResponse extends ListSamlProviderTagsResponse {
  @override
  final _i3.BuiltList<_i2.Tag> tags;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListSamlProviderTagsResponse(
          [void Function(ListSamlProviderTagsResponseBuilder)? updates]) =>
      (new ListSamlProviderTagsResponseBuilder()..update(updates))._build();

  _$ListSamlProviderTagsResponse._(
      {required this.tags, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'ListSamlProviderTagsResponse', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListSamlProviderTagsResponse', 'isTruncated');
  }

  @override
  ListSamlProviderTagsResponse rebuild(
          void Function(ListSamlProviderTagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSamlProviderTagsResponseBuilder toBuilder() =>
      new ListSamlProviderTagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSamlProviderTagsResponse &&
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

class ListSamlProviderTagsResponseBuilder
    implements
        Builder<ListSamlProviderTagsResponse,
            ListSamlProviderTagsResponseBuilder> {
  _$ListSamlProviderTagsResponse? _$v;

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

  ListSamlProviderTagsResponseBuilder() {
    ListSamlProviderTagsResponse._init(this);
  }

  ListSamlProviderTagsResponseBuilder get _$this {
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
  void replace(ListSamlProviderTagsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSamlProviderTagsResponse;
  }

  @override
  void update(void Function(ListSamlProviderTagsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSamlProviderTagsResponse build() => _build();

  _$ListSamlProviderTagsResponse _build() {
    _$ListSamlProviderTagsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListSamlProviderTagsResponse._(
              tags: tags.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListSamlProviderTagsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListSamlProviderTagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
