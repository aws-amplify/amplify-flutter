// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.list_tags_for_resource_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTagsForResourceResponse extends ListTagsForResourceResponse {
  @override
  final _i3.BuiltList<_i2.Tag>? tags;
  @override
  final String? nextToken;

  factory _$ListTagsForResourceResponse(
          [void Function(ListTagsForResourceResponseBuilder)? updates]) =>
      (new ListTagsForResourceResponseBuilder()..update(updates))._build();

  _$ListTagsForResourceResponse._({this.tags, this.nextToken}) : super._();

  @override
  ListTagsForResourceResponse rebuild(
          void Function(ListTagsForResourceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTagsForResourceResponseBuilder toBuilder() =>
      new ListTagsForResourceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTagsForResourceResponse &&
        tags == other.tags &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListTagsForResourceResponseBuilder
    implements
        Builder<ListTagsForResourceResponse,
            ListTagsForResourceResponseBuilder> {
  _$ListTagsForResourceResponse? _$v;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTagsForResourceResponseBuilder() {
    ListTagsForResourceResponse._init(this);
  }

  ListTagsForResourceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTagsForResourceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTagsForResourceResponse;
  }

  @override
  void update(void Function(ListTagsForResourceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTagsForResourceResponse build() => _build();

  _$ListTagsForResourceResponse _build() {
    _$ListTagsForResourceResponse _$result;
    try {
      _$result = _$v ??
          new _$ListTagsForResourceResponse._(
              tags: _tags?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTagsForResourceResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
