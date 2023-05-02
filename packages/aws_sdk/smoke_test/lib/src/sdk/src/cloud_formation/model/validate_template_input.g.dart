// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.validate_template_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateTemplateInput extends ValidateTemplateInput {
  @override
  final String? templateBody;
  @override
  final String? templateUrl;

  factory _$ValidateTemplateInput(
          [void Function(ValidateTemplateInputBuilder)? updates]) =>
      (new ValidateTemplateInputBuilder()..update(updates))._build();

  _$ValidateTemplateInput._({this.templateBody, this.templateUrl}) : super._();

  @override
  ValidateTemplateInput rebuild(
          void Function(ValidateTemplateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateTemplateInputBuilder toBuilder() =>
      new ValidateTemplateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateTemplateInput &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ValidateTemplateInputBuilder
    implements Builder<ValidateTemplateInput, ValidateTemplateInputBuilder> {
  _$ValidateTemplateInput? _$v;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateUrl;
  String? get templateUrl => _$this._templateUrl;
  set templateUrl(String? templateUrl) => _$this._templateUrl = templateUrl;

  ValidateTemplateInputBuilder() {
    ValidateTemplateInput._init(this);
  }

  ValidateTemplateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateTemplateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidateTemplateInput;
  }

  @override
  void update(void Function(ValidateTemplateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateTemplateInput build() => _build();

  _$ValidateTemplateInput _build() {
    final _$result = _$v ??
        new _$ValidateTemplateInput._(
            templateBody: templateBody, templateUrl: templateUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
