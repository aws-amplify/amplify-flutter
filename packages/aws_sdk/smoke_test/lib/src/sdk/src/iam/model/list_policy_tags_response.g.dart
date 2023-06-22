// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_policy_tags_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListPolicyTagsResponse extends ListPolicyTagsResponse {
  @override
  final _i3.BuiltList<_i2.Tag> tags;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListPolicyTagsResponse(
          [void Function(ListPolicyTagsResponseBuilder)? updates]) =>
      (new ListPolicyTagsResponseBuilder()..update(updates))._build();

  _$ListPolicyTagsResponse._(
      {required this.tags, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tags, r'ListPolicyTagsResponse', 'tags');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListPolicyTagsResponse', 'isTruncated');
  }

  @override
  ListPolicyTagsResponse rebuild(
          void Function(ListPolicyTagsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListPolicyTagsResponseBuilder toBuilder() =>
      new ListPolicyTagsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListPolicyTagsResponse &&
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

class ListPolicyTagsResponseBuilder
    implements Builder<ListPolicyTagsResponse, ListPolicyTagsResponseBuilder> {
  _$ListPolicyTagsResponse? _$v;

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

  ListPolicyTagsResponseBuilder() {
    ListPolicyTagsResponse._init(this);
  }

  ListPolicyTagsResponseBuilder get _$this {
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
  void replace(ListPolicyTagsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListPolicyTagsResponse;
  }

  @override
  void update(void Function(ListPolicyTagsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListPolicyTagsResponse build() => _build();

  _$ListPolicyTagsResponse _build() {
    _$ListPolicyTagsResponse _$result;
    try {
      _$result = _$v ??
          new _$ListPolicyTagsResponse._(
              tags: tags.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(
                  isTruncated, r'ListPolicyTagsResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        tags.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListPolicyTagsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
