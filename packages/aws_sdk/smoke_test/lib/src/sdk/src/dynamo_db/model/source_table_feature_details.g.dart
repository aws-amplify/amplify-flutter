// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.source_table_feature_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceTableFeatureDetails extends SourceTableFeatureDetails {
  @override
  final _i7.BuiltList<_i2.GlobalSecondaryIndexInfo>? globalSecondaryIndexes;
  @override
  final _i7.BuiltList<_i3.LocalSecondaryIndexInfo>? localSecondaryIndexes;
  @override
  final _i4.SseDescription? sseDescription;
  @override
  final _i5.StreamSpecification? streamDescription;
  @override
  final _i6.TimeToLiveDescription? timeToLiveDescription;

  factory _$SourceTableFeatureDetails(
          [void Function(SourceTableFeatureDetailsBuilder)? updates]) =>
      (new SourceTableFeatureDetailsBuilder()..update(updates))._build();

  _$SourceTableFeatureDetails._(
      {this.globalSecondaryIndexes,
      this.localSecondaryIndexes,
      this.sseDescription,
      this.streamDescription,
      this.timeToLiveDescription})
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
        globalSecondaryIndexes == other.globalSecondaryIndexes &&
        localSecondaryIndexes == other.localSecondaryIndexes &&
        sseDescription == other.sseDescription &&
        streamDescription == other.streamDescription &&
        timeToLiveDescription == other.timeToLiveDescription;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, globalSecondaryIndexes.hashCode),
                    localSecondaryIndexes.hashCode),
                sseDescription.hashCode),
            streamDescription.hashCode),
        timeToLiveDescription.hashCode));
  }
}

class SourceTableFeatureDetailsBuilder
    implements
        Builder<SourceTableFeatureDetails, SourceTableFeatureDetailsBuilder> {
  _$SourceTableFeatureDetails? _$v;

  _i7.ListBuilder<_i2.GlobalSecondaryIndexInfo>? _globalSecondaryIndexes;
  _i7.ListBuilder<_i2.GlobalSecondaryIndexInfo> get globalSecondaryIndexes =>
      _$this._globalSecondaryIndexes ??=
          new _i7.ListBuilder<_i2.GlobalSecondaryIndexInfo>();
  set globalSecondaryIndexes(
          _i7.ListBuilder<_i2.GlobalSecondaryIndexInfo>?
              globalSecondaryIndexes) =>
      _$this._globalSecondaryIndexes = globalSecondaryIndexes;

  _i7.ListBuilder<_i3.LocalSecondaryIndexInfo>? _localSecondaryIndexes;
  _i7.ListBuilder<_i3.LocalSecondaryIndexInfo> get localSecondaryIndexes =>
      _$this._localSecondaryIndexes ??=
          new _i7.ListBuilder<_i3.LocalSecondaryIndexInfo>();
  set localSecondaryIndexes(
          _i7.ListBuilder<_i3.LocalSecondaryIndexInfo>?
              localSecondaryIndexes) =>
      _$this._localSecondaryIndexes = localSecondaryIndexes;

  _i4.SseDescriptionBuilder? _sseDescription;
  _i4.SseDescriptionBuilder get sseDescription =>
      _$this._sseDescription ??= new _i4.SseDescriptionBuilder();
  set sseDescription(_i4.SseDescriptionBuilder? sseDescription) =>
      _$this._sseDescription = sseDescription;

  _i5.StreamSpecificationBuilder? _streamDescription;
  _i5.StreamSpecificationBuilder get streamDescription =>
      _$this._streamDescription ??= new _i5.StreamSpecificationBuilder();
  set streamDescription(_i5.StreamSpecificationBuilder? streamDescription) =>
      _$this._streamDescription = streamDescription;

  _i6.TimeToLiveDescriptionBuilder? _timeToLiveDescription;
  _i6.TimeToLiveDescriptionBuilder get timeToLiveDescription =>
      _$this._timeToLiveDescription ??= new _i6.TimeToLiveDescriptionBuilder();
  set timeToLiveDescription(
          _i6.TimeToLiveDescriptionBuilder? timeToLiveDescription) =>
      _$this._timeToLiveDescription = timeToLiveDescription;

  SourceTableFeatureDetailsBuilder() {
    SourceTableFeatureDetails._init(this);
  }

  SourceTableFeatureDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalSecondaryIndexes = $v.globalSecondaryIndexes?.toBuilder();
      _localSecondaryIndexes = $v.localSecondaryIndexes?.toBuilder();
      _sseDescription = $v.sseDescription?.toBuilder();
      _streamDescription = $v.streamDescription?.toBuilder();
      _timeToLiveDescription = $v.timeToLiveDescription?.toBuilder();
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
              globalSecondaryIndexes: _globalSecondaryIndexes?.build(),
              localSecondaryIndexes: _localSecondaryIndexes?.build(),
              sseDescription: _sseDescription?.build(),
              streamDescription: _streamDescription?.build(),
              timeToLiveDescription: _timeToLiveDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'globalSecondaryIndexes';
        _globalSecondaryIndexes?.build();
        _$failedField = 'localSecondaryIndexes';
        _localSecondaryIndexes?.build();
        _$failedField = 'sseDescription';
        _sseDescription?.build();
        _$failedField = 'streamDescription';
        _streamDescription?.build();
        _$failedField = 'timeToLiveDescription';
        _timeToLiveDescription?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
