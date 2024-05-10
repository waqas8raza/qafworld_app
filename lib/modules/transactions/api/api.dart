import 'package:dio/dio.dart';
import 'package:qafworld_app/modules/transactions/api/dtos/add_fund_dto.dart';
import 'package:qafworld_app/modules/transactions/api/response/about_us_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/all_advertisement_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/contact_us_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/faq_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/gate_ways_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/plan_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/transactions_response.dart';
import 'package:qafworld_app/modules/transactions/api/response/withdraw_history_response.dart';
import 'package:retrofit/retrofit.dart';

import '../../api_client_helpers/api_helper.dart';
import 'response/add_fund_response.dart';
import 'response/earning_list_response.dart';
import 'response/get_profile_response.dart';
import 'response/get_refrels_response.dart';
import 'response/my_advertisement_response.dart';
import 'response/suport_ticket_response.dart';

part 'api.g.dart';

@RestApi()
abstract class AppApis {
  factory AppApis() => _AppApis(ApiHelper.client);
  // static const String _path = '/signup';

  @GET("/user/transactions")
  Future<TransactionList> getTransactions();

  @GET("/user/withdraw-history")
  Future<WithdrawHistoryResponse> getWithdrawHistory();

  @GET("/user/faqs")
  Future<FAQResponse> getFAQ();

  @GET("/user/plans")
  Future<PlanResponse> getPlans();

  @GET("/user/gateways")
  Future<PaymentGatewayResponse> getPaymentGateWays();

  @GET("/user/contact")
  Future<ContactUsResponse> getContactUs();

  @GET("/user/about")
  Future<AboutUsResponse> getAboutUs();

  @GET("/user/all-advertisements")
  Future<AllAdvertisementResponse> getAllAdvertisement();

  @GET("/user/my-advertisements")
  Future<MyAdvertisementResponse> getMyAdvertisement();

  @GET("/user/profile")
  Future<GetProfileResponse> getProfile();

  @GET("/user/referal")
  Future<GetReferralsResponse> getRefrels();

  @GET("/user/support-ticket")
  Future<SupportTicketResponse> getSupportTickets();

  @GET("/user/earning-list")
  Future<EarningListResponse> getEraningList();

  @POST('')
  Future<AddFundResponse> postAddFunds(@Body() AddFundDto addFundDto);
}
