import 'package:flutter/cupertino.dart';
import 'package:grocery_app/core/routes/unknown_page.dart';
import 'package:grocery_app/screens/auth/forget_password_page.dart';
import 'package:grocery_app/screens/auth/intrologin_page.dart';
import 'package:grocery_app/screens/auth/login_or_signup_page.dart';
import 'package:grocery_app/screens/auth/login_page.dart';
import 'package:grocery_app/screens/auth/num_verif_page.dart';
import 'package:grocery_app/screens/auth/password_resert.dart';
import 'package:grocery_app/screens/cart/car_page.dart';
import 'package:grocery_app/screens/cart/checkout_page.dart';
import 'package:grocery_app/screens/drawer/about_us_page.dart';
import 'package:grocery_app/screens/drawer/contact_us_page.dart';
import 'package:grocery_app/screens/drawer/drawer_page.dart';
import 'package:grocery_app/screens/drawer/faq_page.dart';
import 'package:grocery_app/screens/drawer/help_page.dart';
import 'package:grocery_app/screens/drawer/terms_and_conditions_page.dart';
import 'package:grocery_app/screens/entrypoint/entrypoint_page.dart';
import 'package:grocery_app/screens/home/bundle_create_page.dart';
import 'package:grocery_app/screens/home/bundle_details_page.dart';
import 'package:grocery_app/screens/home/bundle_product_details_page.dart';
import 'package:grocery_app/screens/home/new_item_page.dart';
import 'package:grocery_app/screens/home/order_failed_page.dart';
import 'package:grocery_app/screens/home/order_successfull_page.dart';
import 'package:grocery_app/screens/home/popular_pack_page.dart';
import 'package:grocery_app/screens/home/product_details_page.dart';
import 'package:grocery_app/screens/home/search_page.dart';
import 'package:grocery_app/screens/home/search_result_page.dart';
import 'package:grocery_app/screens/menu/category_page.dart';
import 'package:grocery_app/screens/profile/address/address_page.dart';
import 'package:grocery_app/screens/profile/address/new_address_page.dart';
import 'package:grocery_app/screens/profile/coupon/coupon_details_page.dart';
import 'package:grocery_app/screens/profile/coupon/coupon_page.dart';
import 'package:grocery_app/screens/profile/notification_page.dart';
import 'package:grocery_app/screens/profile/order/my_order_page.dart';
import 'package:grocery_app/screens/profile/order/order_details.dart';
import 'package:grocery_app/screens/profile/payment_method/add_new_card_page.dart';
import 'package:grocery_app/screens/profile/payment_method/payment_method_page.dart';
import 'package:grocery_app/screens/profile/profile_edit_page.dart';
import 'package:grocery_app/screens/profile/settings/change_password_page.dart';
import 'package:grocery_app/screens/profile/settings/change_phone_number_page.dart';
import 'package:grocery_app/screens/profile/settings/language_settings_page.dart';
import 'package:grocery_app/screens/profile/settings/notifications_settings_page.dart';
import 'package:grocery_app/screens/profile/settings/settings_page.dart';
import 'package:grocery_app/screens/review/review_page.dart';
import 'package:grocery_app/screens/review/submit_review_page.dart';
import 'package:grocery_app/screens/save/save_page.dart';
import '../../screens/auth/sign_up_page.dart';
import 'package:grocery_app/screens/onboarding/onboarding_page.dart';

