// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_instance_types_from_instance_requirements_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceTypesFromInstanceRequirementsRequest
    extends GetInstanceTypesFromInstanceRequirementsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<ArchitectureType>? architectureTypes;
  @override
  final _i3.BuiltList<VirtualizationType>? virtualizationTypes;
  @override
  final InstanceRequirementsRequest? instanceRequirements;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetInstanceTypesFromInstanceRequirementsRequest(
          [void Function(
                  GetInstanceTypesFromInstanceRequirementsRequestBuilder)?
              updates]) =>
      (new GetInstanceTypesFromInstanceRequirementsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetInstanceTypesFromInstanceRequirementsRequest._(
      {required this.dryRun,
      this.architectureTypes,
      this.virtualizationTypes,
      this.instanceRequirements,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetInstanceTypesFromInstanceRequirementsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetInstanceTypesFromInstanceRequirementsRequest', 'maxResults');
  }

  @override
  GetInstanceTypesFromInstanceRequirementsRequest rebuild(
          void Function(GetInstanceTypesFromInstanceRequirementsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceTypesFromInstanceRequirementsRequestBuilder toBuilder() =>
      new GetInstanceTypesFromInstanceRequirementsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceTypesFromInstanceRequirementsRequest &&
        dryRun == other.dryRun &&
        architectureTypes == other.architectureTypes &&
        virtualizationTypes == other.virtualizationTypes &&
        instanceRequirements == other.instanceRequirements &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, architectureTypes.hashCode);
    _$hash = $jc(_$hash, virtualizationTypes.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInstanceTypesFromInstanceRequirementsRequestBuilder
    implements
        Builder<GetInstanceTypesFromInstanceRequirementsRequest,
            GetInstanceTypesFromInstanceRequirementsRequestBuilder> {
  _$GetInstanceTypesFromInstanceRequirementsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<ArchitectureType>? _architectureTypes;
  _i3.ListBuilder<ArchitectureType> get architectureTypes =>
      _$this._architectureTypes ??= new _i3.ListBuilder<ArchitectureType>();
  set architectureTypes(_i3.ListBuilder<ArchitectureType>? architectureTypes) =>
      _$this._architectureTypes = architectureTypes;

  _i3.ListBuilder<VirtualizationType>? _virtualizationTypes;
  _i3.ListBuilder<VirtualizationType> get virtualizationTypes =>
      _$this._virtualizationTypes ??= new _i3.ListBuilder<VirtualizationType>();
  set virtualizationTypes(
          _i3.ListBuilder<VirtualizationType>? virtualizationTypes) =>
      _$this._virtualizationTypes = virtualizationTypes;

  InstanceRequirementsRequestBuilder? _instanceRequirements;
  InstanceRequirementsRequestBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new InstanceRequirementsRequestBuilder();
  set instanceRequirements(
          InstanceRequirementsRequestBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetInstanceTypesFromInstanceRequirementsRequestBuilder() {
    GetInstanceTypesFromInstanceRequirementsRequest._init(this);
  }

  GetInstanceTypesFromInstanceRequirementsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _architectureTypes = $v.architectureTypes?.toBuilder();
      _virtualizationTypes = $v.virtualizationTypes?.toBuilder();
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceTypesFromInstanceRequirementsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceTypesFromInstanceRequirementsRequest;
  }

  @override
  void update(
      void Function(GetInstanceTypesFromInstanceRequirementsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceTypesFromInstanceRequirementsRequest build() => _build();

  _$GetInstanceTypesFromInstanceRequirementsRequest _build() {
    _$GetInstanceTypesFromInstanceRequirementsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetInstanceTypesFromInstanceRequirementsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetInstanceTypesFromInstanceRequirementsRequest', 'dryRun'),
              architectureTypes: _architectureTypes?.build(),
              virtualizationTypes: _virtualizationTypes?.build(),
              instanceRequirements: _instanceRequirements?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetInstanceTypesFromInstanceRequirementsRequest',
                  'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'architectureTypes';
        _architectureTypes?.build();
        _$failedField = 'virtualizationTypes';
        _virtualizationTypes?.build();
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetInstanceTypesFromInstanceRequirementsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
