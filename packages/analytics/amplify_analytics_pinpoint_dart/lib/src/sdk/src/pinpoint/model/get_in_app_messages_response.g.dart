// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_in_app_messages_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInAppMessagesResponse extends GetInAppMessagesResponse {
  @override
  final InAppMessagesResponse inAppMessagesResponse;

  factory _$GetInAppMessagesResponse([
    void Function(GetInAppMessagesResponseBuilder)? updates,
  ]) => (GetInAppMessagesResponseBuilder()..update(updates))._build();

  _$GetInAppMessagesResponse._({required this.inAppMessagesResponse})
    : super._();
  @override
  GetInAppMessagesResponse rebuild(
    void Function(GetInAppMessagesResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetInAppMessagesResponseBuilder toBuilder() =>
      GetInAppMessagesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInAppMessagesResponse &&
        inAppMessagesResponse == other.inAppMessagesResponse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inAppMessagesResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInAppMessagesResponseBuilder
    implements
        Builder<GetInAppMessagesResponse, GetInAppMessagesResponseBuilder> {
  _$GetInAppMessagesResponse? _$v;

  InAppMessagesResponseBuilder? _inAppMessagesResponse;
  InAppMessagesResponseBuilder get inAppMessagesResponse =>
      _$this._inAppMessagesResponse ??= InAppMessagesResponseBuilder();
  set inAppMessagesResponse(
    InAppMessagesResponseBuilder? inAppMessagesResponse,
  ) => _$this._inAppMessagesResponse = inAppMessagesResponse;

  GetInAppMessagesResponseBuilder();

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
      _$result =
          _$v ??
          _$GetInAppMessagesResponse._(
            inAppMessagesResponse: inAppMessagesResponse.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inAppMessagesResponse';
        inAppMessagesResponse.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetInAppMessagesResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
