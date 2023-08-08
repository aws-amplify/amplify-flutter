// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_server_certificate_tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListServerCertificateTagsResponse
    extends ListServerCertificateTagsResponse {
  @override
  final _i3.BuiltList<_i2.Tag> tags;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListServerCertificateTagsResponse(
          [void Function(ListServerCertificateTagsResponseBuilder)? updates]) =>
      (new ListServerCertificateTagsResponseBuilder()..update(updates))
          ._build();

  _$ListServerCertificateTagsResponse._(
      {required this.tags, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'ListServerCertificateTagsResponse', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListServerCertificateTagsResponse', 'isTruncated');
  }

  @override
  ListServerCertificateTagsResponse rebuild(
          void Function(ListServerCertificateTagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListServerCertificateTagsResponseBuilder toBuilder() =>
      new ListServerCertificateTagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListServerCertificateTagsResponse &&
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

class ListServerCertificateTagsResponseBuilder
    implements
        Builder<ListServerCertificateTagsResponse,
            ListServerCertificateTagsResponseBuilder> {
  _$ListServerCertificateTagsResponse? _$v;

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

  ListServerCertificateTagsResponseBuilder() {
    ListServerCertificateTagsResponse._init(this);
  }

  ListServerCertificateTagsResponseBuilder get _$this {
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
  void replace(ListServerCertificateTagsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListServerCertificateTagsResponse;
  }

  @override
  void update(
      void Function(ListServerCertificateTagsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListServerCertificateTagsResponse build() => _build();

  _$ListServerCertificateTagsResponse _build() {
    _$ListServerCertificateTagsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListServerCertificateTagsResponse._(
              tags: tags.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListServerCertificateTagsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListServerCertificateTagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
