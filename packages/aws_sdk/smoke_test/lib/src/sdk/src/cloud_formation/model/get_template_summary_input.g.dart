// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_template_summary_input.dart';

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
  final CallAs? callAs;
  @override
  final TemplateSummaryConfig? templateSummaryConfig;

  factory _$GetTemplateSummaryInput(
          [void Function(GetTemplateSummaryInputBuilder)? updates]) =>
      (new GetTemplateSummaryInputBuilder()..update(updates))._build();

  _$GetTemplateSummaryInput._(
      {this.templateBody,
      this.templateUrl,
      this.stackName,
      this.stackSetName,
      this.callAs,
      this.templateSummaryConfig})
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
        callAs == other.callAs &&
        templateSummaryConfig == other.templateSummaryConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, templateUrl.hashCode);
    _$hash = $jc(_$hash, stackName.hashCode);
    _$hash = $jc(_$hash, stackSetName.hashCode);
    _$hash = $jc(_$hash, callAs.hashCode);
    _$hash = $jc(_$hash, templateSummaryConfig.hashCode);
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

  CallAs? _callAs;
  CallAs? get callAs => _$this._callAs;
  set callAs(CallAs? callAs) => _$this._callAs = callAs;

  TemplateSummaryConfigBuilder? _templateSummaryConfig;
  TemplateSummaryConfigBuilder get templateSummaryConfig =>
      _$this._templateSummaryConfig ??= new TemplateSummaryConfigBuilder();
  set templateSummaryConfig(
          TemplateSummaryConfigBuilder? templateSummaryConfig) =>
      _$this._templateSummaryConfig = templateSummaryConfig;

  GetTemplateSummaryInputBuilder();

  GetTemplateSummaryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateBody = $v.templateBody;
      _templateUrl = $v.templateUrl;
      _stackName = $v.stackName;
      _stackSetName = $v.stackSetName;
      _callAs = $v.callAs;
      _templateSummaryConfig = $v.templateSummaryConfig?.toBuilder();
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
    _$GetTemplateSummaryInput _$result;
    try {
      _$result = _$v ??
          new _$GetTemplateSummaryInput._(
              templateBody: templateBody,
              templateUrl: templateUrl,
              stackName: stackName,
              stackSetName: stackSetName,
              callAs: callAs,
              templateSummaryConfig: _templateSummaryConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'templateSummaryConfig';
        _templateSummaryConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTemplateSummaryInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
