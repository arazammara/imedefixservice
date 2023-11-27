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
import 'package:idaawee/features/doctor/offer_successfull.dart/view/offer_successfull_screen.dart';
import 'package:idaawee/features/doctor/pharmacy_offer/view/doctor_pharmacy_offer_screen.dart';

import 'package:idaawee/features/splash_and_onboarding/views/on_boarding_screen.dart';
import 'package:idaawee/features/splash_and_onboarding/views/splash_screen.dart';
import 'package:idaawee/features/user/appointment/view/speciallized_quick_appointment_screen.dart';
import 'package:idaawee/features/user/appointment/view/user_confirm_appointment_screen.dart';
import 'package:idaawee/features/user/consulation/view/consulation_payment_screen.dart';
import 'package:idaawee/features/user/consulation/view/speciallized_quick_video_consultation_screen.dart';
import 'package:idaawee/features/user/consulation/view/user_consulation_screen.dart';
import 'package:idaawee/features/user/our_speciallist/view/user_our_speciallist_screen.dart';
import 'package:idaawee/features/user/report/view/add_report_screen.dart';
import 'package:idaawee/features/user/user_check_out_order_history/view/user_check_out_appointment_screen.dart';
import 'package:idaawee/features/user/user_check_out_order_history/view/user_check_out_consulation_screen.dart';
import 'package:idaawee/features/user/user_check_out_order_history/view/user_check_out_labtest_screen.dart';
import 'package:idaawee/features/user/user_check_out_order_history/view/user_check_out_order_history_screen.dart';
import 'package:idaawee/features/user/user_check_out_order_history/view/user_check_out_pharmacy_screen.dart';
import 'package:idaawee/features/user/user_notification/view/user_notification_screen.dart';
import 'package:idaawee/features/user/appointment/view/user_appointment_screen.dart';
import 'package:idaawee/features/user/consulation/view/add_medical_record_screen.dart';
import 'package:idaawee/features/user/consulation/view/add_record_screen.dart';
import 'package:idaawee/features/user/doctor_list/view/user_doctor_list.dart';
import 'package:idaawee/features/user/home/view/user_home_screen.dart';
import 'package:idaawee/features/user/record_screen/view/record_screen.dart';
import 'package:idaawee/features/user/report/view/report_deails_screen.dart';
import 'package:idaawee/features/user/record_screen/view/appointment_detail_screen.dart';
import 'package:idaawee/features/user/user_main_menu/views/main_menu_screen.dart';
import 'package:idaawee/features/user/report/view/user_report_screen.dart';
import 'package:idaawee/features/user/user_profile/view/user_about_screen.dart';
import 'package:idaawee/features/user/user_profile/view/user_contact_us_screen.dart';
import 'package:idaawee/features/doctor/doctor_profile/view/doctor_edit_profile_screen.dart';
import 'package:idaawee/features/user/user_profile/view/user_edit_profile_screen.dart';
import 'package:idaawee/features/user/user_profile/view/user_faq_screen.dart';
import 'package:idaawee/features/user/user_profile/view/user_help_and_support_screen.dart';
import 'package:idaawee/features/user/user_profile/view/user_privacy_policy_screen.dart';
import 'package:idaawee/utils/error_screen.dart';
import '../features/user/appointment/view/speciallized_doctors_screen.dart';
import '../features/user/consulation/view/user_quick_consultation_screen.dart';
import '../features/user/record_screen/view/lab_payment_screen.dart';
import '../features/user/user_profile/view/user_term_and_condition.dart';
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

  static const String userHomeScreen = '/userHomeScreen';
  static const String userMainMenuScreen = '/userMainMenuScreen';
  static const String doctorListScreen = '/doctorListScreen';
  static const String userAppointment = '/userAppointment';
  static const String userSpeciallizedQuickAppointment =
      '/userSpeciallizedQuickAppointment';
  static const String userSpeciallizedDoctorsScreen =
      '/userSpeciallizedDoctorsScreen';
  static const String userConsultationScreem = '/userConsultationScreem';
  static const String userSpeciallizedConsultationScreen =
      '/userSpeciallizedConsultationScreen';
  static const String userQuickConsultationScreen =
      '/userQuickConsultationScreem';
  static const String medicalRecordScreen = '/medicalRecordScreen';
  static const String addRecordScreen = '/addRecordScreen';
  static const String paymentScreen = '/paymentScreen';
  static const String recordScreen = '/recordScreen';
  static const String pharmacyScreen = '/pharmacyScreen';
  static const String searchPharmacy = '/searchPharmacy';
  static const String explorePharmacyProduct = '/explorePharmacyProduct';
  static const String uploadPresentation = '/uploadPresentation';
  static const String appointmentDetailsScreen = '/appointmentDetailsScreen';
  static const String reportDetailScreen = '/reportDetailScreen';
  static const String userLabPaymentModeScreen = '/userLabPaymentModeScreen';
  static const String labPaymentScreen = '/labPaymentScreen';
  static const String userConfirmedAppointmentScreen =
      '/userConfirmedPointmentScreen';

  static const String userEditProfileScreen = '/userEditProfileScreen';
  static const String helpsupportScreen = '/helpsupportScreen';
  static const String about = '/about';
  static const String contactUs = '/contactUs';
  static const String privactPolicy = '/privactPolicy';
  static const String faq = '/faq';
  static const String checkOutOrderHistory = '/checkOutOrderHistory';
  static const String checkOutConsulation = '/checkOutConsulation';
  static const String checkOutAppointment = '/checkOutAppointment';
  static const String checkOutLabTest = '/checkOutLabTest';
  static const String checkOutPharmacy = '/checkOutPharmacy';
  static const String notificationScreen = '/notificationScreen';
  static const String labSearchScreen = '/labSearchScreen';
  static const String pharmacySearchScreen = '/pharmacySearchScreen';
  static const String userTermAndConditionScreen =
      '/userTermAndConditionScreen';
  static const String consulationPaymentScreen = 'consulationPaymentScreen';
  static const String offerSuccessfullScreen = '/offerSuccessfullScreen';
  static const String addReportScreen = '/addReportScreen';

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
      case doctorListScreen:
        return _buildRoute(const UserDoctorList());
      case userAppointment:
        return _buildRoute(const UserAppointmentScreen());
      case userSpeciallizedQuickAppointment:
        return _buildRoute(const SpeciallizedQuickAppointmentScreen());
      case userSpeciallizedDoctorsScreen:
        final arguments = settings.arguments as Map<String, dynamic>;
        return _buildRoute(SpecializedDoctorsScreen(
          categoryImage: arguments["categoryImage"],
          categoryName: arguments["categoryName"],
        ));
      case userConfirmedAppointmentScreen:
        return _buildRoute(UserConfirmedAppointmentScreen());
      case userQuickConsultationScreen:
        return _buildRoute(const UserQuickConsulationScreen());
      case userSpeciallizedConsultationScreen:
        return _buildRoute(const SpecializedQuickVideoConsultationScreen());
      case userConsultationScreem:
        final arguments = settings.arguments as Map<String, dynamic>;
        return _buildRoute(
            UserConsulationScreen(isPayments: arguments["isPayments"]));

      case medicalRecordScreen:
        return _buildRoute(const AddMedicalRecordScreen());
      case addReportScreen:
        return _buildRoute(const AddReportScreen());
      case addRecordScreen:
        return _buildRoute(const AddRecordScreen());

      case recordScreen:
        return _buildRoute(const RecordScreen());
      case pharmacyScreen:
        return _buildRoute(const UserReportScreen());

      case appointmentDetailsScreen:
        return _buildRoute(const AppointmentDetailScreen());

      case reportDetailScreen:
        final arguments = settings.arguments as Map<String, dynamic>;

        return _buildRoute(ReportDetailsScreen(
          title: arguments["title"],
        ));

      case labPaymentScreen:
        return _buildRoute(LabPaymentScreen());

      case userEditProfileScreen:
        return _buildRoute(const UserEditProfileScreen());
      case helpsupportScreen:
        return _buildRoute(const UserHelpAndSupportScreen());
      case about:
        return _buildRoute(const UserAboutScreen());
      case contactUs:
        return _buildRoute(UserContactUsScreen());
      case privactPolicy:
        return _buildRoute(const UserPrivacyPolicyScreen());
      case faq:
        return _buildRoute(const UserFAQScreen());
      case userTermAndConditionScreen:
        return _buildRoute(const UserTermAndConditionScreen());

      case checkOutOrderHistory:
        return _buildRoute(const UserCheckOutOrderHistory());
      case checkOutConsulation:
        return _buildRoute(const CheckOutConsulation());
      case checkOutAppointment:
        return _buildRoute(const UserCheckOutAppointmentScreen());
      case checkOutLabTest:
        return _buildRoute(const UserCheckOutLabTest());
      case checkOutPharmacy:
        return _buildRoute(const UserCheckOutPharmacy());
      case notificationScreen:
        return _buildRoute(const UserNotificationScreen());

      case offerSuccessfullScreen:
        final arguments = settings.arguments as Map<String, dynamic>;
        return _buildRoute(OfferSuccessfullScreen(
          successMsg: arguments['msg'],
        ));

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
      case consulationPaymentScreen:
        return _buildRoute(ConsulationPaymentScreen());
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
