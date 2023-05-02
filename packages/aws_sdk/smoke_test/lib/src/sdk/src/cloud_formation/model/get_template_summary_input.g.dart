// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.get_template_summary_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTemplateSummaryInput extends GetTemplateSummaryInput {
  @override
  final String? templateBody;
  @override
  final String? templateUrl;
  @override
  final String? stackName;
  @override
  final String? stackSetName;
  @override
  final _i3.CallAs? callAs;

  factory _$GetTemplateSummaryInput(
          [void Function(GetTemplateSummaryInputBuilder)? updates]) =>
      (new GetTemplateSummaryInputBuilder()..update(updates))._build();

  _$GetTemplateSummaryInput._(
      {this.templateBody,
      this.templateUrl,
      this.stackName,
      this.stackSetName,
      this.callAs})
      : super._();

  @override
  GetTemplateSummaryInput rebuild(
          void Function(GetTemplateSummaryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTemplateSummaryInputBuilder toBuilder() =>
      new GetTemplateSummaryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTemplateSummaryInput &&
        templateBody == other.templateBody &&
        templateUrl == other.templateUrl &&
        stackName == other.stackName &&
        stackSetName == other.stackSetName &&
        callAs == other.callAs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTemplateSummaryInputBuilder
    implements
        Builder<GetTemplateSummaryInput, GetTemplateSummaryInputBuilder> {
  _$GetTemplateSummaryInput? _$v;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateUrl;
  String? get templateUrl => _$this._templateUrl;
  set templateUrl(String? templateUrl) => _$this._templateUrl = templateUrl;

  String? _stackName;
  String? get stackName => _$this._stackName;
  set stackName(String? stackName) => _$this._stackName = stackName;

  String? _stackSetName;
  String? get stackSetName => _$this._stackSetName;
  set stackSetName(String? stackSetName) => _$this._stackSetName = stackSetName;

  _i3.CallAs? _callAs;
  _i3.CallAs? get callAs => _$this._callAs;
  set callAs(_i3.CallAs? callAs) => _$this._callAs = callAs;

  GetTemplateSummaryInputBuilder() {
    GetTemplateSummaryInput._init(this);
  }

  GetTemplateSummaryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _stackName = $v.stackName;
      _stackSetName = $v.stackSetName;
      _callAs = $v.callAs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTemplateSummaryInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTemplateSummaryInput;
  }

  @override
  void update(void Function(GetTemplateSummaryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTemplateSummaryInput build() => _build();

  _$GetTemplateSummaryInput _build() {
    final _$result = _$v ??
        new _$GetTemplateSummaryInput._(
            templateBody: templateBody,
            templateUrl: templateUrl,
            stackName: stackName,
            stackSetName: stackSetName,
            callAs: callAs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
