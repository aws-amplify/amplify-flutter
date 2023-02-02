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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
