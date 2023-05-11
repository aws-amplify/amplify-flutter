// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.estimate_template_cost_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EstimateTemplateCostInput extends EstimateTemplateCostInput {
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final _i4.BuiltList<_i3.Parameter>? parameters;

  factory _$EstimateTemplateCostInput(
          [void Function(EstimateTemplateCostInputBuilder)? updates]) =>
      (new EstimateTemplateCostInputBuilder()..update(updates))._build();

  _$EstimateTemplateCostInput._(
      {this.templateBody, this.templateUrl, this.parameters})
      : super._();

  @override
  EstimateTemplateCostInput rebuild(
          void Function(EstimateTemplateCostInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EstimateTemplateCostInputBuilder toBuilder() =>
      new EstimateTemplateCostInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EstimateTemplateCostInput &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        parameters == other.parameters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EstimateTemplateCostInputBuilder
    implements
        Builder<EstimateTemplateCostInput, EstimateTemplateCostInputBuilder> {
  _$EstimateTemplateCostInput? _$v;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateUrl;
  String? get templateUrl => _$this._templateUrl;
  set templateUrl(String? templateUrl) => _$this._templateUrl = templateUrl;

  _i4.ListBuilder<_i3.Parameter>? _parameters;
  _i4.ListBuilder<_i3.Parameter> get parameters =>
      _$this._parameters ??= new _i4.ListBuilder<_i3.Parameter>();
  set parameters(_i4.ListBuilder<_i3.Parameter>? parameters) =>
      _$this._parameters = parameters;

  EstimateTemplateCostInputBuilder() {
    EstimateTemplateCostInput._init(this);
  }

  EstimateTemplateCostInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _parameters = $v.parameters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EstimateTemplateCostInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EstimateTemplateCostInput;
  }

  @override
  void update(void Function(EstimateTemplateCostInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EstimateTemplateCostInput build() => _build();

  _$EstimateTemplateCostInput _build() {
    _$EstimateTemplateCostInput _$result;
    try {
      _$result = _$v ??
          new _$EstimateTemplateCostInput._(
              templateBody: templateBody,
              templateUrl: templateUrl,
              parameters: _parameters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EstimateTemplateCostInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
