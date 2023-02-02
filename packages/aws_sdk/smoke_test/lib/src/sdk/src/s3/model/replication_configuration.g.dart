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
    var _$hash = 0;
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, rules.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
