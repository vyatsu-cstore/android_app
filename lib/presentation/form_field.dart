import 'package:flutter/material.dart';

import '../configuration/assets.dart';
import '../configuration/colors.dart';
import '../configuration/text_styles.dart';

class RegistrationFormField extends StatelessWidget {
  String _label;
  IconButton? _button;

  RegistrationFormField({Key? key, required String label, IconButton? button})
      : _label = label,
        _button = button,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (_button == null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              _label,
              style: TextStyles.formFieldTextStyle,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            height: 42,
            child: Stack(
              children: const [
                TextField(
                  cursorColor: AppColors.cursorColor,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textFieldLineColor,
                        width: 2,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.textFieldLineColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            _label,
            style: TextStyles.formFieldTextStyle,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 30),
          height: 42,
          child: Stack(
            children: [
              const TextField(
                cursorColor: AppColors.cursorColor,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.textFieldLineColor,
                      width: 4.5,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.textFieldLineColor,
                      width: 4.5,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 19,
                bottom: 4,
                child: _button!,
              ),
            ],
          ),
        ),
      ],
    );
  }
}