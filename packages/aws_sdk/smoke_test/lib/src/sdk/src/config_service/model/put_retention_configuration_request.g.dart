// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_retention_configuration_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRetentionConfigurationRequest
    extends PutRetentionConfigurationRequest {
  @override
  final int retentionPeriodInDays;

  factory _$PutRetentionConfigurationRequest(
          [void Function(PutRetentionConfigurationRequestBuilder)? updates]) =>
      (new PutRetentionConfigurationRequestBuilder()..update(updates))._build();

  _$PutRetentionConfigurationRequest._({required this.retentionPeriodInDays})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(retentionPeriodInDays,
        r'PutRetentionConfigurationRequest', 'retentionPeriodInDays');
  }

  @override
  PutRetentionConfigurationRequest rebuild(
          void Function(PutRetentionConfigurationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRetentionConfigurationRequestBuilder toBuilder() =>
      new PutRetentionConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRetentionConfigurationRequest &&
        retentionPeriodInDays == other.retentionPeriodInDays;
  }

  @override
  int get hashCode {
    return $jf($jc(0, retentionPeriodInDays.hashCode));
  }
}

class PutRetentionConfigurationRequestBuilder
    implements
        Builder<PutRetentionConfigurationRequest,
            PutRetentionConfigurationRequestBuilder> {
  _$PutRetentionConfigurationRequest? _$v;

  int? _retentionPeriodInDays;
  int? get retentionPeriodInDays => _$this._retentionPeriodInDays;
  set retentionPeriodInDays(int? retentionPeriodInDays) =>
      _$this._retentionPeriodInDays = retentionPeriodInDays;

  PutRetentionConfigurationRequestBuilder() {
    PutRetentionConfigurationRequest._init(this);
  }

  PutRetentionConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _retentionPeriodInDays = $v.retentionPeriodInDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRetentionConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRetentionConfigurationRequest;
  }

  @override
  void update(void Function(PutRetentionConfigurationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRetentionConfigurationRequest build() => _build();

  _$PutRetentionConfigurationRequest _build() {
    final _$result = _$v ??
        new _$PutRetentionConfigurationRequest._(
            retentionPeriodInDays: BuiltValueNullFieldError.checkNotNull(
                retentionPeriodInDays,
                r'PutRetentionConfigurationRequest',
                'retentionPeriodInDays'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
