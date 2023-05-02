// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.template_parameter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateParameter extends TemplateParameter {
  @override
  final String? parameterKey;
  @override
  final String? defaultValue;
  @override
  final bool? noEcho;
  @override
  final String? description;

  factory _$TemplateParameter(
          [void Function(TemplateParameterBuilder)? updates]) =>
      (new TemplateParameterBuilder()..update(updates))._build();

  _$TemplateParameter._(
      {this.parameterKey, this.defaultValue, this.noEcho, this.description})
      : super._();

  @override
  TemplateParameter rebuild(void Function(TemplateParameterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateParameterBuilder toBuilder() =>
      new TemplateParameterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateParameter &&
        parameterKey == other.parameterKey &&
        defaultValue == other.defaultValue &&
        noEcho == other.noEcho &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameterKey.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, noEcho.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TemplateParameterBuilder
    implements Builder<TemplateParameter, TemplateParameterBuilder> {
  _$TemplateParameter? _$v;

  String? _parameterKey;
  String? get parameterKey => _$this._parameterKey;
  set parameterKey(String? parameterKey) => _$this._parameterKey = parameterKey;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  bool? _noEcho;
  bool? get noEcho => _$this._noEcho;
  set noEcho(bool? noEcho) => _$this._noEcho = noEcho;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TemplateParameterBuilder() {
    TemplateParameter._init(this);
  }

  TemplateParameterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameterKey = $v.parameterKey;
      _defaultValue = $v.defaultValue;
      _noEcho = $v.noEcho;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateParameter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplateParameter;
  }

  @override
  void update(void Function(TemplateParameterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateParameter build() => _build();

  _$TemplateParameter _build() {
    final _$result = _$v ??
        new _$TemplateParameter._(
            parameterKey: parameterKey,
            defaultValue: defaultValue,
            noEcho: noEcho,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
