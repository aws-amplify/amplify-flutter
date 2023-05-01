// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.get_template_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTemplateInput extends GetTemplateInput {
  @override
  final String? stackName;
  @override
  final String? changeSetName;
  @override
  final _i3.TemplateStage? templateStage;

  factory _$GetTemplateInput(
          [void Function(GetTemplateInputBuilder)? updates]) =>
      (new GetTemplateInputBuilder()..update(updates))._build();

  _$GetTemplateInput._({this.stackName, this.changeSetName, this.templateStage})
      : super._();

  @override
  GetTemplateInput rebuild(void Function(GetTemplateInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTemplateInputBuilder toBuilder() =>
      new GetTemplateInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTemplateInput &&
        stackName == other.stackName &&
        changeSetName == other.changeSetName &&
        templateStage == other.templateStage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, changeSetName.hashCode);
    _$hash = $jc(_$hash, templateStage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTemplateInputBuilder
    implements Builder<GetTemplateInput, GetTemplateInputBuilder> {
  _$GetTemplateInput? _$v;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _changeSetName;
  String? get changeSetName => _$this._changeSetName;
  set changeSetName(String? changeSetName) =>
      _$this._changeSetName = changeSetName;

  _i3.TemplateStage? _templateStage;
  _i3.TemplateStage? get templateStage => _$this._templateStage;
  set templateStage(_i3.TemplateStage? templateStage) =>
      _$this._templateStage = templateStage;

  GetTemplateInputBuilder() {
    GetTemplateInput._init(this);
  }

  GetTemplateInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stackName = $v.stackName;
      _changeSetName = $v.changeSetName;
      _templateStage = $v.templateStage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTemplateInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTemplateInput;
  }

  @override
  void update(void Function(GetTemplateInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTemplateInput build() => _build();

  _$GetTemplateInput _build() {
    final _$result = _$v ??
        new _$GetTemplateInput._(
            stackName: stackName,
            changeSetName: changeSetName,
            templateStage: templateStage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
