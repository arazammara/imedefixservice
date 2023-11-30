import 'package:flutter/material.dart';
import 'package:idaawee/features/account_type/view/account_type_screen.dart';
import 'package:idaawee/features/auth/view/user_login_screen.dart';
import 'package:idaawee/features/auth/view/user_signup_screen.dart';
import 'package:idaawee/features/auth/view/staff_portal_sigin.dart';
import 'package:idaawee/features/doctor/appointment_offer/view/doctor_appointment_offer_screen.dart';
import 'package:idaawee/features/doctor/become_a_doctor/view/become_a_doctor_screen.dart';
import 'package:idaawee/features/doctor/become_a_doctor/view/pending_approvel_screen.dart';
import 'package:idaawee/features/doctor/consulation_offer/view/doctor_consulation_offer_screen.dart';
import 'package:idaawee/features/doctor/doctor_check_out_order_history/view/doctor_check_out_appointment_screen.dart';
import 'package:idaawee/features/doctor/doctor_check_out_order_history/view/doctor_check_out_consulation_screen.dart';
import 'package:idaawee/features/doctor/doctor_check_out_order_history/view/doctor_check_out_labtest_screen.dart';
import 'package:idaawee/features/doctor/doctor_check_out_order_history/view/doctor_check_out_order_history_screen.dart';
import 'package:idaawee/features/doctor/doctor_check_out_order_history/view/doctor_check_out_pharmacy_screen.dart';
import 'package:idaawee/features/doctor/labtest_offer/view/doctor_labtest_offer_screen.dart';
import 'package:idaawee/features/doctor/main_menu/views/doctor_main_menu_screen.dart';
import 'package:idaawee/features/doctor/notification/view/doctor_notification_screen.dart';
import 'package:idaawee/features/doctor/pharmacy_offer/view/doctor_pharmacy_offer_screen.dart';
import 'package:idaawee/features/splash_and_onboarding/views/on_boarding_screen.dart';
import 'package:idaawee/features/splash_and_onboarding/views/splash_screen.dart';
import 'package:idaawee/features/user/home/view/user_next_appointment_screen.dart';
import 'package:idaawee/features/user/our_speciallist/view/user_our_specialist_detail_screen.dart';
import 'package:idaawee/features/user/our_speciallist/view/user_our_speciallist_screen.dart';
import 'package:idaawee/features/user/our_speciallist/view/user_platinum_provider_screen.dart';
import 'package:idaawee/features/user/report/view/add_report_screen.dart';
import 'package:idaawee/features/user/user_notification/view/user_notification_screen.dart';
import 'package:idaawee/features/user/home/view/user_home_screen.dart';
import 'package:idaawee/features/user/record_screen/view/record_screen.dart';
import 'package:idaawee/features/user/report/view/report_deails_screen.dart';
import 'package:idaawee/features/user/record_screen/view/appointment_detail_screen.dart';
import 'package:idaawee/features/user/user_main_menu/views/main_menu_screen.dart';
import 'package:idaawee/features/user/report/view/user_report_screen.dart';
import 'package:idaawee/features/doctor/doctor_profile/view/doctor_edit_profile_screen.dart';
import 'package:idaawee/utils/error_screen.dart';
import 'navigation.dart';

class AppRoutes {
  //Common Portion
  static const String signUpScreen = '/signUpScreen';
  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreens = '/onBoardingScreens';
  static const String staffPortalSignInScreen = '/staffPortalSignInScreen';
  static const String accountType = '/accountType';
  static const String loginScreen = '/loginScreen';
  // User Portion
  static const String userSpecialListScreen = '/userSpecialListScreen';
  static const String userSpecialListDetailScreen =
      '/userSpecialListScreenDetail';
  static const String userPlatinumProviderScreen =
      '/userPlatinumProviderScreen';
  static const String userHomeScreen = '/userHomeScreen';
  static const String userMainMenuScreen = '/userMainMenuScreen';
  static const String addRecordScreen = '/addRecordScreen';
  static const String recordScreen = '/recordScreen';
  static const String userReportScreen = '/userReportScreen';
  static const String appointmentDetailsScreen = '/appointmentDetailsScreen';
  static const String reportDetailScreen = '/reportDetailScreen';
  static const String userNextAppintmentScreen = '/userNextAppintmentScreen';
  static const String consulationPaymentScreen = 'consulationPaymentScreen';
  static const String offerSuccessfullScreen = '/offerSuccessfullScreen';
  static const String addReportScreen = '/addReportScreen';
  static const String notificationScreen = '/notificationScreen';

  // Doctor portion

