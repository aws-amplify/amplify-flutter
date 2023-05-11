// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_tags_of_resource_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTagsOfResourceOutput extends ListTagsOfResourceOutput {
  @override
  final _i3.BuiltList<_i2.Tag>? tags;
  @override
  final String? nextToken;

  factory _$ListTagsOfResourceOutput(
          [void Function(ListTagsOfResourceOutputBuilder)? updates]) =>
      (new ListTagsOfResourceOutputBuilder()..update(updates))._build();

  _$ListTagsOfResourceOutput._({this.tags, this.nextToken}) : super._();

  @override
  ListTagsOfResourceOutput rebuild(
          void Function(ListTagsOfResourceOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTagsOfResourceOutputBuilder toBuilder() =>
      new ListTagsOfResourceOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTagsOfResourceOutput &&
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

class ListTagsOfResourceOutputBuilder
    implements
        Builder<ListTagsOfResourceOutput, ListTagsOfResourceOutputBuilder> {
  _$ListTagsOfResourceOutput? _$v;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  ListTagsOfResourceOutputBuilder() {
    ListTagsOfResourceOutput._init(this);
  }

  ListTagsOfResourceOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTagsOfResourceOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTagsOfResourceOutput;
  }

  @override
  void update(void Function(ListTagsOfResourceOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTagsOfResourceOutput build() => _build();

  _$ListTagsOfResourceOutput _build() {
    _$ListTagsOfResourceOutput _$result;
    try {
      _$result = _$v ??
          new _$ListTagsOfResourceOutput._(
              tags: _tags?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTagsOfResourceOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
