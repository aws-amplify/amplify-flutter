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
    return $jf($jc(
        $jc($jc(0, alignment.hashCode), header.hashCode), textColor.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
