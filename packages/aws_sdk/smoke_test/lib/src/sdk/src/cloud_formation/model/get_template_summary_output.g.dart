// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_template_summary_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTemplateSummaryOutput extends GetTemplateSummaryOutput {
  @override
  final _i2.BuiltList<ParameterDeclaration>? parameters;
  @override
  final String? description;
  @override
  final _i2.BuiltList<Capability>? capabilities;
  @override
  final String? capabilitiesReason;
  @override
  final _i2.BuiltList<String>? resourceTypes;
  @override
  final String? version;
  @override
  final String? metadata;
  @override
  final _i2.BuiltList<String>? declaredTransforms;
  @override
  final _i2.BuiltList<ResourceIdentifierSummary>? resourceIdentifierSummaries;
  @override
  final Warnings? warnings;

  factory _$GetTemplateSummaryOutput(
          [void Function(GetTemplateSummaryOutputBuilder)? updates]) =>
      (new GetTemplateSummaryOutputBuilder()..update(updates))._build();

  _$GetTemplateSummaryOutput._(
      {this.parameters,
      this.description,
      this.capabilities,
      this.capabilitiesReason,
      this.resourceTypes,
      this.version,
      this.metadata,
      this.declaredTransforms,
      this.resourceIdentifierSummaries,
      this.warnings})
      : super._();

  @override
  GetTemplateSummaryOutput rebuild(
          void Function(GetTemplateSummaryOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTemplateSummaryOutputBuilder toBuilder() =>
      new GetTemplateSummaryOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTemplateSummaryOutput &&
        parameters == other.parameters &&
        description == other.description &&
        capabilities == other.capabilities &&
        capabilitiesReason == other.capabilitiesReason &&
        resourceTypes == other.resourceTypes &&
        version == other.version &&
        metadata == other.metadata &&
        declaredTransforms == other.declaredTransforms &&
        resourceIdentifierSummaries == other.resourceIdentifierSummaries &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, capabilities.hashCode);
    _$hash = $jc(_$hash, capabilitiesReason.hashCode);
    _$hash = $jc(_$hash, resourceTypes.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, declaredTransforms.hashCode);
    _$hash = $jc(_$hash, resourceIdentifierSummaries.hashCode);
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTemplateSummaryOutputBuilder
    implements
        Builder<GetTemplateSummaryOutput, GetTemplateSummaryOutputBuilder> {
  _$GetTemplateSummaryOutput? _$v;

  _i2.ListBuilder<ParameterDeclaration>? _parameters;
  _i2.ListBuilder<ParameterDeclaration> get parameters =>
      _$this._parameters ??= new _i2.ListBuilder<ParameterDeclaration>();
  set parameters(_i2.ListBuilder<ParameterDeclaration>? parameters) =>
      _$this._parameters = parameters;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.ListBuilder<Capability>? _capabilities;
  _i2.ListBuilder<Capability> get capabilities =>
      _$this._capabilities ??= new _i2.ListBuilder<Capability>();
  set capabilities(_i2.ListBuilder<Capability>? capabilities) =>
      _$this._capabilities = capabilities;

  String? _capabilitiesReason;
  String? get capabilitiesReason => _$this._capabilitiesReason;
  set capabilitiesReason(String? capabilitiesReason) =>
      _$this._capabilitiesReason = capabilitiesReason;

  _i2.ListBuilder<String>? _resourceTypes;
  _i2.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i2.ListBuilder<String>();
  set resourceTypes(_i2.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _metadata;
  String? get metadata => _$this._metadata;
  set metadata(String? metadata) => _$this._metadata = metadata;

  _i2.ListBuilder<String>? _declaredTransforms;
  _i2.ListBuilder<String> get declaredTransforms =>
      _$this._declaredTransforms ??= new _i2.ListBuilder<String>();
  set declaredTransforms(_i2.ListBuilder<String>? declaredTransforms) =>
      _$this._declaredTransforms = declaredTransforms;

  _i2.ListBuilder<ResourceIdentifierSummary>? _resourceIdentifierSummaries;
  _i2.ListBuilder<ResourceIdentifierSummary> get resourceIdentifierSummaries =>
      _$this._resourceIdentifierSummaries ??=
          new _i2.ListBuilder<ResourceIdentifierSummary>();
  set resourceIdentifierSummaries(
          _i2.ListBuilder<ResourceIdentifierSummary>?
              resourceIdentifierSummaries) =>
      _$this._resourceIdentifierSummaries = resourceIdentifierSummaries;

  WarningsBuilder? _warnings;
  WarningsBuilder get warnings => _$this._warnings ??= new WarningsBuilder();
  set warnings(WarningsBuilder? warnings) => _$this._warnings = warnings;

  GetTemplateSummaryOutputBuilder();

  GetTemplateSummaryOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _description = $v.description;
      _capabilities = $v.capabilities?.toBuilder();
      _capabilitiesReason = $v.capabilitiesReason;
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _version = $v.version;
      _metadata = $v.metadata;
      _declaredTransforms = $v.declaredTransforms?.toBuilder();
      _resourceIdentifierSummaries =
          $v.resourceIdentifierSummaries?.toBuilder();
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTemplateSummaryOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTemplateSummaryOutput;
  }

  @override
  void update(void Function(GetTemplateSummaryOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTemplateSummaryOutput build() => _build();

  _$GetTemplateSummaryOutput _build() {
    _$GetTemplateSummaryOutput _$result;
    try {
      _$result = _$v ??
          new _$GetTemplateSummaryOutput._(
              parameters: _parameters?.build(),
              description: description,
              capabilities: _capabilities?.build(),
              capabilitiesReason: capabilitiesReason,
              resourceTypes: _resourceTypes?.build(),
              version: version,
              metadata: metadata,
              declaredTransforms: _declaredTransforms?.build(),
              resourceIdentifierSummaries:
                  _resourceIdentifierSummaries?.build(),
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'capabilities';
        _capabilities?.build();

        _$failedField = 'resourceTypes';
        _resourceTypes?.build();

        _$failedField = 'declaredTransforms';
        _declaredTransforms?.build();
        _$failedField = 'resourceIdentifierSummaries';
        _resourceIdentifierSummaries?.build();
        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTemplateSummaryOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
