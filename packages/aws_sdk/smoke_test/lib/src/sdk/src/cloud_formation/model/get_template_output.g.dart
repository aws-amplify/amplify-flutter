// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.get_template_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTemplateOutput extends GetTemplateOutput {
  @override
  final String? templateBody;
  @override
  final _i3.BuiltList<_i2.TemplateStage>? stagesAvailable;

  factory _$GetTemplateOutput(
          [void Function(GetTemplateOutputBuilder)? updates]) =>
      (new GetTemplateOutputBuilder()..update(updates))._build();

  _$GetTemplateOutput._({this.templateBody, this.stagesAvailable}) : super._();

  @override
  GetTemplateOutput rebuild(void Function(GetTemplateOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTemplateOutputBuilder toBuilder() =>
      new GetTemplateOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTemplateOutput &&
        templateBody == other.templateBody &&
        stagesAvailable == other.stagesAvailable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, stagesAvailable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTemplateOutputBuilder
    implements Builder<GetTemplateOutput, GetTemplateOutputBuilder> {
  _$GetTemplateOutput? _$v;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  _i3.ListBuilder<_i2.TemplateStage>? _stagesAvailable;
  _i3.ListBuilder<_i2.TemplateStage> get stagesAvailable =>
      _$this._stagesAvailable ??= new _i3.ListBuilder<_i2.TemplateStage>();
  set stagesAvailable(_i3.ListBuilder<_i2.TemplateStage>? stagesAvailable) =>
      _$this._stagesAvailable = stagesAvailable;

  GetTemplateOutputBuilder() {
    GetTemplateOutput._init(this);
  }

  GetTemplateOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateBody = $v.templateBody;
      _stagesAvailable = $v.stagesAvailable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTemplateOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTemplateOutput;
  }

  @override
  void update(void Function(GetTemplateOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTemplateOutput build() => _build();

  _$GetTemplateOutput _build() {
    _$GetTemplateOutput _$result;
    try {
      _$result = _$v ??
          new _$GetTemplateOutput._(
              templateBody: templateBody,
              stagesAvailable: _stagesAvailable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stagesAvailable';
        _stagesAvailable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTemplateOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
