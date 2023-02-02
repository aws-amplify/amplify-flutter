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
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
