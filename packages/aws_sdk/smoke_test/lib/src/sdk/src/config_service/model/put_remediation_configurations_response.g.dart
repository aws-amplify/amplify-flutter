// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_remediation_configurations_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRemediationConfigurationsResponse
    extends PutRemediationConfigurationsResponse {
  @override
  final _i3.BuiltList<_i2.FailedRemediationBatch>? failedBatches;

  factory _$PutRemediationConfigurationsResponse(
          [void Function(PutRemediationConfigurationsResponseBuilder)?
              updates]) =>
      (new PutRemediationConfigurationsResponseBuilder()..update(updates))
          ._build();

  _$PutRemediationConfigurationsResponse._({this.failedBatches}) : super._();

  @override
  PutRemediationConfigurationsResponse rebuild(
          void Function(PutRemediationConfigurationsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRemediationConfigurationsResponseBuilder toBuilder() =>
      new PutRemediationConfigurationsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRemediationConfigurationsResponse &&
        failedBatches == other.failedBatches;
  }

  @override
  int get hashCode {
    return $jf($jc(0, failedBatches.hashCode));
  }
}

class PutRemediationConfigurationsResponseBuilder
    implements
        Builder<PutRemediationConfigurationsResponse,
            PutRemediationConfigurationsResponseBuilder> {
  _$PutRemediationConfigurationsResponse? _$v;

  _i3.ListBuilder<_i2.FailedRemediationBatch>? _failedBatches;
  _i3.ListBuilder<_i2.FailedRemediationBatch> get failedBatches =>
      _$this._failedBatches ??=
          new _i3.ListBuilder<_i2.FailedRemediationBatch>();
  set failedBatches(
          _i3.ListBuilder<_i2.FailedRemediationBatch>? failedBatches) =>
      _$this._failedBatches = failedBatches;

  PutRemediationConfigurationsResponseBuilder() {
    PutRemediationConfigurationsResponse._init(this);
  }

  PutRemediationConfigurationsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failedBatches = $v.failedBatches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRemediationConfigurationsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRemediationConfigurationsResponse;
  }

  @override
  void update(
      void Function(PutRemediationConfigurationsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRemediationConfigurationsResponse build() => _build();

  _$PutRemediationConfigurationsResponse _build() {
    _$PutRemediationConfigurationsResponse _$result;
    try {
      _$result = _$v ??
          new _$PutRemediationConfigurationsResponse._(
              failedBatches: _failedBatches?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failedBatches';
        _failedBatches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRemediationConfigurationsResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
