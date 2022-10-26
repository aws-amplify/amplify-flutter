// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.server_side_encryption_rule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSideEncryptionRule extends ServerSideEncryptionRule {
  @override
  final _i2.ServerSideEncryptionByDefault? applyServerSideEncryptionByDefault;
  @override
  final bool? bucketKeyEnabled;

  factory _$ServerSideEncryptionRule(
          [void Function(ServerSideEncryptionRuleBuilder)? updates]) =>
      (new ServerSideEncryptionRuleBuilder()..update(updates))._build();

  _$ServerSideEncryptionRule._(
      {this.applyServerSideEncryptionByDefault, this.bucketKeyEnabled})
      : super._();

  @override
  ServerSideEncryptionRule rebuild(
          void Function(ServerSideEncryptionRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSideEncryptionRuleBuilder toBuilder() =>
      new ServerSideEncryptionRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSideEncryptionRule &&
        applyServerSideEncryptionByDefault ==
            other.applyServerSideEncryptionByDefault &&
        bucketKeyEnabled == other.bucketKeyEnabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, applyServerSideEncryptionByDefault.hashCode),
        bucketKeyEnabled.hashCode));
  }
}

class ServerSideEncryptionRuleBuilder
    implements
        Builder<ServerSideEncryptionRule, ServerSideEncryptionRuleBuilder> {
  _$ServerSideEncryptionRule? _$v;

  _i2.ServerSideEncryptionByDefaultBuilder? _applyServerSideEncryptionByDefault;
  _i2.ServerSideEncryptionByDefaultBuilder
      get applyServerSideEncryptionByDefault =>
          _$this._applyServerSideEncryptionByDefault ??=
              new _i2.ServerSideEncryptionByDefaultBuilder();
  set applyServerSideEncryptionByDefault(
          _i2.ServerSideEncryptionByDefaultBuilder?
              applyServerSideEncryptionByDefault) =>
      _$this._applyServerSideEncryptionByDefault =
          applyServerSideEncryptionByDefault;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  ServerSideEncryptionRuleBuilder() {
    ServerSideEncryptionRule._init(this);
  }

  ServerSideEncryptionRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applyServerSideEncryptionByDefault =
          $v.applyServerSideEncryptionByDefault?.toBuilder();
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSideEncryptionRule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerSideEncryptionRule;
  }

  @override
  void update(void Function(ServerSideEncryptionRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSideEncryptionRule build() => _build();

  _$ServerSideEncryptionRule _build() {
    _$ServerSideEncryptionRule _$result;
    try {
      _$result = _$v ??
          new _$ServerSideEncryptionRule._(
              applyServerSideEncryptionByDefault:
                  _applyServerSideEncryptionByDefault?.build(),
              bucketKeyEnabled: bucketKeyEnabled);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'applyServerSideEncryptionByDefault';
        _applyServerSideEncryptionByDefault?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerSideEncryptionRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
