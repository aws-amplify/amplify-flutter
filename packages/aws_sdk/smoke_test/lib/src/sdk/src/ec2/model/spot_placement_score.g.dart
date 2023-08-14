// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spot_placement_score.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotPlacementScore extends SpotPlacementScore {
  @override
  final String? region;
  @override
  final String? availabilityZoneId;
  @override
  final int score;

  factory _$SpotPlacementScore(
          [void Function(SpotPlacementScoreBuilder)? updates]) =>
      (new SpotPlacementScoreBuilder()..update(updates))._build();

  _$SpotPlacementScore._(
      {this.region, this.availabilityZoneId, required this.score})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        score, r'SpotPlacementScore', 'score');
  }

  @override
  SpotPlacementScore rebuild(
          void Function(SpotPlacementScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotPlacementScoreBuilder toBuilder() =>
      new SpotPlacementScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotPlacementScore &&
        region == other.region &&
        availabilityZoneId == other.availabilityZoneId &&
        score == other.score;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, score.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotPlacementScoreBuilder
    implements Builder<SpotPlacementScore, SpotPlacementScoreBuilder> {
  _$SpotPlacementScore? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  int? _score;
  int? get score => _$this._score;
  set score(int? score) => _$this._score = score;

  SpotPlacementScoreBuilder() {
    SpotPlacementScore._init(this);
  }

  SpotPlacementScoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _availabilityZoneId = $v.availabilityZoneId;
      _score = $v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotPlacementScore other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotPlacementScore;
  }

  @override
  void update(void Function(SpotPlacementScoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotPlacementScore build() => _build();

  _$SpotPlacementScore _build() {
    final _$result = _$v ??
        new _$SpotPlacementScore._(
            region: region,
            availabilityZoneId: availabilityZoneId,
            score: BuiltValueNullFieldError.checkNotNull(
                score, r'SpotPlacementScore', 'score'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
