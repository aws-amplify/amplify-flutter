// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.custom.model.nested_collections_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedCollectionsInput extends NestedCollectionsInput {
  @override
  final _i3.BuiltListMultimap<String, _i3.BuiltListMultimap<String, String>?>?
      mapOfListOfMapOfLists;

  factory _$NestedCollectionsInput(
          [void Function(NestedCollectionsInputBuilder)? updates]) =>
      (new NestedCollectionsInputBuilder()..update(updates))._build();

  _$NestedCollectionsInput._({this.mapOfListOfMapOfLists}) : super._();

  @override
  NestedCollectionsInput rebuild(
          void Function(NestedCollectionsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedCollectionsInputBuilder toBuilder() =>
      new NestedCollectionsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedCollectionsInput &&
        mapOfListOfMapOfLists == other.mapOfListOfMapOfLists;
  }

  @override
  int get hashCode {
    return $jf($jc(0, mapOfListOfMapOfLists.hashCode));
  }
}

class NestedCollectionsInputBuilder
    implements Builder<NestedCollectionsInput, NestedCollectionsInputBuilder> {
  _$NestedCollectionsInput? _$v;

  _i3.ListMultimapBuilder<String, _i3.BuiltListMultimap<String, String>?>?
      _mapOfListOfMapOfLists;
  _i3.ListMultimapBuilder<String, _i3.BuiltListMultimap<String, String>?>
      get mapOfListOfMapOfLists =>
          _$this._mapOfListOfMapOfLists ??= new _i3.ListMultimapBuilder<String,
              _i3.BuiltListMultimap<String, String>?>();
  set mapOfListOfMapOfLists(
          _i3.ListMultimapBuilder<String,
                  _i3.BuiltListMultimap<String, String>?>?
              mapOfListOfMapOfLists) =>
      _$this._mapOfListOfMapOfLists = mapOfListOfMapOfLists;

  NestedCollectionsInputBuilder() {
    NestedCollectionsInput._init(this);
  }

  NestedCollectionsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapOfListOfMapOfLists = $v.mapOfListOfMapOfLists?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedCollectionsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedCollectionsInput;
  }

  @override
  void update(void Function(NestedCollectionsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedCollectionsInput build() => _build();

  _$NestedCollectionsInput _build() {
    _$NestedCollectionsInput _$result;
    try {
      _$result = _$v ??
          new _$NestedCollectionsInput._(
              mapOfListOfMapOfLists: _mapOfListOfMapOfLists?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapOfListOfMapOfLists';
        _mapOfListOfMapOfLists?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NestedCollectionsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
