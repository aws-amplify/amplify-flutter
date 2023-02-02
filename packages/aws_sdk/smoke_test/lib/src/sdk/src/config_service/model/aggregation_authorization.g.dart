// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregation_authorization;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregationAuthorization extends AggregationAuthorization {
  @override
  final String? aggregationAuthorizationArn;
  @override
  final String? authorizedAccountId;
  @override
  final String? authorizedAwsRegion;
  @override
  final DateTime? creationTime;

  factory _$AggregationAuthorization(
          [void Function(AggregationAuthorizationBuilder)? updates]) =>
      (new AggregationAuthorizationBuilder()..update(updates))._build();

  _$AggregationAuthorization._(
      {this.aggregationAuthorizationArn,
      this.authorizedAccountId,
      this.authorizedAwsRegion,
      this.creationTime})
      : super._();

  @override
  AggregationAuthorization rebuild(
          void Function(AggregationAuthorizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregationAuthorizationBuilder toBuilder() =>
      new AggregationAuthorizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregationAuthorization &&
        aggregationAuthorizationArn == other.aggregationAuthorizationArn &&
        authorizedAccountId == other.authorizedAccountId &&
        authorizedAwsRegion == other.authorizedAwsRegion &&
        creationTime == other.creationTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, aggregationAuthorizationArn.hashCode);
    _$hash = $jc(_$hash, authorizedAccountId.hashCode);
    _$hash = $jc(_$hash, authorizedAwsRegion.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregationAuthorizationBuilder
    implements
        Builder<AggregationAuthorization, AggregationAuthorizationBuilder> {
  _$AggregationAuthorization? _$v;

  String? _aggregationAuthorizationArn;
  String? get aggregationAuthorizationArn =>
      _$this._aggregationAuthorizationArn;
  set aggregationAuthorizationArn(String? aggregationAuthorizationArn) =>
      _$this._aggregationAuthorizationArn = aggregationAuthorizationArn;

  String? _authorizedAccountId;
  String? get authorizedAccountId => _$this._authorizedAccountId;
  set authorizedAccountId(String? authorizedAccountId) =>
      _$this._authorizedAccountId = authorizedAccountId;

  String? _authorizedAwsRegion;
  String? get authorizedAwsRegion => _$this._authorizedAwsRegion;
  set authorizedAwsRegion(String? authorizedAwsRegion) =>
      _$this._authorizedAwsRegion = authorizedAwsRegion;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  AggregationAuthorizationBuilder() {
    AggregationAuthorization._init(this);
  }

  AggregationAuthorizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _aggregationAuthorizationArn = $v.aggregationAuthorizationArn;
      _authorizedAccountId = $v.authorizedAccountId;
      _authorizedAwsRegion = $v.authorizedAwsRegion;
      _creationTime = $v.creationTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregationAuthorization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregationAuthorization;
  }

  @override
  void update(void Function(AggregationAuthorizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregationAuthorization build() => _build();

  _$AggregationAuthorization _build() {
    final _$result = _$v ??
        new _$AggregationAuthorization._(
            aggregationAuthorizationArn: aggregationAuthorizationArn,
            authorizedAccountId: authorizedAccountId,
            authorizedAwsRegion: authorizedAwsRegion,
            creationTime: creationTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
