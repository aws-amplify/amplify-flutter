// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replication_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicationConfiguration extends ReplicationConfiguration {
  @override
  final String role;
  @override
  final _i3.BuiltList<_i2.ReplicationRule> rules;

  factory _$ReplicationConfiguration(
          [void Function(ReplicationConfigurationBuilder)? updates]) =>
      (new ReplicationConfigurationBuilder()..update(updates))._build();

  _$ReplicationConfiguration._({required this.role, required this.rules})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        role, r'ReplicationConfiguration', 'role');
    BuiltValueNullFieldError.checkNotNull(
        rules, r'ReplicationConfiguration', 'rules');
  }

  @override
  ReplicationConfiguration rebuild(
          void Function(ReplicationConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicationConfigurationBuilder toBuilder() =>
      new ReplicationConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicationConfiguration &&
        role == other.role &&
        rules == other.rules;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, role.hashCode), rules.hashCode));
  }
}

class ReplicationConfigurationBuilder
    implements
        Builder<ReplicationConfiguration, ReplicationConfigurationBuilder> {
  _$ReplicationConfiguration? _$v;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  _i3.ListBuilder<_i2.ReplicationRule>? _rules;
  _i3.ListBuilder<_i2.ReplicationRule> get rules =>
      _$this._rules ??= new _i3.ListBuilder<_i2.ReplicationRule>();
  set rules(_i3.ListBuilder<_i2.ReplicationRule>? rules) =>
      _$this._rules = rules;

  ReplicationConfigurationBuilder() {
    ReplicationConfiguration._init(this);
  }

  ReplicationConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _role = $v.role;
      _rules = $v.rules.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicationConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicationConfiguration;
  }

  @override
  void update(void Function(ReplicationConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicationConfiguration build() => _build();

  _$ReplicationConfiguration _build() {
    _$ReplicationConfiguration _$result;
    try {
      _$result = _$v ??
          new _$ReplicationConfiguration._(
              role: BuiltValueNullFieldError.checkNotNull(
                  role, r'ReplicationConfiguration', 'role'),
              rules: rules.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rules';
        rules.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicationConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
