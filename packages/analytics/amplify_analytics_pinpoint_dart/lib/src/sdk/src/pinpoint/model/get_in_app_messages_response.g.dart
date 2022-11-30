// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.get_in_app_messages_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInAppMessagesResponse extends GetInAppMessagesResponse {
  @override
  final _i3.InAppMessagesResponse inAppMessagesResponse;

  factory _$GetInAppMessagesResponse(
          [void Function(GetInAppMessagesResponseBuilder)? updates]) =>
      (new GetInAppMessagesResponseBuilder()..update(updates))._build();

  _$GetInAppMessagesResponse._({required this.inAppMessagesResponse})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(inAppMessagesResponse,
        r'GetInAppMessagesResponse', 'inAppMessagesResponse');
  }

  @override
  GetInAppMessagesResponse rebuild(
          void Function(GetInAppMessagesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInAppMessagesResponseBuilder toBuilder() =>
      new GetInAppMessagesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInAppMessagesResponse &&
        inAppMessagesResponse == other.inAppMessagesResponse;
  }

  @override
  int get hashCode {
    return $jf($jc(0, inAppMessagesResponse.hashCode));
  }
}

class GetInAppMessagesResponseBuilder
    implements
        Builder<GetInAppMessagesResponse, GetInAppMessagesResponseBuilder> {
  _$GetInAppMessagesResponse? _$v;

  _i3.InAppMessagesResponseBuilder? _inAppMessagesResponse;
  _i3.InAppMessagesResponseBuilder get inAppMessagesResponse =>
      _$this._inAppMessagesResponse ??= new _i3.InAppMessagesResponseBuilder();
  set inAppMessagesResponse(
          _i3.InAppMessagesResponseBuilder? inAppMessagesResponse) =>
      _$this._inAppMessagesResponse = inAppMessagesResponse;

  GetInAppMessagesResponseBuilder() {
    GetInAppMessagesResponse._init(this);
  }

  GetInAppMessagesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inAppMessagesResponse = $v.inAppMessagesResponse.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInAppMessagesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInAppMessagesResponse;
  }

  @override
  void update(void Function(GetInAppMessagesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInAppMessagesResponse build() => _build();

  _$GetInAppMessagesResponse _build() {
    _$GetInAppMessagesResponse _$result;
    try {
      _$result = _$v ??
          new _$GetInAppMessagesResponse._(
              inAppMessagesResponse: inAppMessagesResponse.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inAppMessagesResponse';
        inAppMessagesResponse.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetInAppMessagesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
