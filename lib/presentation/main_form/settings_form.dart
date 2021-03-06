import 'package:flutter/material.dart';

import '../../configuration/app_routes.dart';
import '../../configuration/assets.dart';
import '../../configuration/shared_prefs_constants.dart';
import '../../configuration/text_constants.dart';
import '../../configuration/text_styles.dart';
import '../../internal/shared_prefs_module.dart';
import 'settings_tile.dart';

class SettingsForm extends StatelessWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                TextConstants.personalInformation,
                style: TextStyles.personalInfoTextStyle,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    AppRoutes.settingsScreen,
                  );
                },
                icon: Assets.editPersonalInfoImage,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SettingsTile(
            label: TextConstants.name,
            value: SharedPrefsModule.sharedPrefs()
                .getString(SharedPrefsConstants.name)!,
          ),
          const SizedBox(
            height: 15,
          ),
          SettingsTile(
            label: TextConstants.email,
            value: SharedPrefsModule.sharedPrefs()
                .getString(SharedPrefsConstants.email)!,
          ),
          const SizedBox(
            height: 15,
          ),
          SettingsTile(
            label: TextConstants.password,
            value: SharedPrefsModule.sharedPrefs()
                .getString(SharedPrefsConstants.password)!,
          ),
        ],
      ),
    );
  }
}
