// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_tags_ofresource_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTagsOfresourceOutput extends ListTagsOfresourceOutput {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<_i3.Tag>? tags;

  factory _$ListTagsOfresourceOutput(
          [void Function(ListTagsOfresourceOutputBuilder)? updates]) =>
      (new ListTagsOfresourceOutputBuilder()..update(updates))._build();

  _$ListTagsOfresourceOutput._({this.nextToken, this.tags}) : super._();

  @override
  ListTagsOfresourceOutput rebuild(
          void Function(ListTagsOfresourceOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTagsOfresourceOutputBuilder toBuilder() =>
      new ListTagsOfresourceOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTagsOfresourceOutput &&
        nextToken == other.nextToken &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextToken.hashCode), tags.hashCode));
  }
}

class ListTagsOfresourceOutputBuilder
    implements
        Builder<ListTagsOfresourceOutput, ListTagsOfresourceOutputBuilder> {
  _$ListTagsOfresourceOutput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<_i3.Tag>? _tags;
  _i2.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i2.ListBuilder<_i3.Tag>();
  set tags(_i2.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  ListTagsOfresourceOutputBuilder() {
    ListTagsOfresourceOutput._init(this);
  }

  ListTagsOfresourceOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTagsOfresourceOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTagsOfresourceOutput;
  }

  @override
  void update(void Function(ListTagsOfresourceOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTagsOfresourceOutput build() => _build();

  _$ListTagsOfresourceOutput _build() {
    _$ListTagsOfresourceOutput _$result;
    try {
      _$result = _$v ??
          new _$ListTagsOfresourceOutput._(
              nextToken: nextToken, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListTagsOfresourceOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
