// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_user_log_level.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSUserLogLevel extends AWSUserLogLevel {
  @override
  final _i2.LogLevel defaultLogLevel;
  @override
  final _i3.BuiltMap<_i2.Category, _i2.LogLevel> categoryLogLevel;

  factory _$AWSUserLogLevel([void Function(AWSUserLogLevelBuilder)? updates]) =>
      (new AWSUserLogLevelBuilder()..update(updates))._build();

  _$AWSUserLogLevel._(
      {required this.defaultLogLevel, required this.categoryLogLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultLogLevel, r'AWSUserLogLevel', 'defaultLogLevel');
    BuiltValueNullFieldError.checkNotNull(
        categoryLogLevel, r'AWSUserLogLevel', 'categoryLogLevel');
  }

  @override
  AWSUserLogLevel rebuild(void Function(AWSUserLogLevelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSUserLogLevelBuilder toBuilder() =>
      new AWSUserLogLevelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSUserLogLevel &&
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

class AWSUserLogLevelBuilder
    implements Builder<AWSUserLogLevel, AWSUserLogLevelBuilder> {
  _$AWSUserLogLevel? _$v;

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

  AWSUserLogLevelBuilder() {
    AWSUserLogLevel._init(this);
  }

  AWSUserLogLevelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultLogLevel = $v.defaultLogLevel;
      _categoryLogLevel = $v.categoryLogLevel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSUserLogLevel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSUserLogLevel;
  }

  @override
  void update(void Function(AWSUserLogLevelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSUserLogLevel build() => _build();

  _$AWSUserLogLevel _build() {
    _$AWSUserLogLevel _$result;
    try {
      _$result = _$v ??
          new _$AWSUserLogLevel._(
              defaultLogLevel: BuiltValueNullFieldError.checkNotNull(
                  defaultLogLevel, r'AWSUserLogLevel', 'defaultLogLevel'),
              categoryLogLevel: categoryLogLevel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryLogLevel';
        categoryLogLevel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSUserLogLevel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