import 'app_routes.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;
    switch (route) {
      case AppRoutes.onboarding:
        return CupertinoPageRoute(builder: (_) => const OnboardingPage());

      case AppRoutes.introLogin:
        return CupertinoPageRoute(builder: (_) => const IntroLoginPage());
      case AppRoutes.signup:
        return CupertinoPageRoute(builder: (_) => const SignUpPage());
      case AppRoutes.loginOrSignup:
        return CupertinoPageRoute(builder: (_) => const LoginOrSignUpPage());

      case AppRoutes.login:
        return CupertinoPageRoute(builder: (_) => const LoginPage());

      case AppRoutes.numberVerification:
        return CupertinoPageRoute(
            builder: (_) => const NumberVerificationPage());

      case AppRoutes.forgotPassword:
        return CupertinoPageRoute(builder: (_) => const ForgetPasswordPage());

      case AppRoutes.passwordReset:
        return CupertinoPageRoute(builder: (_) => const PasswordResetPage());

      case AppRoutes.search:
        return CupertinoPageRoute(builder: (_) => const SearchPage());

      case AppRoutes.searchResult:
        return CupertinoPageRoute(builder: (_) => const SearchResultPage());

      case AppRoutes.cartPage:
        return CupertinoPageRoute(builder: (_) => const CartPage());

      case AppRoutes.savePage:
        return CupertinoPageRoute(builder: (_) => const SavePage());

      case AppRoutes.checkoutPage:
        return CupertinoPageRoute(builder: (_) => const CheckoutPage());

      case AppRoutes.categoryDetails:
        return CupertinoPageRoute(builder: (_) => const CategoryProductPage());

      case AppRoutes.newItems:
        return CupertinoPageRoute(builder: (_) => const NewItemsPage());

      case AppRoutes.popularItems:
        return CupertinoPageRoute(builder: (_) => const PopularPackPage());

      case AppRoutes.bundleProduct:
        return CupertinoPageRoute(
            builder: (_) => const BundleProductDetailsPage());

      case AppRoutes.bundleDetailsPage:
        return CupertinoPageRoute(builder: (_) => const BundleDetailsPage());

      case AppRoutes.productDetails:
        return CupertinoPageRoute(builder: (_) => const ProductDetailsPage());

      case AppRoutes.createMyPack:
        return CupertinoPageRoute(builder: (_) => const BundleCreatePage());

      case AppRoutes.orderSuccessfull:
        return CupertinoPageRoute(builder: (_) => const OrderSuccessfullPage());

      case AppRoutes.orderFailed:
        return CupertinoPageRoute(builder: (_) => const OrderFailedPage());

      case AppRoutes.myOrder:
        return CupertinoPageRoute(builder: (_) => const AllOrderPage());

      case AppRoutes.orderDetails:
        return CupertinoPageRoute(builder: (_) => const OrderDetailsPage());

      case AppRoutes.coupon:
        return CupertinoPageRoute(builder: (_) => const CouponAndOffersPage());

      case AppRoutes.couponDetails:
        return CupertinoPageRoute(builder: (_) => const CouponDetailsPage());

      case AppRoutes.profileEdit:
        return CupertinoPageRoute(builder: (_) => const ProfileEditPage());

      case AppRoutes.newAddress:
        return CupertinoPageRoute(builder: (_) => const NewAddressPage());

      case AppRoutes.deliveryAddress:
        return CupertinoPageRoute(builder: (_) => const AddressPage());

      case AppRoutes.notifications:
        return CupertinoPageRoute(builder: (_) => const NotificationPage());

      case AppRoutes.settingsNotifications:
        return CupertinoPageRoute(
            builder: (_) => const NotificationSettingsPage());

      case AppRoutes.settings:
        return CupertinoPageRoute(builder: (_) => const SettingsPage());

      case AppRoutes.settingsLanguage:
        return CupertinoPageRoute(builder: (_) => const LanguageSettingsPage());

      case AppRoutes.changePassword:
        return CupertinoPageRoute(builder: (_) => const ChangePasswordPage());

      case AppRoutes.changePhoneNumber:
        return CupertinoPageRoute(
            builder: (_) => const ChangePhoneNumberPage());

      case AppRoutes.review:
        return CupertinoPageRoute(builder: (_) => const ReviewPage());

      case AppRoutes.submitReview:
        return CupertinoPageRoute(builder: (_) => const SubmitReviewPage());

      case AppRoutes.drawerPage:
        return CupertinoPageRoute(builder: (_) => const DrawerPage());

      case AppRoutes.aboutUs:
        return CupertinoPageRoute(builder: (_) => const AboutUsPage());

      case AppRoutes.termsAndConditions:
        return CupertinoPageRoute(
            builder: (_) => const TermsAndConditionsPage());

      case AppRoutes.faq:
        return CupertinoPageRoute(builder: (_) => const FAQPage());

      case AppRoutes.help:
        return CupertinoPageRoute(builder: (_) => const HelpPage());

      case AppRoutes.contactUs:
        return CupertinoPageRoute(builder: (_) => const ContactUsPage());

      case AppRoutes.paymentMethod:
        return CupertinoPageRoute(builder: (_) => const PaymentMethodPage());

      case AppRoutes.paymentCardAdd:
        return CupertinoPageRoute(builder: (_) => const AddNewCardPage());
      case AppRoutes.entryPoint:
        return CupertinoPageRoute(builder: (_) => const EntryPointUI());

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
