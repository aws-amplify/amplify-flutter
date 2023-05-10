// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.parameter_declaration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParameterDeclaration extends ParameterDeclaration {
  @override
  final String? parameterKey;
  @override
  final String? defaultValue;
  @override
  final String? parameterType;
  @override
  final bool? noEcho;
  @override
  final String? description;
  @override
  final _i2.ParameterConstraints? parameterConstraints;

  factory _$ParameterDeclaration(
          [void Function(ParameterDeclarationBuilder)? updates]) =>
      (new ParameterDeclarationBuilder()..update(updates))._build();

  _$ParameterDeclaration._(
      {this.parameterKey,
      this.defaultValue,
      this.parameterType,
      this.noEcho,
      this.description,
      this.parameterConstraints})
      : super._();

  @override
  ParameterDeclaration rebuild(
          void Function(ParameterDeclarationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParameterDeclarationBuilder toBuilder() =>
      new ParameterDeclarationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParameterDeclaration &&
        parameterKey == other.parameterKey &&
        defaultValue == other.defaultValue &&
        parameterType == other.parameterType &&
        noEcho == other.noEcho &&
        description == other.description &&
        parameterConstraints == other.parameterConstraints;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameterKey.hashCode);
    _$hash = $jc(_$hash, defaultValue.hashCode);
    _$hash = $jc(_$hash, parameterType.hashCode);
    _$hash = $jc(_$hash, noEcho.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, parameterConstraints.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ParameterDeclarationBuilder
    implements Builder<ParameterDeclaration, ParameterDeclarationBuilder> {
  _$ParameterDeclaration? _$v;

  String? _parameterKey;
  String? get parameterKey => _$this._parameterKey;
  set parameterKey(String? parameterKey) => _$this._parameterKey = parameterKey;

  String? _defaultValue;
  String? get defaultValue => _$this._defaultValue;
  set defaultValue(String? defaultValue) => _$this._defaultValue = defaultValue;

  String? _parameterType;
  String? get parameterType => _$this._parameterType;
  set parameterType(String? parameterType) =>
      _$this._parameterType = parameterType;

  bool? _noEcho;
  bool? get noEcho => _$this._noEcho;
  set noEcho(bool? noEcho) => _$this._noEcho = noEcho;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ParameterConstraintsBuilder? _parameterConstraints;
  _i2.ParameterConstraintsBuilder get parameterConstraints =>
      _$this._parameterConstraints ??= new _i2.ParameterConstraintsBuilder();
  set parameterConstraints(
          _i2.ParameterConstraintsBuilder? parameterConstraints) =>
      _$this._parameterConstraints = parameterConstraints;

  ParameterDeclarationBuilder() {
    ParameterDeclaration._init(this);
  }

  ParameterDeclarationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameterKey = $v.parameterKey;
      _defaultValue = $v.defaultValue;
      _parameterType = $v.parameterType;
      _noEcho = $v.noEcho;
      _description = $v.description;
      _parameterConstraints = $v.parameterConstraints?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParameterDeclaration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParameterDeclaration;
  }

  @override
  void update(void Function(ParameterDeclarationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParameterDeclaration build() => _build();

  _$ParameterDeclaration _build() {
    _$ParameterDeclaration _$result;
    try {
      _$result = _$v ??
          new _$ParameterDeclaration._(
              parameterKey: parameterKey,
              defaultValue: defaultValue,
              parameterType: parameterType,
              noEcho: noEcho,
              description: description,
              parameterConstraints: _parameterConstraints?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameterConstraints';
        _parameterConstraints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ParameterDeclaration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
