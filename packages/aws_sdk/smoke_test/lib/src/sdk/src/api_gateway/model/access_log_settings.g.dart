// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.access_log_settings;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessLogSettings extends AccessLogSettings {
  @override
  final String? destinationArn;
  @override
  final String? format;

  factory _$AccessLogSettings(
          [void Function(AccessLogSettingsBuilder)? updates]) =>
      (new AccessLogSettingsBuilder()..update(updates))._build();

  _$AccessLogSettings._({this.destinationArn, this.format}) : super._();

  @override
  AccessLogSettings rebuild(void Function(AccessLogSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessLogSettingsBuilder toBuilder() =>
      new AccessLogSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessLogSettings &&
        destinationArn == other.destinationArn &&
        format == other.format;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, destinationArn.hashCode), format.hashCode));
  }
}

class AccessLogSettingsBuilder
    implements Builder<AccessLogSettings, AccessLogSettingsBuilder> {
  _$AccessLogSettings? _$v;

  String? _destinationArn;
  String? get destinationArn => _$this._destinationArn;
  set destinationArn(String? destinationArn) =>
      _$this._destinationArn = destinationArn;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  AccessLogSettingsBuilder() {
    AccessLogSettings._init(this);
  }

  AccessLogSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationArn = $v.destinationArn;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessLogSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessLogSettings;
  }

  @override
  void update(void Function(AccessLogSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessLogSettings build() => _build();

  _$AccessLogSettings _build() {
    final _$result = _$v ??
        new _$AccessLogSettings._(
            destinationArn: destinationArn, format: format);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
