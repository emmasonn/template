import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:path_provider/path_provider.dart';
import 'package:peniremit/core/helpers/spacer_widgets.dart';
import 'package:peniremit/core/qr_flutter/src/qr_image.dart';
import 'package:peniremit/core/qr_flutter/src/qr_versions.dart';
import 'package:peniremit/core/utils/enum_constants.dart';
import 'package:peniremit/core/widgets/app_pop_up_field.dart';
import 'package:peniremit/core/widgets/custom_app_bar.dart';
import 'package:peniremit/core/widgets/custom_filled_button.dart';
import 'package:peniremit/features/wallet/app/screens/card_copy_wallet.dart';
import 'package:peniremit/navigation/custom_page_transition.dart';
import 'package:peniremit/resources/app_assets.dart';
import 'package:peniremit/resources/app_colors.dart';
import 'package:peniremit/resources/app_dimen.dart';
import 'package:peniremit/resources/app_strings.dart';
import 'package:peniremit/resources/app_styles.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class FundWalletScreen extends StatefulWidget {
  const FundWalletScreen({
    super.key,
  });

  static Page page({
    LocalKey? key,
  }) {
    return CustomPageTransition(
      key: key,
      transitionStyle: PageTransitionStyle.fade,
      child: const FundWalletScreen(),
    );
  }

  @override
  State<FundWalletScreen> createState() => _FundWalletScreenState();
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  File? file;
  final _screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          context,
          titleText: AppStrings.fundWalletTxt,
          onBackPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //qrcode
                _qrBodyWidget(),
                //space vertiically
                vSpacer(50.0),

                AppPopUpField(
                  prefixIcon: CircleAvatar(
                    radius: 13,
                    child: Image.asset(AppAssets.tetherPng),
                  ),
                  items: const [
                    'Tron (TRC20)',
                    'Ethereum (ERC20)',
                    'Binance Smartchain (BEP20)',
                  ],
                  billType: BillType.none,
                  label: AppStrings.tokenNetworkTxt,
                  hintText: AppStrings.selectNetworkTxt,
                  style: TextStyles.body1,
                  onChanged: (value) {},
                ),

                //space vertically
                const Gap(20.0),

                //copy wallet address card
                const CardCopyWalletWidget(),
                //space vertiically
                vSpacer(50.0),
                //warningTxt
                Text(
                  AppStrings.depositWarningTitleTxt,
                  style: TextStyles.caption.copyWith(
                    fontSize: FontSizes.s15,
                    color: AppColors.accent,
                  ),
                ),
                //space vertiically
                vSpacer(16.0),
                Text(
                  AppStrings.depositNoteTxt,
                  style: TextStyles.caption.copyWith(
                    fontWeight: FontWeight.w200,
                    fontSize: FontSizes.s13,
                  ),
                ),
                //space vertiically
                vSpacer(40.0),

                SizedBox(
                  width: Sizes.btnWidthMd,
                  child: CustomFilledButton(
                    text: AppStrings.tokenSentTxt,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _qrBodyWidget({
    bool hideFooter = false,
  }) {
    return Center(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        height: 200,
        width: 200,
        child: Center(
          child: QrImageWidget(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            size: 200,
            gapless: true,
            data: 'Peniremit usdt wallet address',
            version: QrVersions.auto,
            // embeddedImage: appLogo,
            // embeddedImageStyle: QrEmbeddedImageStyle(
            //   size: const Size(25, 25),
            // ),
          ),
        ),
      ),
    );
  }

  void shareQrCode() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      //qr image file creation
      file = await File('${appDir.path}/qrcode.png').create();
      //appending data
      final imageByte = await _screenshotController.captureFromWidget(
        MediaQuery(
          data: const MediaQueryData(),
          child: MaterialApp(
            theme: ThemeData(),
            debugShowCheckedModeBanner: false,
            home: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Material(
                color: AppColors.bgWhite,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: _qrBodyWidget(hideFooter: true),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await file?.writeAsBytes(imageByte);

      await Share.shareXFiles(
        [XFile(file!.path)],
        subject: '${AppStrings.appNameTxt} usdt wallet address',
      );
    } catch (e) {
      Fluttertoast.showToast(
        msg: AppStrings.cannotShareQrcodeTxt,
      );
      log(e);
    }
  }
}
