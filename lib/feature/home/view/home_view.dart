import 'package:easy_localization/easy_localization.dart';
import 'package:experiment_project/product/init/custom_localization.dart';
import 'package:experiment_project/product/init/language/locale_keys.g.dart';
import 'package:experiment_project/product/utility/enums/locales.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(LocaleKeys.general_navbar_home).tr(),
          ElevatedButton(
              onPressed: () {
                CustomLocalization.updateLanguage(context: context, locales: Locales.en);
              },
              child: const Text(LocaleKeys.general_navbar_home).tr())
        ],
      ),
    );
  }
}
