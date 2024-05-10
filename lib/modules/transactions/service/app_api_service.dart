import 'dart:developer';
import 'package:qafworld_app/modules/auth/apis/api.dart';
import 'package:qafworld_app/modules/transactions/api/dtos/add_fund_dto.dart';
import 'package:qafworld_app/modules/transactions/api/response/about_us_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/add_fund_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/all_advertisement_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/contact_us_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/earning_list_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/faq_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/gate_ways_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/get_profile_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/get_refrels_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/my_advertisement_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/plan_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/suport_ticket_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/withdraw_history_response.dart';

import '../api/api.dart';
import '../api/response/transactions_response.dart';
import 'api_service.dart';

class AppApiService extends ApiService {
  AppApiService(super.apiClient);

  @override
  Future<TransactionList> getAllTransactions() async {
    final response = await AppApis().getTransactions();
    log(response.data!.first.finalBalance.toString());
    return response;
  }

  @override
  Future<FAQResponse> getAllFAQ() async {
    final response = await AppApis().getFAQ();
    return response;
  }

  @override
  Future<PlanResponse> getAllPlans() async {
    final response = await AppApis().getPlans();
    return response;
  }

  @override
  Future<PaymentGatewayResponse> getAllPaymentGateWays() async {
    final response = await AppApis().getPaymentGateWays();
    log(response.toString());
    return response;
  }

  @override
  Future<AddFundResponse> addFunds(String gateway, String amount) async {
    final response = await AppApis().postAddFunds(AddFundDto(gateway, amount));
    return response;
  }

  @override
  Future<ContactUsResponse> contactUs() async {
    final response = await AppApis().getContactUs();
    return response;
  }

  @override
  Future<AboutUsResponse> aboutUs() async {
    final response = await AppApis().getAboutUs();
    return response;
  }

  @override
  Future<AllAdvertisementResponse> allAdvertisement() async {
    final response = await AppApis().getAllAdvertisement();
    return response;
  }

  @override
  Future<MyAdvertisementResponse> myAdvertisement() async {
    final response = await AppApis().getMyAdvertisement();
    return response;
  }

  @override
  Future<WithdrawHistoryResponse> withdrawHistory() async {
    final response = await AppApis().getWithdrawHistory();
    return response;
  }

  @override
  Future<GetProfileResponse> getUserProfile() async {
    final response = await AppApis().getProfile();
    return response;
  }

  @override
  Future<GetReferralsResponse> getAllRefrels() async {
    final response = await AppApis().getRefrels();
    return response;
  }

  @override
  Future<SupportTicketResponse> supportTickets() async {
    final response = await AppApis().getSupportTickets();

    return response;
  }

  @override
  Future<EarningListResponse> earningList() async {
    final response = await AppApis().getEraningList();
    return response;
  }
}
