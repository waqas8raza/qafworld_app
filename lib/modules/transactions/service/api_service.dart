import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qafworld_app/modules/transactions/api/response/about_us_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/contact_us_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/gate_ways_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/get_refrels_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/my_advertisement_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/transactions_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/withdraw_history_response.dart';

import '../../api_client_helpers/api_helper.dart';
import '../api/response/add_fund_response.dart';
import '../api/response/all_advertisement_response.dart';
import '../api/response/earning_list_response.dart';
import '../api/response/faq_response.dart';
import '../api/response/get_profile_response.dart';
import '../api/response/plan_response.dart';
import '../api/response/suport_ticket_response.dart';
import 'app_api_service.dart';

abstract class ApiService {
  ApiService(this.apiClient);
  final Dio apiClient;

  Future<TransactionList> getAllTransactions();

  Future<WithdrawHistoryResponse> withdrawHistory();

  Future<FAQResponse> getAllFAQ();

  Future<PlanResponse> getAllPlans();

  Future<PaymentGatewayResponse> getAllPaymentGateWays();

  Future<ContactUsResponse> contactUs();

  Future<AboutUsResponse> aboutUs();

  Future<AllAdvertisementResponse> allAdvertisement();

  Future<MyAdvertisementResponse> myAdvertisement();

  Future<GetProfileResponse> getUserProfile();

  Future<GetReferralsResponse> getAllRefrels();

  Future<SupportTicketResponse> supportTickets();

  Future<EarningListResponse> earningList();

  Future<AddFundResponse> addFunds(String gateway, String amount);
}

final appServiceProvider =
    Provider<ApiService>((ref) => AppApiService(ref.read(apiClient)));
