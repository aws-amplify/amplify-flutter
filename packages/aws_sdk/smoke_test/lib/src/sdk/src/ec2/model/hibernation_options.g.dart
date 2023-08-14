// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hibernation_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HibernationOptions extends HibernationOptions {
  @override
  final bool configured;

  factory _$HibernationOptions(
          [void Function(HibernationOptionsBuilder)? updates]) =>
      (new HibernationOptionsBuilder()..update(updates))._build();

  _$HibernationOptions._({required this.configured}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configured, r'HibernationOptions', 'configured');
  }

  @override
  HibernationOptions rebuild(
          void Function(HibernationOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HibernationOptionsBuilder toBuilder() =>
      new HibernationOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HibernationOptions && configured == other.configured;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configured.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HibernationOptionsBuilder
    implements Builder<HibernationOptions, HibernationOptionsBuilder> {
  _$HibernationOptions? _$v;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  HibernationOptionsBuilder() {
    HibernationOptions._init(this);
  }

  HibernationOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configured = $v.configured;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HibernationOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HibernationOptions;
  }

  @override
  void update(void Function(HibernationOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HibernationOptions build() => _build();

  _$HibernationOptions _build() {
    final _$result = _$v ??
        new _$HibernationOptions._(
            configured: BuiltValueNullFieldError.checkNotNull(
                configured, r'HibernationOptions', 'configured'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
