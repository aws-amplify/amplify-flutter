// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.in_app_message_content;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessageContent extends InAppMessageContent {
  @override
  final String? backgroundColor;
  @override
  final _i2.InAppMessageBodyConfig? bodyConfig;
  @override
  final _i3.InAppMessageHeaderConfig? headerConfig;
  @override
  final String? imageUrl;
  @override
  final _i4.InAppMessageButton? primaryBtn;
  @override
  final _i4.InAppMessageButton? secondaryBtn;

  factory _$InAppMessageContent(
          [void Function(InAppMessageContentBuilder)? updates]) =>
      (new InAppMessageContentBuilder()..update(updates))._build();

  _$InAppMessageContent._(
      {this.backgroundColor,
      this.bodyConfig,
      this.headerConfig,
      this.imageUrl,
      this.primaryBtn,
      this.secondaryBtn})
      : super._();

  @override
  InAppMessageContent rebuild(
          void Function(InAppMessageContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessageContentBuilder toBuilder() =>
      new InAppMessageContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessageContent &&
        backgroundColor == other.backgroundColor &&
        bodyConfig == other.bodyConfig &&
        headerConfig == other.headerConfig &&
        imageUrl == other.imageUrl &&
        primaryBtn == other.primaryBtn &&
        secondaryBtn == other.secondaryBtn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, backgroundColor.hashCode), bodyConfig.hashCode),
                    headerConfig.hashCode),
                imageUrl.hashCode),
            primaryBtn.hashCode),
        secondaryBtn.hashCode));
  }
}

class InAppMessageContentBuilder
    implements Builder<InAppMessageContent, InAppMessageContentBuilder> {
  _$InAppMessageContent? _$v;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  _i2.InAppMessageBodyConfigBuilder? _bodyConfig;
  _i2.InAppMessageBodyConfigBuilder get bodyConfig =>
      _$this._bodyConfig ??= new _i2.InAppMessageBodyConfigBuilder();
  set bodyConfig(_i2.InAppMessageBodyConfigBuilder? bodyConfig) =>
      _$this._bodyConfig = bodyConfig;

  _i3.InAppMessageHeaderConfigBuilder? _headerConfig;
  _i3.InAppMessageHeaderConfigBuilder get headerConfig =>
      _$this._headerConfig ??= new _i3.InAppMessageHeaderConfigBuilder();
  set headerConfig(_i3.InAppMessageHeaderConfigBuilder? headerConfig) =>
      _$this._headerConfig = headerConfig;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  _i4.InAppMessageButtonBuilder? _primaryBtn;
  _i4.InAppMessageButtonBuilder get primaryBtn =>
      _$this._primaryBtn ??= new _i4.InAppMessageButtonBuilder();
  set primaryBtn(_i4.InAppMessageButtonBuilder? primaryBtn) =>
      _$this._primaryBtn = primaryBtn;

  _i4.InAppMessageButtonBuilder? _secondaryBtn;
  _i4.InAppMessageButtonBuilder get secondaryBtn =>
      _$this._secondaryBtn ??= new _i4.InAppMessageButtonBuilder();
  set secondaryBtn(_i4.InAppMessageButtonBuilder? secondaryBtn) =>
      _$this._secondaryBtn = secondaryBtn;

  InAppMessageContentBuilder() {
    InAppMessageContent._init(this);
  }

  InAppMessageContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backgroundColor = $v.backgroundColor;
      _bodyConfig = $v.bodyConfig?.toBuilder();
      _headerConfig = $v.headerConfig?.toBuilder();
      _imageUrl = $v.imageUrl;
      _primaryBtn = $v.primaryBtn?.toBuilder();
      _secondaryBtn = $v.secondaryBtn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessageContent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessageContent;
  }

  @override
  void update(void Function(InAppMessageContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessageContent build() => _build();

  _$InAppMessageContent _build() {
    _$InAppMessageContent _$result;
    try {
      _$result = _$v ??
          new _$InAppMessageContent._(
              backgroundColor: backgroundColor,
              bodyConfig: _bodyConfig?.build(),
              headerConfig: _headerConfig?.build(),
              imageUrl: imageUrl,
              primaryBtn: _primaryBtn?.build(),
              secondaryBtn: _secondaryBtn?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'bodyConfig';
        _bodyConfig?.build();
        _$failedField = 'headerConfig';
        _headerConfig?.build();

        _$failedField = 'primaryBtn';
        _primaryBtn?.build();
        _$failedField = 'secondaryBtn';
        _secondaryBtn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InAppMessageContent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