  /// Doctor Section
  static const String doctorMainMenu = '/doctorMainMenu';
  static const String doctorConsulationOfferScreen = '/doctorConsulationOffer';
  static const String doctorLabTestOfferScreen = '/doctorLabTestOfferScreen';
  static const String doctorPharmacyOfferScreen = '/doctorPharmacyOfferScreen';
  static const String doctorAppointmentOfferScreen =
      '/doctorAppointmentOfferScreen';
  static const String doctorNotificationScreen = '/doctorNotificationScreen';
  static const String doctorCheckOutOrderHistory =
      '/doctorCheckOutOrderHistory';
  static const String doctorEditProfileScreen = '/doctorEditProfileScreen';
  static const String doctorCheckOutConsulation = '/doctorCheckOutConsulation';
  static const String doctorCheckOutAppointment = '/doctorCheckOutAppointment';
  static const String doctorCheckOutLabTest = '/doctorCheckOutLabTest';
  static const String doctorCheckOutPharmacy = '/doctorCheckOutPharmacy';
  static const String becomeaDoctorScreen = '/becomeaDoctorScreen';
  static const String pendingApprovelScreen = '/pendingApprovelScreen';

  /// Doctor Section

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signUpScreen:
        return _buildRoute(const UserSignUpScreen());
      case userSpecialListScreen:
        return _buildRoute(const UserOurSpecialListScreen());
      case loginScreen:
        return _buildRoute(const UserLoginScreen());
      case splashScreen:
        return _buildRoute(const SplashScreen());
      case onBoardingScreens:
        return _buildRoute(const OnbordingScreen());
      case staffPortalSignInScreen:
        return _buildRoute(const StaffPortalSignInScreen());
      case accountType:
        return _buildRoute(const AccountTypeScreen());
      case userHomeScreen:
        return _buildRoute(const UserHomeScreen());
      case userMainMenuScreen:
        return _buildRoute(const UserMainMenuScreen());

      case userSpecialListDetailScreen:
        return _buildRoute(const UserOurSpecialistDetailScreen());

      case userNextAppintmentScreen:
        return _buildRoute(const UserNextAppointmenyScreen());

      case userPlatinumProviderScreen:
        return _buildRoute(const UserPlatinumProviderScreen());

      case addReportScreen:
        return _buildRoute(const AddReportScreen());

      case recordScreen:
        return _buildRoute(const RecordScreen());
      case userReportScreen:
        return _buildRoute(const UserReportScreen());

      case appointmentDetailsScreen:
        return _buildRoute(const AppointmentDetailScreen());

      case reportDetailScreen:
        final arguments = settings.arguments as Map<String, dynamic>;

        return _buildRoute(ReportDetailsScreen(
          title: arguments["title"],
        ));
      case notificationScreen:
        return _buildRoute(const UserNotificationScreen());

      /// DOCTOR SECTION ///
      case doctorMainMenu:
        return _buildRoute(const DoctorMainMenuScreen());
      case doctorConsulationOfferScreen:
        return _buildRoute(DoctorConsulationOfferScreen());
      case doctorAppointmentOfferScreen:
        return _buildRoute(DoctorAppointmentOfferScreen());
      case doctorLabTestOfferScreen:
        return _buildRoute(DoctorLabTestOfferScreen());
      case doctorPharmacyOfferScreen:
        return _buildRoute(DoctorPharmacyOfferScreen());
      case doctorNotificationScreen:
        return _buildRoute(const DoctorNotificationScreen());
      case doctorCheckOutOrderHistory:
        return _buildRoute(const DoctorCheckOutOrderHistory());
      case doctorEditProfileScreen:
        return _buildRoute(const DoctorEditProfileScreen());

      case doctorCheckOutConsulation:
        return _buildRoute(const DoctorCheckOutConsulation());
      case doctorCheckOutAppointment:
        return _buildRoute(const DoctorCheckOutAppointmentScreen());
      case doctorCheckOutLabTest:
        return _buildRoute(const DoctorCheckOutLabTest());
      case doctorCheckOutPharmacy:
        return _buildRoute(const DoctorCheckOutPharmacy());
      case becomeaDoctorScreen:
        return _buildRoute(const BecomeADoctorScreen());
      case pendingApprovelScreen:
        final arguments = settings.arguments as Map<String, dynamic>;
        return _buildRoute(
            PendingApprovelScreen(approvel: arguments["approvel"]));

      /// DOCTOR SECTION ///
      case doctorMainMenu:
        return _buildRoute(const DoctorMainMenuScreen());
      case doctorPharmacyOfferScreen:
        return _buildRoute(DoctorPharmacyOfferScreen());

      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              backgroundColor: Colors.white,
            ));
    // ignore: dead_code
    return MaterialPageRoute(builder: (_) => const ErrorScreen());
  }

  static _buildRoute(Widget widget, {int? duration = 400}) {
    return forwardRoute(widget, duration);
  }

  static _buildNormalRoute(Widget widget) {
    return MaterialPageRoute(builder: (_) => widget);
  }
}
