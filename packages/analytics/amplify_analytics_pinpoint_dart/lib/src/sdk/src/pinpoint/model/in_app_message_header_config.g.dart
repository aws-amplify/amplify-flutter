// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_header_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageHeaderConfig extends InAppMessageHeaderConfig {
  @override
  final _i2.Alignment alignment;
  @override
  final String header;
  @override
  final String textColor;

  factory _$InAppMessageHeaderConfig(
          [void Function(InAppMessageHeaderConfigBuilder)? updates]) =>
      (new InAppMessageHeaderConfigBuilder()..update(updates))._build();

  _$InAppMessageHeaderConfig._(
      {required this.alignment, required this.header, required this.textColor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        alignment, r'InAppMessageHeaderConfig', 'alignment');
    BuiltValueNullFieldError.checkNotNull(
        header, r'InAppMessageHeaderConfig', 'header');
    BuiltValueNullFieldError.checkNotNull(
        textColor, r'InAppMessageHeaderConfig', 'textColor');
  }

  @override
  InAppMessageHeaderConfig rebuild(
          void Function(InAppMessageHeaderConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessageHeaderConfigBuilder toBuilder() =>
      new InAppMessageHeaderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessageHeaderConfig &&
        alignment == other.alignment &&
        header == other.header &&
        textColor == other.textColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alignment.hashCode);
    _$hash = $jc(_$hash, header.hashCode);
    _$hash = $jc(_$hash, textColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InAppMessageHeaderConfigBuilder
    implements
        Builder<InAppMessageHeaderConfig, InAppMessageHeaderConfigBuilder> {
  _$InAppMessageHeaderConfig? _$v;

  _i2.Alignment? _alignment;
  _i2.Alignment? get alignment => _$this._alignment;
  set alignment(_i2.Alignment? alignment) => _$this._alignment = alignment;

  String? _header;
  String? get header => _$this._header;
  set header(String? header) => _$this._header = header;

  String? _textColor;
  String? get textColor => _$this._textColor;
  set textColor(String? textColor) => _$this._textColor = textColor;

  InAppMessageHeaderConfigBuilder() {
    InAppMessageHeaderConfig._init(this);
  }

  InAppMessageHeaderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alignment = $v.alignment;
      _header = $v.header;
      _textColor = $v.textColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessageHeaderConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessageHeaderConfig;
  }

  @override
  void update(void Function(InAppMessageHeaderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessageHeaderConfig build() => _build();

  _$InAppMessageHeaderConfig _build() {
    final _$result = _$v ??
        new _$InAppMessageHeaderConfig._(
            alignment: BuiltValueNullFieldError.checkNotNull(
                alignment, r'InAppMessageHeaderConfig', 'alignment'),
            header: BuiltValueNullFieldError.checkNotNull(
                header, r'InAppMessageHeaderConfig', 'header'),
            textColor: BuiltValueNullFieldError.checkNotNull(
                textColor, r'InAppMessageHeaderConfig', 'textColor'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
