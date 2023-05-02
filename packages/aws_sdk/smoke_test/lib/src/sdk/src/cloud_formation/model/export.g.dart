// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.export;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Export extends Export {
  @override
  final String? exportingStackId;
  @override
  final String? name;
  @override
  final String? value;

  factory _$Export([void Function(ExportBuilder)? updates]) =>
      (new ExportBuilder()..update(updates))._build();

  _$Export._({this.exportingStackId, this.name, this.value}) : super._();

  @override
  Export rebuild(void Function(ExportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportBuilder toBuilder() => new ExportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Export &&
        exportingStackId == other.exportingStackId &&
        name == other.name &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportingStackId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportBuilder implements Builder<Export, ExportBuilder> {
  _$Export? _$v;

  String? _exportingStackId;
  String? get exportingStackId => _$this._exportingStackId;
  set exportingStackId(String? exportingStackId) =>
      _$this._exportingStackId = exportingStackId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ExportBuilder() {
    Export._init(this);
  }

  ExportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportingStackId = $v.exportingStackId;
      _name = $v.name;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Export other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Export;
  }

  @override
  void update(void Function(ExportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Export build() => _build();

  _$Export _build() {
    final _$result = _$v ??
        new _$Export._(
            exportingStackId: exportingStackId, name: name, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
