import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:peniremit/core/utils/country.dart';
import 'package:peniremit/core/utils/extension_util.dart';
import 'package:peniremit/core/widgets/app_text_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/navigation/nav_utils.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({
    super.key,
    required this.navCallBack,
  });
  final NavCallBack<Country> navCallBack;

  static Page page({
    LocalKey? key,
    required NavCallBack<Country> callBack,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: CountryScreen(
        navCallBack: callBack,
      ),
    );
  }

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  List<Country> searchResult = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
            titleText: AppStrings.selectCountryTxt,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                size: 24,
              ),
            )),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: AppTextFieldEx(
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 24,
                    color: AppColors.surfaceLighter,
                  ),
                  hintText: 'Search country',
                  style: TextStyles.body2,
                  onChanged: (value) {
                    if (value != null && value.isNotEmpty) {
                      setState(() {
                        searchResult = Country.all
                            .where((country) => country.name
                                .toLowerCase()
                                .contains(value.toLowerCase()))
                            .toList();
                      });
                    } else {
                      setState(() {
                        searchResult = [];
                      });
                    }
                  },
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    height: 4.0,
                    color: AppColors.surfaceLighter,
                  ),
                  itemCount: searchResult.isEmpty
                      ? Country.all.length
                      : searchResult.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final Country item = searchResult.isEmpty
                        ? Country.all[index]
                        : searchResult[index];
                    return InkWell(
                      onTap: () {
                        widget.navCallBack.callBack?.call(item);
                        //close country screen
                        context.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 32,
                        ),
                        child: ListTile(
                          leading: Text(
                            '+${item.dialingCode}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                          title: Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 30,
                                child: Image.asset(
                                  item.asset,
                                  package: null,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: Text(
                                  item.name.capitalizeEachLetters(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}