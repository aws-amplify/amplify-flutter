// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.source_table_feature_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceTableFeatureDetails extends SourceTableFeatureDetails {
  @override
  final _i7.BuiltList<_i2.LocalSecondaryIndexInfo>? localSecondaryIndexes;
  @override
  final _i7.BuiltList<_i3.GlobalSecondaryIndexInfo>? globalSecondaryIndexes;
  @override
  final _i4.StreamSpecification? streamDescription;
  @override
  final _i5.TimeToLiveDescription? timeToLiveDescription;
  @override
  final _i6.SseDescription? sseDescription;

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

  _i7.ListBuilder<_i2.LocalSecondaryIndexInfo>? _localSecondaryIndexes;
  _i7.ListBuilder<_i2.LocalSecondaryIndexInfo> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i7.ListBuilder<_i2.LocalSecondaryIndexInfo>();
  set localSecondaryIndexes(
          _i7.ListBuilder<_i2.LocalSecondaryIndexInfo>?
              localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i7.ListBuilder<_i3.GlobalSecondaryIndexInfo>? _globalSecondaryIndexes;
  _i7.ListBuilder<_i3.GlobalSecondaryIndexInfo> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i7.ListBuilder<_i3.GlobalSecondaryIndexInfo>();
  set globalSecondaryIndexes(
          _i7.ListBuilder<_i3.GlobalSecondaryIndexInfo>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i4.StreamSpecificationBuilder? _streamDescription;
  _i4.StreamSpecificationBuilder get streamDescription =>
      _$this._streamDescription ??= new _i4.StreamSpecificationBuilder();
  set streamDescription(_i4.StreamSpecificationBuilder? streamDescription) =>
      _$this._streamDescription = streamDescription;

  _i5.TimeToLiveDescriptionBuilder? _timeToLiveDescription;
  _i5.TimeToLiveDescriptionBuilder get timeToLiveDescription =>
      _$this._timeToLiveDescription ??= new _i5.TimeToLiveDescriptionBuilder();
  set timeToLiveDescription(
          _i5.TimeToLiveDescriptionBuilder? timeToLiveDescription) =>
      _$this._timeToLiveDescription = timeToLiveDescription;

  _i6.SseDescriptionBuilder? _sseDescription;
  _i6.SseDescriptionBuilder get sseDescription =>
      _$this._sseDescription ??= new _i6.SseDescriptionBuilder();
  set sseDescription(_i6.SseDescriptionBuilder? sseDescription) =>
      _$this._sseDescription = sseDescription;

  SourceTableFeatureDetailsBuilder() {
    SourceTableFeatureDetails._init(this);
  }

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
