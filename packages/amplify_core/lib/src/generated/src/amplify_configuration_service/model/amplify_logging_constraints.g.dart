// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amplify_logging_constraints.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AmplifyLoggingConstraints extends AmplifyLoggingConstraints {
  @override
  final _i2.LogLevel defaultLogLevel;
  @override
  final _i4.BuiltMap<_i2.Category, _i2.LogLevel>? categoryLogLevel;
  @override
  final _i4.BuiltMap<String, _i3.UserLogLevel>? userLogLevel;

  factory _$AmplifyLoggingConstraints(
          [void Function(AmplifyLoggingConstraintsBuilder)? updates]) =>
      (new AmplifyLoggingConstraintsBuilder()..update(updates))._build();

  _$AmplifyLoggingConstraints._(
      {required this.defaultLogLevel, this.categoryLogLevel, this.userLogLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultLogLevel, r'AmplifyLoggingConstraints', 'defaultLogLevel');
  }

  @override
  AmplifyLoggingConstraints rebuild(
          void Function(AmplifyLoggingConstraintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AmplifyLoggingConstraintsBuilder toBuilder() =>
      new AmplifyLoggingConstraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmplifyLoggingConstraints &&
        defaultLogLevel == other.defaultLogLevel &&
        categoryLogLevel == other.categoryLogLevel &&
        userLogLevel == other.userLogLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultLogLevel.hashCode);
    _$hash = $jc(_$hash, categoryLogLevel.hashCode);
    _$hash = $jc(_$hash, userLogLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AmplifyLoggingConstraintsBuilder
    implements
        Builder<AmplifyLoggingConstraints, AmplifyLoggingConstraintsBuilder> {
  _$AmplifyLoggingConstraints? _$v;

  _i2.LogLevel? _defaultLogLevel;
  _i2.LogLevel? get defaultLogLevel => _$this._defaultLogLevel;
  set defaultLogLevel(_i2.LogLevel? defaultLogLevel) =>
      _$this._defaultLogLevel = defaultLogLevel;

  _i4.MapBuilder<_i2.Category, _i2.LogLevel>? _categoryLogLevel;
  _i4.MapBuilder<_i2.Category, _i2.LogLevel> get categoryLogLevel =>
      _$this._categoryLogLevel ??=
          new _i4.MapBuilder<_i2.Category, _i2.LogLevel>();
  set categoryLogLevel(
          _i4.MapBuilder<_i2.Category, _i2.LogLevel>? categoryLogLevel) =>
      _$this._categoryLogLevel = categoryLogLevel;

  _i4.MapBuilder<String, _i3.UserLogLevel>? _userLogLevel;
  _i4.MapBuilder<String, _i3.UserLogLevel> get userLogLevel =>
      _$this._userLogLevel ??= new _i4.MapBuilder<String, _i3.UserLogLevel>();
  set userLogLevel(_i4.MapBuilder<String, _i3.UserLogLevel>? userLogLevel) =>
      _$this._userLogLevel = userLogLevel;

  AmplifyLoggingConstraintsBuilder() {
    AmplifyLoggingConstraints._init(this);
  }

  AmplifyLoggingConstraintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultLogLevel = $v.defaultLogLevel;
      _categoryLogLevel = $v.categoryLogLevel?.toBuilder();
      _userLogLevel = $v.userLogLevel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmplifyLoggingConstraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AmplifyLoggingConstraints;
  }

  @override
  void update(void Function(AmplifyLoggingConstraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmplifyLoggingConstraints build() => _build();

  _$AmplifyLoggingConstraints _build() {
    _$AmplifyLoggingConstraints _$result;
    try {
      _$result = _$v ??
          new _$AmplifyLoggingConstraints._(
              defaultLogLevel: BuiltValueNullFieldError.checkNotNull(
                  defaultLogLevel,
                  r'AmplifyLoggingConstraints',
                  'defaultLogLevel'),
              categoryLogLevel: _categoryLogLevel?.build(),
              userLogLevel: _userLogLevel?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryLogLevel';
        _categoryLogLevel?.build();
        _$failedField = 'userLogLevel';
        _userLogLevel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AmplifyLoggingConstraints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
