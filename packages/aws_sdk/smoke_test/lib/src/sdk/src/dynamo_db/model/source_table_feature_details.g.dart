// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_table_feature_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceTableFeatureDetails extends SourceTableFeatureDetails {
  @override
  final _i2.BuiltList<LocalSecondaryIndexInfo>? localSecondaryIndexes;
  @override
  final _i2.BuiltList<GlobalSecondaryIndexInfo>? globalSecondaryIndexes;
  @override
  final StreamSpecification? streamDescription;
  @override
  final TimeToLiveDescription? timeToLiveDescription;
  @override
  final SseDescription? sseDescription;

  factory _$SourceTableFeatureDetails(
          [void Function(SourceTableFeatureDetailsBuilder)? updates]) =>
      (new SourceTableFeatureDetailsBuilder()..update(updates))._build();

  _$SourceTableFeatureDetails._(
      {this.localSecondaryIndexes,
      this.globalSecondaryIndexes,
      this.streamDescription,
      this.timeToLiveDescription,
      this.sseDescription})
      : super._();

  @override
  SourceTableFeatureDetails rebuild(
          void Function(SourceTableFeatureDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceTableFeatureDetailsBuilder toBuilder() =>
      new SourceTableFeatureDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceTableFeatureDetails &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        streamDescription == other.streamDescription &&
        timeToLiveDescription == other.timeToLiveDescription &&
        sseDescription == other.sseDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, globalSecondaryIndexes.hashCode);
    _$hash = $jc(_$hash, streamDescription.hashCode);
    _$hash = $jc(_$hash, timeToLiveDescription.hashCode);
    _$hash = $jc(_$hash, sseDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SourceTableFeatureDetailsBuilder
    implements
        Builder<SourceTableFeatureDetails, SourceTableFeatureDetailsBuilder> {
  _$SourceTableFeatureDetails? _$v;

  _i2.ListBuilder<LocalSecondaryIndexInfo>? _localSecondaryIndexes;
  _i2.ListBuilder<LocalSecondaryIndexInfo> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i2.ListBuilder<LocalSecondaryIndexInfo>();
  set localSecondaryIndexes(
          _i2.ListBuilder<LocalSecondaryIndexInfo>? localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i2.ListBuilder<GlobalSecondaryIndexInfo>? _globalSecondaryIndexes;
  _i2.ListBuilder<GlobalSecondaryIndexInfo> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i2.ListBuilder<GlobalSecondaryIndexInfo>();
  set globalSecondaryIndexes(
          _i2.ListBuilder<GlobalSecondaryIndexInfo>? globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  StreamSpecificationBuilder? _streamDescription;
  StreamSpecificationBuilder get streamDescription =>
      _$this._streamDescription ??= new StreamSpecificationBuilder();
  set streamDescription(StreamSpecificationBuilder? streamDescription) =>
      _$this._streamDescription = streamDescription;

  TimeToLiveDescriptionBuilder? _timeToLiveDescription;
  TimeToLiveDescriptionBuilder get timeToLiveDescription =>
      _$this._timeToLiveDescription ??= new TimeToLiveDescriptionBuilder();
  set timeToLiveDescription(
          TimeToLiveDescriptionBuilder? timeToLiveDescription) =>
      _$this._timeToLiveDescription = timeToLiveDescription;

  SseDescriptionBuilder? _sseDescription;
  SseDescriptionBuilder get sseDescription =>
      _$this._sseDescription ??= new SseDescriptionBuilder();
  set sseDescription(SseDescriptionBuilder? sseDescription) =>
      _$this._sseDescription = sseDescription;

  SourceTableFeatureDetailsBuilder();

  SourceTableFeatureDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _streamDescription = $v.streamDescription?.toBuilder();
      _timeToLiveDescription = $v.timeToLiveDescription?.toBuilder();
      _sseDescription = $v.sseDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceTableFeatureDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SourceTableFeatureDetails;
  }

  @override
  void update(void Function(SourceTableFeatureDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceTableFeatureDetails build() => _build();

  _$SourceTableFeatureDetails _build() {
    _$SourceTableFeatureDetails _$result;
    try {
      _$result = _$v ??
          new _$SourceTableFeatureDetails._(
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              streamDescription: _streamDescription?.build(),
              timeToLiveDescription: _timeToLiveDescription?.build(),
              sseDescription: _sseDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
        _$failedField = 'streamDescription';
        _streamDescription?.build();
        _$failedField = 'timeToLiveDescription';
        _timeToLiveDescription?.build();
        _$failedField = 'sseDescription';
        _sseDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SourceTableFeatureDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
