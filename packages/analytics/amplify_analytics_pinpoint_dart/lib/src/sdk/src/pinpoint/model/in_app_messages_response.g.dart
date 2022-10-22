// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.in_app_messages_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InAppMessagesResponse extends InAppMessagesResponse {
  @override
  final _i2.BuiltList<_i3.InAppMessageCampaign>? inAppMessageCampaigns;

  factory _$InAppMessagesResponse(
          [void Function(InAppMessagesResponseBuilder)? updates]) =>
      (new InAppMessagesResponseBuilder()..update(updates))._build();

  _$InAppMessagesResponse._({this.inAppMessageCampaigns}) : super._();

  @override
  InAppMessagesResponse rebuild(
          void Function(InAppMessagesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InAppMessagesResponseBuilder toBuilder() =>
      new InAppMessagesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InAppMessagesResponse &&
        inAppMessageCampaigns == other.inAppMessageCampaigns;
  }

  @override
  int get hashCode {
    return $jf($jc(0, inAppMessageCampaigns.hashCode));
  }
}

class InAppMessagesResponseBuilder
    implements Builder<InAppMessagesResponse, InAppMessagesResponseBuilder> {
  _$InAppMessagesResponse? _$v;

  _i2.ListBuilder<_i3.InAppMessageCampaign>? _inAppMessageCampaigns;
  _i2.ListBuilder<_i3.InAppMessageCampaign> get inAppMessageCampaigns =>
      _$this._inAppMessageCampaigns ??=
          new _i2.ListBuilder<_i3.InAppMessageCampaign>();
  set inAppMessageCampaigns(
          _i2.ListBuilder<_i3.InAppMessageCampaign>? inAppMessageCampaigns) =>
      _$this._inAppMessageCampaigns = inAppMessageCampaigns;

  InAppMessagesResponseBuilder() {
    InAppMessagesResponse._init(this);
  }

  InAppMessagesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inAppMessageCampaigns = $v.inAppMessageCampaigns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InAppMessagesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InAppMessagesResponse;
  }

  @override
  void update(void Function(InAppMessagesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InAppMessagesResponse build() => _build();

  _$InAppMessagesResponse _build() {
    _$InAppMessagesResponse _$result;
    try {
      _$result = _$v ??
          new _$InAppMessagesResponse._(
              inAppMessageCampaigns: _inAppMessageCampaigns?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inAppMessageCampaigns';
        _inAppMessageCampaigns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InAppMessagesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
