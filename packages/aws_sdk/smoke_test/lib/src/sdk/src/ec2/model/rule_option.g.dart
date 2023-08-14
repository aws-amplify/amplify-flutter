// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleOption extends RuleOption {
  @override
  final String? keyword;
  @override
  final _i2.BuiltList<String>? settings;

  factory _$RuleOption([void Function(RuleOptionBuilder)? updates]) =>
      (new RuleOptionBuilder()..update(updates))._build();

  _$RuleOption._({this.keyword, this.settings}) : super._();

  @override
  RuleOption rebuild(void Function(RuleOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleOptionBuilder toBuilder() => new RuleOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleOption &&
        keyword == other.keyword &&
        settings == other.settings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyword.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RuleOptionBuilder implements Builder<RuleOption, RuleOptionBuilder> {
  _$RuleOption? _$v;

  String? _keyword;
  String? get keyword => _$this._keyword;
  set keyword(String? keyword) => _$this._keyword = keyword;

  _i2.ListBuilder<String>? _settings;
  _i2.ListBuilder<String> get settings =>
      _$this._settings ??= new _i2.ListBuilder<String>();
  set settings(_i2.ListBuilder<String>? settings) =>
      _$this._settings = settings;

  RuleOptionBuilder();

  RuleOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyword = $v.keyword;
      _settings = $v.settings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RuleOption;
  }

  @override
  void update(void Function(RuleOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleOption build() => _build();

  _$RuleOption _build() {
    _$RuleOption _$result;
    try {
      _$result = _$v ??
          new _$RuleOption._(keyword: keyword, settings: _settings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RuleOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
