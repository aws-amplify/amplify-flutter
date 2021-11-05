import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/utils/country_code.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_input_config.dart';
import 'package:amplify_authenticator/src/widgets/form_field.dart';

import 'package:flutter/material.dart';

mixin AuthenticatorPhoneField<FieldType,
        T extends AuthenticatorFormField<FieldType, String, T>>
    on AuthenticatorFormFieldState<FieldType, String, T>
    implements SelectableConfig<String> {
  double _prefixWidth = 0;

  @override
  Widget buildFormField(BuildContext context) {
    final inputResolver = stringResolver.inputs;

    final hintText = widget.hintText == null
        ? inputResolver.resolve(context, widget.hintTextKey!)
        : widget.hintText!;

    final countryResolver = stringResolver.countries;
    return Focus(

        /// Display the prefix only when phone number widget is in focus
        onFocusChange: (hasFocus) {
          setState(() {
            _prefixWidth = hasFocus ? 40 : 0;
          });
        },
        child: TextFormField(
          style: enabled
              ? null
              : const TextStyle(
                  color: AmplifyColors.black20,
                ),
          initialValue: initialValue,
          enabled: enabled,
          validator: widget.validatorOverride ?? validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefix: SizedBox(
                height: 15,
                width: _prefixWidth,
                child: PopupMenuButton(
                  initialValue: selectionValue,
                  child: Center(child: Text('+$selectionValue')),
                  itemBuilder: (context) {
                    return countryCodes.map((Country country) {
                      return PopupMenuItem<String>(
                        value: country.value,
                        child: Text(
                            '${countryResolver.resolve(context, country.key)} (+${country.value})',
                            style: AmplifyTextTheme.body),
                      );
                    }).toList();
                  },
                  onSelected: (String value) {
                    setState(() {
                      selectionValue = value;
                    });
                  },
                )),
            suffixIcon: suffixIcon,
            errorMaxLines: errorMaxLines,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
            hintText: hintText,
            border: const OutlineInputBorder(),
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
        ));

    // return Focus(
    //     focusNode: focusNode,
    //     child: Listener(
    //         onPointerDown: (_) {
    //           FocusScope.of(context).requestFocus(focusNode);
    //         },
    //         child: Container(
    //             padding: const EdgeInsets.all(5),
    //             decoration: BoxDecoration(
    //                 borderRadius: const BorderRadius.all(Radius.circular(4)),
    //                 border: Border.all(color: borderColor)),
    //             child: Row(children: [
    //               Container(
    //                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    //                   child: PopupMenuButton(
    //                     initialValue: selectionValue,
    //                     child: Center(child: Text('+$selectionValue')),
    //                     itemBuilder: (context) {
    //                       return countryCodes.map((Country country) {
    //                         return PopupMenuItem<String>(
    //                           value: country.value,
    //                           child: Text(
    //                               '${countryResolver.resolve(context, country.key)} (+${country.value})',
    //                               style: AmplifyTextTheme.body),
    //                         );
    //                       }).toList();
    //                     },
    //                     onSelected: (String value) {
    //                       setState(() {
    //                         selectionValue = value;
    //                       });
    //                     },
    //                   )),
    //               Expanded(
    //                   child: TextFormField(
    //                 style: enabled
    //                     ? null
    //                     : const TextStyle(
    //                         color: AmplifyColors.black20,
    //                       ),
    //                 initialValue: initialValue,
    //                 enabled: enabled,
    //                 validator: validator,
    //                 onChanged: (phoneValue) {
    //                   onChanged.call('+$selectionValue$phoneValue');
    //                 },
    //                 decoration: InputDecoration(
    //                     border: InputBorder.none,
    //                     focusedBorder: InputBorder.none,
    //                     suffixIcon: suffixIcon,
    //                     errorMaxLines: errorMaxLines,
    //                     hintText: hintText),
    //                 keyboardType: TextInputType.phone,
    //               ))
    //             ]))));
  }
}
