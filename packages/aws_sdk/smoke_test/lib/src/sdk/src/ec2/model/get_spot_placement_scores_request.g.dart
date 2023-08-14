// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_spot_placement_scores_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSpotPlacementScoresRequest extends GetSpotPlacementScoresRequest {
  @override
  final _i3.BuiltList<String>? instanceTypes;
  @override
  final int targetCapacity;
  @override
  final TargetCapacityUnitType? targetCapacityUnitType;
  @override
  final bool singleAvailabilityZone;
  @override
  final _i3.BuiltList<String>? regionNames;
  @override
  final InstanceRequirementsWithMetadataRequest?
      instanceRequirementsWithMetadata;
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetSpotPlacementScoresRequest(
          [void Function(GetSpotPlacementScoresRequestBuilder)? updates]) =>
      (new GetSpotPlacementScoresRequestBuilder()..update(updates))._build();

  _$GetSpotPlacementScoresRequest._(
      {this.instanceTypes,
      required this.targetCapacity,
      this.targetCapacityUnitType,
      required this.singleAvailabilityZone,
      this.regionNames,
      this.instanceRequirementsWithMetadata,
      required this.dryRun,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        targetCapacity, r'GetSpotPlacementScoresRequest', 'targetCapacity');
    BuiltValueNullFieldError.checkNotNull(singleAvailabilityZone,
        r'GetSpotPlacementScoresRequest', 'singleAvailabilityZone');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetSpotPlacementScoresRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetSpotPlacementScoresRequest', 'maxResults');
  }

  @override
  GetSpotPlacementScoresRequest rebuild(
          void Function(GetSpotPlacementScoresRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSpotPlacementScoresRequestBuilder toBuilder() =>
      new GetSpotPlacementScoresRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSpotPlacementScoresRequest &&
        instanceTypes == other.instanceTypes &&
        targetCapacity == other.targetCapacity &&
        targetCapacityUnitType == other.targetCapacityUnitType &&
        singleAvailabilityZone == other.singleAvailabilityZone &&
        regionNames == other.regionNames &&
        instanceRequirementsWithMetadata ==
            other.instanceRequirementsWithMetadata &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTypes.hashCode);
    _$hash = $jc(_$hash, targetCapacity.hashCode);
    _$hash = $jc(_$hash, targetCapacityUnitType.hashCode);
    _$hash = $jc(_$hash, singleAvailabilityZone.hashCode);
    _$hash = $jc(_$hash, regionNames.hashCode);
    _$hash = $jc(_$hash, instanceRequirementsWithMetadata.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSpotPlacementScoresRequestBuilder
    implements
        Builder<GetSpotPlacementScoresRequest,
            GetSpotPlacementScoresRequestBuilder> {
  _$GetSpotPlacementScoresRequest? _$v;

  _i3.ListBuilder<String>? _instanceTypes;
  _i3.ListBuilder<String> get instanceTypes =>
      _$this._instanceTypes ??= new _i3.ListBuilder<String>();
  set instanceTypes(_i3.ListBuilder<String>? instanceTypes) =>
      _$this._instanceTypes = instanceTypes;

  int? _targetCapacity;
  int? get targetCapacity => _$this._targetCapacity;
  set targetCapacity(int? targetCapacity) =>
      _$this._targetCapacity = targetCapacity;

  TargetCapacityUnitType? _targetCapacityUnitType;
  TargetCapacityUnitType? get targetCapacityUnitType =>
      _$this._targetCapacityUnitType;
  set targetCapacityUnitType(TargetCapacityUnitType? targetCapacityUnitType) =>
      _$this._targetCapacityUnitType = targetCapacityUnitType;

  bool? _singleAvailabilityZone;
  bool? get singleAvailabilityZone => _$this._singleAvailabilityZone;
  set singleAvailabilityZone(bool? singleAvailabilityZone) =>
      _$this._singleAvailabilityZone = singleAvailabilityZone;

  _i3.ListBuilder<String>? _regionNames;
  _i3.ListBuilder<String> get regionNames =>
      _$this._regionNames ??= new _i3.ListBuilder<String>();
  set regionNames(_i3.ListBuilder<String>? regionNames) =>
      _$this._regionNames = regionNames;

  InstanceRequirementsWithMetadataRequestBuilder?
      _instanceRequirementsWithMetadata;
  InstanceRequirementsWithMetadataRequestBuilder
      get instanceRequirementsWithMetadata =>
          _$this._instanceRequirementsWithMetadata ??=
              new InstanceRequirementsWithMetadataRequestBuilder();
  set instanceRequirementsWithMetadata(
          InstanceRequirementsWithMetadataRequestBuilder?
              instanceRequirementsWithMetadata) =>
      _$this._instanceRequirementsWithMetadata =
          instanceRequirementsWithMetadata;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetSpotPlacementScoresRequestBuilder() {
    GetSpotPlacementScoresRequest._init(this);
  }

  GetSpotPlacementScoresRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTypes = $v.instanceTypes?.toBuilder();
      _targetCapacity = $v.targetCapacity;
      _targetCapacityUnitType = $v.targetCapacityUnitType;
      _singleAvailabilityZone = $v.singleAvailabilityZone;
      _regionNames = $v.regionNames?.toBuilder();
      _instanceRequirementsWithMetadata =
          $v.instanceRequirementsWithMetadata?.toBuilder();
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSpotPlacementScoresRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSpotPlacementScoresRequest;
  }

  @override
  void update(void Function(GetSpotPlacementScoresRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSpotPlacementScoresRequest build() => _build();

  _$GetSpotPlacementScoresRequest _build() {
    _$GetSpotPlacementScoresRequest _$result;
    try {
      _$result = _$v ??
          new _$GetSpotPlacementScoresRequest._(
              instanceTypes: _instanceTypes?.build(),
              targetCapacity: BuiltValueNullFieldError.checkNotNull(
                  targetCapacity,
                  r'GetSpotPlacementScoresRequest',
                  'targetCapacity'),
              targetCapacityUnitType: targetCapacityUnitType,
              singleAvailabilityZone: BuiltValueNullFieldError.checkNotNull(
                  singleAvailabilityZone,
                  r'GetSpotPlacementScoresRequest',
                  'singleAvailabilityZone'),
              regionNames: _regionNames?.build(),
              instanceRequirementsWithMetadata:
                  _instanceRequirementsWithMetadata?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetSpotPlacementScoresRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'GetSpotPlacementScoresRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypes';
        _instanceTypes?.build();

        _$failedField = 'regionNames';
        _regionNames?.build();
        _$failedField = 'instanceRequirementsWithMetadata';
        _instanceRequirementsWithMetadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSpotPlacementScoresRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
