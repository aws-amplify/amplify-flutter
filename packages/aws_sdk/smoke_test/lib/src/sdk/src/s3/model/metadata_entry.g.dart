// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.metadata_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MetadataEntry extends MetadataEntry {
  @override
  final String? name;
  @override
  final String? value;

  factory _$MetadataEntry([void Function(MetadataEntryBuilder)? updates]) =>
      (new MetadataEntryBuilder()..update(updates))._build();

  _$MetadataEntry._({this.name, this.value}) : super._();

  @override
  MetadataEntry rebuild(void Function(MetadataEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MetadataEntryBuilder toBuilder() => new MetadataEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MetadataEntry && name == other.name && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), value.hashCode));
  }
}

class MetadataEntryBuilder
    implements Builder<MetadataEntry, MetadataEntryBuilder> {
  _$MetadataEntry? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  MetadataEntryBuilder() {
    MetadataEntry._init(this);
  }

  MetadataEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetadataEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MetadataEntry;
  }

  @override
  void update(void Function(MetadataEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MetadataEntry build() => _build();

  _$MetadataEntry _build() {
    final _$result = _$v ?? new _$MetadataEntry._(name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
