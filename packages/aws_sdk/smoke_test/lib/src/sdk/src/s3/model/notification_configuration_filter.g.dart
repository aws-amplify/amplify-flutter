// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.notification_configuration_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NotificationConfigurationFilter
    extends NotificationConfigurationFilter {
  @override
  final _i2.S3KeyFilter? key;

  factory _$NotificationConfigurationFilter(
          [void Function(NotificationConfigurationFilterBuilder)? updates]) =>
      (new NotificationConfigurationFilterBuilder()..update(updates))._build();

  _$NotificationConfigurationFilter._({this.key}) : super._();

  @override
  NotificationConfigurationFilter rebuild(
          void Function(NotificationConfigurationFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationConfigurationFilterBuilder toBuilder() =>
      new NotificationConfigurationFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationConfigurationFilter && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NotificationConfigurationFilterBuilder
    implements
        Builder<NotificationConfigurationFilter,
            NotificationConfigurationFilterBuilder> {
  _$NotificationConfigurationFilter? _$v;

  _i2.S3KeyFilterBuilder? _key;
  _i2.S3KeyFilterBuilder get key =>
      _$this._key ??= new _i2.S3KeyFilterBuilder();
  set key(_i2.S3KeyFilterBuilder? key) => _$this._key = key;

  NotificationConfigurationFilterBuilder() {
    NotificationConfigurationFilter._init(this);
  }

  NotificationConfigurationFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationConfigurationFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationConfigurationFilter;
  }

  @override
  void update(void Function(NotificationConfigurationFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationConfigurationFilter build() => _build();

  _$NotificationConfigurationFilter _build() {
    _$NotificationConfigurationFilter _$result;
    try {
      _$result =
          _$v ?? new _$NotificationConfigurationFilter._(key: _key?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        _key?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationConfigurationFilter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
