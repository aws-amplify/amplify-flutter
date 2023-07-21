// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_amplify_logging_constraints.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAmplifyLoggingConstraints extends AWSAmplifyLoggingConstraints {
  @override
  final _i2.LogLevel defaultLogLevel;
  @override
  final _i4.BuiltMap<_i2.Category, _i2.LogLevel> categoryLogLevel;
  @override
  final _i4.BuiltMap<String, _i3.AWSUserLogLevel> userLogLevel;

  factory _$AWSAmplifyLoggingConstraints(
          [void Function(AWSAmplifyLoggingConstraintsBuilder)? updates]) =>
      (new AWSAmplifyLoggingConstraintsBuilder()..update(updates))._build();

  _$AWSAmplifyLoggingConstraints._(
      {required this.defaultLogLevel,
      required this.categoryLogLevel,
      required this.userLogLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        defaultLogLevel, r'AWSAmplifyLoggingConstraints', 'defaultLogLevel');
    BuiltValueNullFieldError.checkNotNull(
        categoryLogLevel, r'AWSAmplifyLoggingConstraints', 'categoryLogLevel');
    BuiltValueNullFieldError.checkNotNull(
        userLogLevel, r'AWSAmplifyLoggingConstraints', 'userLogLevel');
  }

  @override
  AWSAmplifyLoggingConstraints rebuild(
          void Function(AWSAmplifyLoggingConstraintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAmplifyLoggingConstraintsBuilder toBuilder() =>
      new AWSAmplifyLoggingConstraintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAmplifyLoggingConstraints &&
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

class AWSAmplifyLoggingConstraintsBuilder
    implements
        Builder<AWSAmplifyLoggingConstraints,
            AWSAmplifyLoggingConstraintsBuilder> {
  _$AWSAmplifyLoggingConstraints? _$v;

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

  _i4.MapBuilder<String, _i3.AWSUserLogLevel>? _userLogLevel;
  _i4.MapBuilder<String, _i3.AWSUserLogLevel> get userLogLevel =>
      _$this._userLogLevel ??=
          new _i4.MapBuilder<String, _i3.AWSUserLogLevel>();
  set userLogLevel(_i4.MapBuilder<String, _i3.AWSUserLogLevel>? userLogLevel) =>
      _$this._userLogLevel = userLogLevel;

  AWSAmplifyLoggingConstraintsBuilder() {
    AWSAmplifyLoggingConstraints._init(this);
  }

  AWSAmplifyLoggingConstraintsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _defaultLogLevel = $v.defaultLogLevel;
      _categoryLogLevel = $v.categoryLogLevel.toBuilder();
      _userLogLevel = $v.userLogLevel.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAmplifyLoggingConstraints other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAmplifyLoggingConstraints;
  }

  @override
  void update(void Function(AWSAmplifyLoggingConstraintsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAmplifyLoggingConstraints build() => _build();

  _$AWSAmplifyLoggingConstraints _build() {
    _$AWSAmplifyLoggingConstraints _$result;
    try {
      _$result = _$v ??
          new _$AWSAmplifyLoggingConstraints._(
              defaultLogLevel: BuiltValueNullFieldError.checkNotNull(
                  defaultLogLevel,
                  r'AWSAmplifyLoggingConstraints',
                  'defaultLogLevel'),
              categoryLogLevel: categoryLogLevel.build(),
              userLogLevel: userLogLevel.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categoryLogLevel';
        categoryLogLevel.build();
        _$failedField = 'userLogLevel';
        userLogLevel.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSAmplifyLoggingConstraints', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
