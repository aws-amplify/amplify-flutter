// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.scope;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Scope extends Scope {
  @override
  final String? complianceResourceId;
  @override
  final _i2.BuiltList<String>? complianceResourceTypes;
  @override
  final String? tagKey;
  @override
  final String? tagValue;

  factory _$Scope([void Function(ScopeBuilder)? updates]) =>
      (new ScopeBuilder()..update(updates))._build();

  _$Scope._(
      {this.complianceResourceId,
      this.complianceResourceTypes,
      this.tagKey,
      this.tagValue})
      : super._();

  @override
  Scope rebuild(void Function(ScopeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScopeBuilder toBuilder() => new ScopeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Scope &&
        complianceResourceId == other.complianceResourceId &&
        complianceResourceTypes == other.complianceResourceTypes &&
        tagKey == other.tagKey &&
        tagValue == other.tagValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceResourceId.hashCode);
    _$hash = $jc(_$hash, complianceResourceTypes.hashCode);
    _$hash = $jc(_$hash, tagKey.hashCode);
    _$hash = $jc(_$hash, tagValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScopeBuilder implements Builder<Scope, ScopeBuilder> {
  _$Scope? _$v;

  String? _complianceResourceId;
  String? get complianceResourceId => _$this._complianceResourceId;
  set complianceResourceId(String? complianceResourceId) =>
      _$this._complianceResourceId = complianceResourceId;

  _i2.ListBuilder<String>? _complianceResourceTypes;
  _i2.ListBuilder<String> get complianceResourceTypes =>
      _$this._complianceResourceTypes ??= new _i2.ListBuilder<String>();
  set complianceResourceTypes(
          _i2.ListBuilder<String>? complianceResourceTypes) =>
      _$this._complianceResourceTypes = complianceResourceTypes;

  String? _tagKey;
  String? get tagKey => _$this._tagKey;
  set tagKey(String? tagKey) => _$this._tagKey = tagKey;

  String? _tagValue;
  String? get tagValue => _$this._tagValue;
  set tagValue(String? tagValue) => _$this._tagValue = tagValue;

  ScopeBuilder() {
    Scope._init(this);
  }

  ScopeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceResourceId = $v.complianceResourceId;
      _complianceResourceTypes = $v.complianceResourceTypes?.toBuilder();
      _tagKey = $v.tagKey;
      _tagValue = $v.tagValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Scope other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Scope;
  }

  @override
  void update(void Function(ScopeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Scope build() => _build();

  _$Scope _build() {
    _$Scope _$result;
    try {
      _$result = _$v ??
          new _$Scope._(
              complianceResourceId: complianceResourceId,
              complianceResourceTypes: _complianceResourceTypes?.build(),
              tagKey: tagKey,
              tagValue: tagValue);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceResourceTypes';
        _complianceResourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Scope', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
