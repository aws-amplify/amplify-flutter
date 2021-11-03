import 'package:amplify_authenticator/src/widgets/form_field.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorRadioField<FieldType, FieldValue,
        T extends AuthenticatorFormField<FieldType, FieldValue, T>>
    on AuthenticatorFormFieldState<FieldType, FieldValue, T> {
  void initState() {
    selectionValue = widget.inputconfig!.selections[0].value as FieldValue;
    super.initState();
  }

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;
    onChanged!(selectionValue!);
    // return Text('Hi');
    return Column(
      children: <Widget>[
        for (var selection in widget.inputconfig!.selections)
          ListTile(
            key: Key('${selection.value}${widget.titleKey}'),
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            title: Text(inputResolver.resolve(
              context,
              selection.label,
            )),
            leading: Radio<FieldValue>(
              value: selection.value,
              groupValue: selectionValue,
              onChanged: (FieldValue? value) {
                setState(() {
                  selectionValue = value;
                });
                onChanged!(selectionValue!);
              },
              activeColor: Colors.green,
            ),
          )
      ],
    );
  }
}
