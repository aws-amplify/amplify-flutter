// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_spot_placement_scores_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSpotPlacementScoresResult extends GetSpotPlacementScoresResult {
  @override
  final _i2.BuiltList<SpotPlacementScore>? spotPlacementScores;
  @override
  final String? nextToken;

  factory _$GetSpotPlacementScoresResult(
          [void Function(GetSpotPlacementScoresResultBuilder)? updates]) =>
      (new GetSpotPlacementScoresResultBuilder()..update(updates))._build();

  _$GetSpotPlacementScoresResult._({this.spotPlacementScores, this.nextToken})
      : super._();

  @override
  GetSpotPlacementScoresResult rebuild(
          void Function(GetSpotPlacementScoresResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSpotPlacementScoresResultBuilder toBuilder() =>
      new GetSpotPlacementScoresResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSpotPlacementScoresResult &&
        spotPlacementScores == other.spotPlacementScores &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotPlacementScores.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSpotPlacementScoresResultBuilder
    implements
        Builder<GetSpotPlacementScoresResult,
            GetSpotPlacementScoresResultBuilder> {
  _$GetSpotPlacementScoresResult? _$v;

  _i2.ListBuilder<SpotPlacementScore>? _spotPlacementScores;
  _i2.ListBuilder<SpotPlacementScore> get spotPlacementScores =>
      _$this._spotPlacementScores ??= new _i2.ListBuilder<SpotPlacementScore>();
  set spotPlacementScores(
          _i2.ListBuilder<SpotPlacementScore>? spotPlacementScores) =>
      _$this._spotPlacementScores = spotPlacementScores;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetSpotPlacementScoresResultBuilder();

  GetSpotPlacementScoresResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotPlacementScores = $v.spotPlacementScores?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSpotPlacementScoresResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSpotPlacementScoresResult;
  }

  @override
  void update(void Function(GetSpotPlacementScoresResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSpotPlacementScoresResult build() => _build();

  _$GetSpotPlacementScoresResult _build() {
    _$GetSpotPlacementScoresResult _$result;
    try {
      _$result = _$v ??
          new _$GetSpotPlacementScoresResult._(
              spotPlacementScores: _spotPlacementScores?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotPlacementScores';
        _spotPlacementScores?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSpotPlacementScoresResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
