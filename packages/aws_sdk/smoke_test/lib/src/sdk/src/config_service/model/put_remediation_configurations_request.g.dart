// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_remediation_configurations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRemediationConfigurationsRequest
    extends PutRemediationConfigurationsRequest {
  @override
  final _i4.BuiltList<_i3.RemediationConfiguration> remediationConfigurations;

  factory _$PutRemediationConfigurationsRequest(
          [void Function(PutRemediationConfigurationsRequestBuilder)?
              updates]) =>
      (new PutRemediationConfigurationsRequestBuilder()..update(updates))
          ._build();

  _$PutRemediationConfigurationsRequest._(
      {required this.remediationConfigurations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(remediationConfigurations,
        r'PutRemediationConfigurationsRequest', 'remediationConfigurations');
  }

  @override
  PutRemediationConfigurationsRequest rebuild(
          void Function(PutRemediationConfigurationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRemediationConfigurationsRequestBuilder toBuilder() =>
      new PutRemediationConfigurationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRemediationConfigurationsRequest &&
        remediationConfigurations == other.remediationConfigurations;
  }

  @override
  int get hashCode {
    return $jf($jc(0, remediationConfigurations.hashCode));
  }
}

class PutRemediationConfigurationsRequestBuilder
    implements
        Builder<PutRemediationConfigurationsRequest,
            PutRemediationConfigurationsRequestBuilder> {
  _$PutRemediationConfigurationsRequest? _$v;

  _i4.ListBuilder<_i3.RemediationConfiguration>? _remediationConfigurations;
  _i4.ListBuilder<_i3.RemediationConfiguration> get remediationConfigurations =>
      _$this._remediationConfigurations ??=
          new _i4.ListBuilder<_i3.RemediationConfiguration>();
  set remediationConfigurations(
          _i4.ListBuilder<_i3.RemediationConfiguration>?
              remediationConfigurations) =>
      _$this._remediationConfigurations = remediationConfigurations;

  PutRemediationConfigurationsRequestBuilder() {
    PutRemediationConfigurationsRequest._init(this);
  }

  PutRemediationConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _remediationConfigurations = $v.remediationConfigurations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRemediationConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRemediationConfigurationsRequest;
  }

  @override
  void update(
      void Function(PutRemediationConfigurationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRemediationConfigurationsRequest build() => _build();

  _$PutRemediationConfigurationsRequest _build() {
    _$PutRemediationConfigurationsRequest _$result;
    try {
      _$result = _$v ??
          new _$PutRemediationConfigurationsRequest._(
              remediationConfigurations: remediationConfigurations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'remediationConfigurations';
        remediationConfigurations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRemediationConfigurationsRequest',
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
