import 'package:app_bds/unit.dart';
import 'package:app_bds/view/account/bank/add_bank_page.dart';
import 'package:app_bds/view/account/bank/bank_detail_page.dart';
import 'package:app_bds/view/account/bank/bank_page.dart';
import 'package:app_bds/view/account/customer/customer_page.dart';
import 'package:app_bds/view/account/inferior/inferior_detail_page.dart';
import 'package:app_bds/view/account/inferior/inferior_information_page.dart';
import 'package:app_bds/view/account/information_and_id/identification_page.dart';
import 'package:app_bds/view/account/information_and_id/information_and_id_page.dart';
import 'package:app_bds/view/account/information_and_id/update_information_page.dart';
import 'package:app_bds/view/account/invite_friend/invite_friend_pgae.dart';
import 'package:app_bds/view/account/posts/posts_page.dart';
import 'package:app_bds/view/account/project_and_commission/project_and_commission_page.dart';
import 'package:app_bds/view/account/setting/setting_page.dart';
import 'package:app_bds/view/auth/login_page.dart';
import 'package:app_bds/view/auth/register_page.dart';
import 'package:app_bds/view/dashboard/dashboard_page.dart';
import 'package:app_bds/view/dashboard/onboarding_page.dart';
import 'package:app_bds/view/notification/notification_detail_page.dart';
import 'package:app_bds/view/notification/notification_page.dart';
import 'package:app_bds/view/posting/checkout_page.dart';
import 'package:app_bds/view/posting/config_post_page.dart';
import 'package:app_bds/view/posting/posting_success_page.dart';
import 'package:app_bds/view/product/link_redeem_page.dart';
import 'package:app_bds/view/product/product_detail_page.dart';
import 'package:app_bds/view/product/product_page.dart';
import 'package:app_bds/view/account/forgotpass/Forgot_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App bds',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: pColor,
          textTheme: GoogleFonts.interTextTheme(),
          colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.amber),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: sColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 2,
            iconTheme: IconThemeData(
              color: sColor,
            ),
          )),
      home: OnboardingPage(),
      getPages: [
        GetPage(
          name: '/productDetail',
          page: () => ProductDetailPage(),
        ),
        GetPage(
          name: '/onboarding',
          page: () => OnboardingPage(),
        ),
        GetPage(
          name: '/product',
          page: () => ProductPage(),
        ),
        GetPage(
          name: '/linkRedeem',
          page: () => LinkRedeemPage(),
        ),
        GetPage(
          name: '/notification',
          page: () => NotificationPage(),
        ),
        GetPage(
          name: '/notificationDetail',
          page: () => NotificationDetailPage(),
        ),
        GetPage(
          name: '/dashboardPage',
          page: () => DashboardPage(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/register',
          page: () => RegisterPage(),
        ),
        GetPage(
          name: '/setting',
          page: () => SettingPage(),
        ),
        GetPage(
          name: '/informationAndId',
          page: () => InformationAndIdPage(),
        ),
        GetPage(
          name: '/updateInformation',
          page: () => UpdateInformationPage(),
        ),
        GetPage(
          name: '/identification',
          page: () => IdentificationPage(),
        ),
        GetPage(
          name: '/bank',
          page: () => BankPage(),
        ),
        GetPage(
          name: '/addBank',
          page: () => AddBankPage(),
        ),
        GetPage(
          name: '/bankDetail',
          page: () => BankDetailPage(),
        ),
        GetPage(
          name: '/projectAndCommission',
          page: () => ProjectAndCommissionPage(),
        ),
        GetPage(
          name: '/customer',
          page: () => CustomerPage(),
        ),
        GetPage(
          name: '/inviteFriend',
          page: () => InviteFriendPage(),
        ),
        GetPage(
          name: '/inferior',
          page: () => InferiorPage(),
        ),
        GetPage(
          name: '/inferiorDetail',
          page: () => InferiorDetailPage(),
        ),
        GetPage(
          name: '/configPost',
          page: () => ConfigPostPage(),
        ),
        GetPage(
          name: '/postingSuccess',
          page: () => PostingSuccessPage(),
        ),
        GetPage(
          name: '/checkout',
          page: () => CheckoutPage(),
        ),
        GetPage(
          name: '/posts',
          page: () => PostsPage(),
        ),
        GetPage(
          name: '/forgotpass',
          page: () => ForgotPass(),
        )
      ],
    );
  }
}
