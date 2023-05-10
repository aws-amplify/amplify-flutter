// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.validate_template_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateTemplateOutput extends ValidateTemplateOutput {
  @override
  final _i4.BuiltList<_i2.TemplateParameter>? parameters;
  @override
  final String? description;
  @override
  final _i4.BuiltList<_i3.Capability>? capabilities;
  @override
  final String? capabilitiesReason;
  @override
  final _i4.BuiltList<String>? declaredTransforms;

  factory _$ValidateTemplateOutput(
          [void Function(ValidateTemplateOutputBuilder)? updates]) =>
      (new ValidateTemplateOutputBuilder()..update(updates))._build();

  _$ValidateTemplateOutput._(
      {this.parameters,
      this.description,
      this.capabilities,
      this.capabilitiesReason,
      this.declaredTransforms})
      : super._();

  @override
  ValidateTemplateOutput rebuild(
          void Function(ValidateTemplateOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateTemplateOutputBuilder toBuilder() =>
      new ValidateTemplateOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateTemplateOutput &&
        parameters == other.parameters &&
        description == other.description &&
        capabilities == other.capabilities &&
        capabilitiesReason == other.capabilitiesReason &&
        declaredTransforms == other.declaredTransforms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, capabilitiesReason.hashCode);
    _$hash = $jc(_$hash, declaredTransforms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ValidateTemplateOutputBuilder
    implements Builder<ValidateTemplateOutput, ValidateTemplateOutputBuilder> {
  _$ValidateTemplateOutput? _$v;

  _i4.ListBuilder<_i2.TemplateParameter>? _parameters;
  _i4.ListBuilder<_i2.TemplateParameter> get parameters =>
      _$this._parameters ??= new _i4.ListBuilder<_i2.TemplateParameter>();
  set parameters(_i4.ListBuilder<_i2.TemplateParameter>? parameters) =>
      _$this._parameters = parameters;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i4.ListBuilder<_i3.Capability>? _capabilities;
  _i4.ListBuilder<_i3.Capability> get capabilities =>
      _$this._capabilities ??= new _i4.ListBuilder<_i3.Capability>();
  set capabilities(_i4.ListBuilder<_i3.Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  String? _capabilitiesReason;
  String? get capabilitiesReason => _$this._capabilitiesReason;
  set capabilitiesReason(String? capabilitiesReason) =>
      _$this._capabilitiesReason = capabilitiesReason;

  _i4.ListBuilder<String>? _declaredTransforms;
  _i4.ListBuilder<String> get declaredTransforms =>
      _$this._declaredTransforms ??= new _i4.ListBuilder<String>();
  set declaredTransforms(_i4.ListBuilder<String>? declaredTransforms) =>
      _$this._declaredTransforms = declaredTransforms;

  ValidateTemplateOutputBuilder() {
    ValidateTemplateOutput._init(this);
  }

  ValidateTemplateOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _description = $v.description;
      _capabilities = $v.capabilities?.toBuilder();
      _capabilitiesReason = $v.capabilitiesReason;
      _declaredTransforms = $v.declaredTransforms?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateTemplateOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateTemplateOutput;
  }

  @override
  void update(void Function(ValidateTemplateOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateTemplateOutput build() => _build();

  _$ValidateTemplateOutput _build() {
    _$ValidateTemplateOutput _$result;
    try {
      _$result = _$v ??
          new _$ValidateTemplateOutput._(
              parameters: _parameters?.build(),
              description: description,
              capabilities: _capabilities?.build(),
              capabilitiesReason: capabilitiesReason,
              declaredTransforms: _declaredTransforms?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'capabilities';
        _capabilities?.build();

        _$failedField = 'declaredTransforms';
        _declaredTransforms?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ValidateTemplateOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
