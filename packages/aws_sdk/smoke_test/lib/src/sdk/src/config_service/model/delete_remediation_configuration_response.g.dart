// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_remediation_configuration_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRemediationConfigurationResponse
    extends DeleteRemediationConfigurationResponse {
  factory _$DeleteRemediationConfigurationResponse(
          [void Function(DeleteRemediationConfigurationResponseBuilder)?
              updates]) =>
      (new DeleteRemediationConfigurationResponseBuilder()..update(updates))
          ._build();

  _$DeleteRemediationConfigurationResponse._() : super._();

  @override
  DeleteRemediationConfigurationResponse rebuild(
          void Function(DeleteRemediationConfigurationResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRemediationConfigurationResponseBuilder toBuilder() =>
      new DeleteRemediationConfigurationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRemediationConfigurationResponse;
  }

  @override
  int get hashCode {
    return 934275994;
  }
}

class DeleteRemediationConfigurationResponseBuilder
    implements
        Builder<DeleteRemediationConfigurationResponse,
            DeleteRemediationConfigurationResponseBuilder> {
  _$DeleteRemediationConfigurationResponse? _$v;

  DeleteRemediationConfigurationResponseBuilder() {
    DeleteRemediationConfigurationResponse._init(this);
  }

  @override
  void replace(DeleteRemediationConfigurationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRemediationConfigurationResponse;
  }

  @override
  void update(
      void Function(DeleteRemediationConfigurationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRemediationConfigurationResponse build() => _build();

  _$DeleteRemediationConfigurationResponse _build() {
    final _$result = _$v ?? new _$DeleteRemediationConfigurationResponse._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
