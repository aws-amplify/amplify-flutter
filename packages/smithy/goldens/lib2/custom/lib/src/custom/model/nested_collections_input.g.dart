// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_collections_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedCollectionsInput extends NestedCollectionsInput {
  @override
  final _i3.BuiltListMultimap<String, _i3.BuiltListMultimap<String, String>?>?
  mapOfListOfMapOfLists;

  factory _$NestedCollectionsInput([
    void Function(NestedCollectionsInputBuilder)? updates,
  ]) => (NestedCollectionsInputBuilder()..update(updates))._build();

  _$NestedCollectionsInput._({this.mapOfListOfMapOfLists}) : super._();
  @override
  NestedCollectionsInput rebuild(
    void Function(NestedCollectionsInputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NestedCollectionsInputBuilder toBuilder() =>
      NestedCollectionsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedCollectionsInput &&
        mapOfListOfMapOfLists == other.mapOfListOfMapOfLists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mapOfListOfMapOfLists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NestedCollectionsInputBuilder
    implements Builder<NestedCollectionsInput, NestedCollectionsInputBuilder> {
  _$NestedCollectionsInput? _$v;

  _i3.ListMultimapBuilder<String, _i3.BuiltListMultimap<String, String>?>?
  _mapOfListOfMapOfLists;
  _i3.ListMultimapBuilder<String, _i3.BuiltListMultimap<String, String>?>
  get mapOfListOfMapOfLists => _$this._mapOfListOfMapOfLists ??=
      _i3.ListMultimapBuilder<String, _i3.BuiltListMultimap<String, String>?>();
  set mapOfListOfMapOfLists(
    _i3.ListMultimapBuilder<String, _i3.BuiltListMultimap<String, String>?>?
    mapOfListOfMapOfLists,
  ) => _$this._mapOfListOfMapOfLists = mapOfListOfMapOfLists;

  NestedCollectionsInputBuilder();

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
      _$result =
          _$v ??
          _$NestedCollectionsInput._(
            mapOfListOfMapOfLists: _mapOfListOfMapOfLists?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapOfListOfMapOfLists';
        _mapOfListOfMapOfLists?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NestedCollectionsInput',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
