// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Output extends Output {
  @override
  final String? outputKey;
  @override
  final String? outputValue;
  @override
  final String? description;
  @override
  final String? exportName;

  factory _$Output([void Function(OutputBuilder)? updates]) =>
      (new OutputBuilder()..update(updates))._build();

  _$Output._(
      {this.outputKey, this.outputValue, this.description, this.exportName})
      : super._();

  @override
  Output rebuild(void Function(OutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OutputBuilder toBuilder() => new OutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Output &&
        outputKey == other.outputKey &&
        outputValue == other.outputValue &&
        description == other.description &&
        exportName == other.exportName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, outputKey.hashCode);
    _$hash = $jc(_$hash, outputValue.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, exportName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OutputBuilder implements Builder<Output, OutputBuilder> {
  _$Output? _$v;

  String? _outputKey;
  String? get outputKey => _$this._outputKey;
  set outputKey(String? outputKey) => _$this._outputKey = outputKey;

  String? _outputValue;
  String? get outputValue => _$this._outputValue;
  set outputValue(String? outputValue) => _$this._outputValue = outputValue;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _exportName;
  String? get exportName => _$this._exportName;
  set exportName(String? exportName) => _$this._exportName = exportName;

  OutputBuilder() {
    Output._init(this);
  }

  OutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _outputKey = $v.outputKey;
      _outputValue = $v.outputValue;
      _description = $v.description;
      _exportName = $v.exportName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Output other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Output;
  }

  @override
  void update(void Function(OutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Output build() => _build();

  _$Output _build() {
    final _$result = _$v ??
        new _$Output._(
            outputKey: outputKey,
            outputValue: outputValue,
            description: description,
            exportName: exportName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
