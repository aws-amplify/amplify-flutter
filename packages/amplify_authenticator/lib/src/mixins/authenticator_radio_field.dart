import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorRadioField<FieldType, FieldValue,
        T extends AuthenticatorFormField<FieldType, FieldValue, T>>
    on AuthenticatorFormFieldState<FieldType, FieldValue, T>
    implements SelectableConfig<FieldValue> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    if (selectionValue != null) onChanged(selectionValue!);
    return Column(
      children: <Widget>[
        for (var selection in selections)
          ListTile(
            key: Key('${selection.value}${widget.titleKey}'),
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            title: Text(
              inputResolver.resolve(
                context,
                selection.label,
              ),
            ),
            leading: Radio<FieldValue>(
              value: selection.value,
              groupValue: selectionValue,
              onChanged: (FieldValue? value) {
                setState(() {
                  selectionValue = value;
                });
                if (selectionValue != null) onChanged(selectionValue!);
              },
              activeColor: Colors.green,
            ),
          )
      ],
    );
  }
}
