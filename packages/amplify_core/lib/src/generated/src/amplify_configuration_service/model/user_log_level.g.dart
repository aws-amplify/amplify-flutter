// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLogLevel extends UserLogLevel {
  @override
  final _i2.LogLevel defaultLogLevel;
  @override
  final _i3.BuiltMap<_i2.Category, _i2.LogLevel>? categoryLogLevel;

  factory _$UserLogLevel([void Function(UserLogLevelBuilder)? updates]) =>
      (new UserLogLevelBuilder()..update(updates))._build();

  _$UserLogLevel._({required this.defaultLogLevel, this.categoryLogLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultLogLevel, r'UserLogLevel', 'defaultLogLevel');
  }

  @override
  UserLogLevel rebuild(void Function(UserLogLevelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLogLevelBuilder toBuilder() => new UserLogLevelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLogLevel &&
        defaultLogLevel == other.defaultLogLevel &&
        categoryLogLevel == other.categoryLogLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, defaultLogLevel.hashCode);
    _$hash = $jc(_$hash, categoryLogLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserLogLevelBuilder
    implements Builder<UserLogLevel, UserLogLevelBuilder> {
  _$UserLogLevel? _$v;

  _i2.LogLevel? _defaultLogLevel;
  _i2.LogLevel? get defaultLogLevel => _$this._defaultLogLevel;
  set defaultLogLevel(_i2.LogLevel? defaultLogLevel) =>
      _$this._defaultLogLevel = defaultLogLevel;

  _i3.MapBuilder<_i2.Category, _i2.LogLevel>? _categoryLogLevel;
  _i3.MapBuilder<_i2.Category, _i2.LogLevel> get categoryLogLevel =>
      _$this._categoryLogLevel ??=
          new _i3.MapBuilder<_i2.Category, _i2.LogLevel>();
  set categoryLogLevel(
          _i3.MapBuilder<_i2.Category, _i2.LogLevel>? categoryLogLevel) =>
      _$this._categoryLogLevel = categoryLogLevel;

  UserLogLevelBuilder() {
    UserLogLevel._init(this);
  }

  UserLogLevelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultLogLevel = $v.defaultLogLevel;
      _categoryLogLevel = $v.categoryLogLevel?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLogLevel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLogLevel;
  }

  @override
  void update(void Function(UserLogLevelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLogLevel build() => _build();

  _$UserLogLevel _build() {
    _$UserLogLevel _$result;
    try {
      _$result = _$v ??
          new _$UserLogLevel._(
              defaultLogLevel: BuiltValueNullFieldError.checkNotNull(
                  defaultLogLevel, r'UserLogLevel', 'defaultLogLevel'),
              categoryLogLevel: _categoryLogLevel?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryLogLevel';
        _categoryLogLevel?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserLogLevel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
