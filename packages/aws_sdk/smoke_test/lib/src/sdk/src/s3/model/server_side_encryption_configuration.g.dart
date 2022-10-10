// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.server_side_encryption_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSideEncryptionConfiguration
    extends ServerSideEncryptionConfiguration {
  @override
  final _i3.BuiltList<_i2.ServerSideEncryptionRule> rules;

  factory _$ServerSideEncryptionConfiguration(
          [void Function(ServerSideEncryptionConfigurationBuilder)? updates]) =>
      (new ServerSideEncryptionConfigurationBuilder()..update(updates))
          ._build();

  _$ServerSideEncryptionConfiguration._({required this.rules}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rules, r'ServerSideEncryptionConfiguration', 'rules');
  }

  @override
  ServerSideEncryptionConfiguration rebuild(
          void Function(ServerSideEncryptionConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSideEncryptionConfigurationBuilder toBuilder() =>
      new ServerSideEncryptionConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSideEncryptionConfiguration && rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc(0, rules.hashCode));
  }
}

class ServerSideEncryptionConfigurationBuilder
    implements
        Builder<ServerSideEncryptionConfiguration,
            ServerSideEncryptionConfigurationBuilder> {
  _$ServerSideEncryptionConfiguration? _$v;

  _i3.ListBuilder<_i2.ServerSideEncryptionRule>? _rules;
  _i3.ListBuilder<_i2.ServerSideEncryptionRule> get rules =>
      _$this._rules ??= new _i3.ListBuilder<_i2.ServerSideEncryptionRule>();
  set rules(_i3.ListBuilder<_i2.ServerSideEncryptionRule>? rules) =>
      _$this._rules = rules;

  ServerSideEncryptionConfigurationBuilder() {
    ServerSideEncryptionConfiguration._init(this);
  }

  ServerSideEncryptionConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSideEncryptionConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerSideEncryptionConfiguration;
  }

  @override
  void update(
      void Function(ServerSideEncryptionConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSideEncryptionConfiguration build() => _build();

  _$ServerSideEncryptionConfiguration _build() {
    _$ServerSideEncryptionConfiguration _$result;
    try {
      _$result = _$v ??
          new _$ServerSideEncryptionConfiguration._(rules: rules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerSideEncryptionConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
