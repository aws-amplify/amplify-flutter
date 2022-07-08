## 2.0.0

- Bumped min Dart SDK to 2.17
- Upgraded `package:lints` and `package:flutter_lints` dependencies to 2.0
- Migrated specs as follows:
    - `flutter_lib.yaml`, `dart.yaml` -> `library.yaml`
    - `flutter_app.yaml` -> `app.yaml`
- Ignores `implementation_imports` lint for `library.yaml` and `library_core.yaml`

Introduced the following new lints to `library.yaml`:
  - `avoid_classes_with_only_static_members`
  - `avoid_dynamic_calls`
  - `avoid_field_initializers_in_const_classes`
  - `avoid_js_rounded_ints`
  - `avoid_multiple_declarations_per_line`
  - `cascade_invocations`
  - `comment_references`
  - `conditional_uri_does_not_exist`
  - `deprecated_consistency`
  - `eol_at_end_of_file`
  - `flutter_style_todos`
  - `join_return_with_assignment`
  - `no_runtimeType_toString`
  - `noop_primitive_operations`
  - `omit_local_variable_types`
  - `prefer_asserts_in_initializer_lists`
  - `prefer_final_in_for_each`
  - `prefer_final_locals`
  - `prefer_if_elements_to_conditional_expressions`
  - `prefer_int_literals`
  - `prefer_null_aware_method_calls`
  - `require_trailing_commas`
  - `sort_constructors_first`
  - `tighten_type_of_initializing_formals`
  - `unawaited_futures`
  - `unnecessary_null_checks`
  - `use_enums`
  - `use_if_null_to_convert_nulls_to_bools`
  - `use_late_for_private_fields_and_variables`
  - `use_named_constants`
  - `use_raw_strings`
  - `use_setters_to_change_properties`
  - `use_string_buffers`
  - `use_super_parameters`
  - `use_test_throws_matchers`
  - `use_to_and_as_if_applicable`
  
Introduced the following new lints to `app.yaml`:
  - `avoid_dynamic_calls`
  - `avoid_field_initializers_in_const_classes`
  - `eol_at_end_of_file`
  - `flutter_style_todos`
  - `omit_local_variable_types`
  - `prefer_final_in_for_each`
  - `prefer_final_locals`
  - `prefer_int_literals`
  - `prefer_null_aware_method_calls`
  - `require_trailing_commas`
  - `secure_pubspec_urls`
  - `sized_box_shrink_expand`
  - `sort_constructors_first`
  - `tighten_type_of_initializing_formals`
  - `unawaited_futures`
  - `unnecessary_null_checks`
  - `use_colored_box`
  - `use_decorated_box`
  - `use_enums`
  - `use_if_null_to_convert_nulls_to_bools`
  - `use_late_for_private_fields_and_variables`
  - `use_named_constants`
  - `use_raw_strings`
  - `use_setters_to_change_properties`
  - `use_super_parameters`
  - `use_test_throws_matchers`

To allow migration to the new lints, the old lints are available as `library_core.yaml` and `app_core.yaml` with only the upgrade to `package:lints` and `package:flutter_lints` v2.0.

## 1.1.0

### Chores

- Added `depend_on_referenced_packages` and `use_build_context_synchronously` lints

## 1.0.0 (2021-09-09)

### Chores

- chore(amplify_lints): Add amplify_lints package (#808)
