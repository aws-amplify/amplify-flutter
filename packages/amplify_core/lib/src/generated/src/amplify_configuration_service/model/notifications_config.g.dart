// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationsConfig extends NotificationsConfig {
  @override
  final _i2.PushNotificationsConfig? push;

  factory _$NotificationsConfig(
          [void Function(NotificationsConfigBuilder)? updates]) =>
      (new NotificationsConfigBuilder()..update(updates))._build();

  _$NotificationsConfig._({this.push}) : super._();

  @override
  NotificationsConfig rebuild(
          void Function(NotificationsConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsConfigBuilder toBuilder() =>
      new NotificationsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsConfig && push == other.push;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, push.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NotificationsConfigBuilder
    implements Builder<NotificationsConfig, NotificationsConfigBuilder> {
  _$NotificationsConfig? _$v;

  _i2.PushNotificationsConfig? _push;
  _i2.PushNotificationsConfig? get push => _$this._push;
  set push(_i2.PushNotificationsConfig? push) => _$this._push = push;

  NotificationsConfigBuilder();

  NotificationsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _push = $v.push;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsConfig;
  }

  @override
  void update(void Function(NotificationsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsConfig build() => _build();

  _$NotificationsConfig _build() {
    final _$result = _$v ?? new _$NotificationsConfig._(push: push);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
