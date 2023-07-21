// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_notifications_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSNotificationsConfig extends AWSNotificationsConfig {
  @override
  final _i2.AWSPushNotificationsConfig? push;

  factory _$AWSNotificationsConfig(
          [void Function(AWSNotificationsConfigBuilder)? updates]) =>
      (new AWSNotificationsConfigBuilder()..update(updates))._build();

  _$AWSNotificationsConfig._({this.push}) : super._();

  @override
  AWSNotificationsConfig rebuild(
          void Function(AWSNotificationsConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSNotificationsConfigBuilder toBuilder() =>
      new AWSNotificationsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSNotificationsConfig && push == other.push;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, push.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSNotificationsConfigBuilder
    implements Builder<AWSNotificationsConfig, AWSNotificationsConfigBuilder> {
  _$AWSNotificationsConfig? _$v;

  _i2.AWSPushNotificationsConfig? _push;
  _i2.AWSPushNotificationsConfig? get push => _$this._push;
  set push(_i2.AWSPushNotificationsConfig? push) => _$this._push = push;

  AWSNotificationsConfigBuilder();

  AWSNotificationsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _push = $v.push;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSNotificationsConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSNotificationsConfig;
  }

  @override
  void update(void Function(AWSNotificationsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSNotificationsConfig build() => _build();

  _$AWSNotificationsConfig _build() {
    final _$result = _$v ?? new _$AWSNotificationsConfig._(push: push);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
