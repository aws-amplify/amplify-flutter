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
    return $jf($jc(
        $jc(
            $jc($jc(0, aggregationAuthorizationArn.hashCode),
                authorizedAccountId.hashCode),
            authorizedAwsRegion.hashCode),
        creationTime.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
