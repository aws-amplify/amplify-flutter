// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.list_tags_of_resource_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListTagsOfResourceInput extends ListTagsOfResourceInput {
  @override
  final String? nextToken;
  @override
  final String resourceArn;

  factory _$ListTagsOfResourceInput(
          [void Function(ListTagsOfResourceInputBuilder)? updates]) =>
      (new ListTagsOfResourceInputBuilder()..update(updates))._build();

  _$ListTagsOfResourceInput._({this.nextToken, required this.resourceArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'ListTagsOfResourceInput', 'resourceArn');
  }

  @override
  ListTagsOfResourceInput rebuild(
          void Function(ListTagsOfResourceInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListTagsOfResourceInputBuilder toBuilder() =>
      new ListTagsOfResourceInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListTagsOfResourceInput &&
        nextToken == other.nextToken &&
        resourceArn == other.resourceArn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextToken.hashCode), resourceArn.hashCode));
  }
}

class ListTagsOfResourceInputBuilder
    implements
        Builder<ListTagsOfResourceInput, ListTagsOfResourceInputBuilder> {
  _$ListTagsOfResourceInput? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  ListTagsOfResourceInputBuilder() {
    ListTagsOfResourceInput._init(this);
  }

  ListTagsOfResourceInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _resourceArn = $v.resourceArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListTagsOfResourceInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListTagsOfResourceInput;
  }

  @override
  void update(void Function(ListTagsOfResourceInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListTagsOfResourceInput build() => _build();

  _$ListTagsOfResourceInput _build() {
    final _$result = _$v ??
        new _$ListTagsOfResourceInput._(
            nextToken: nextToken,
            resourceArn: BuiltValueNullFieldError.checkNotNull(
                resourceArn, r'ListTagsOfResourceInput', 'resourceArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
