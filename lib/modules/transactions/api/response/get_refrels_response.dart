import 'package:json_annotation/json_annotation.dart';

part 'get_refrels_response.g.dart';

@JsonSerializable()
class GetReferralsResponse {
  String? status;
  Data? data;
  String? statusCode;

  GetReferralsResponse({this.status, this.data, this.statusCode});

  factory GetReferralsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetReferralsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetReferralsResponseToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: '1')
  List<User>? users1;

  @JsonKey(name: '2')
  List<User>? users2;

  @JsonKey(name: '3')
  List<User>? users3;

  @JsonKey(name: '4')
  List<User>? users4;

  @JsonKey(name: '5')
  List<User>? users5;

  Data({this.users1, this.users2, this.users3, this.users4, this.users5});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class User {
  int? id;
  String? firstname;
  String? lastname;
  String? username;
  String? email;
  @JsonKey(name: 'phone_code')
  String? phoneCode;
  String? phone;
  @JsonKey(name: 'referral_id')
  int? referralId;
  @JsonKey(name: 'created_at')
  String? createdAt;
  String? image;
  String? fullname;
  String? mobile;
  @JsonKey(name: 'last_seen')
  String? lastSeen;

  User({
    this.id,
    this.firstname,
    this.lastname,
    this.username,
    this.email,
    this.phoneCode,
    this.phone,
    this.referralId,
    this.createdAt,
    this.image,
    this.fullname,
    this.mobile,
    this.lastSeen,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}






// {
//     "status": "success",
//     "data": {
//         "1": [
//             {
//                 "id": 2,
//                 "firstname": "Murshad shah",
//                 "lastname": "Zarqavi",
//                 "username": "Zarqavi",
//                 "email": "murshaddhah2012@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+923214725600",
//                 "referral_id": 1,
//                 "created_at": "2023-12-14T04:30:53.000000Z",
//                 "image": "65918f8a1591e1704038282.jpg",
//                 "fullname": "Murshad shah Zarqavi",
//                 "mobile": "+92+923214725600",
//                 "last_seen": "offline"
//             },
//             {
//                 "id": 4,
//                 "firstname": "Abid",
//                 "lastname": "Hussain",
//                 "username": "abidhussain",
//                 "email": "abihqureshi@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+923335490979",
//                 "referral_id": 1,
//                 "created_at": "2023-12-14T08:43:37.000000Z",
//                 "image": null,
//                 "fullname": "Abid Hussain",
//                 "mobile": "+92+923335490979",
//                 "last_seen": "offline"
//             },
      
//                 ],
//         "2": [
//             {
//                 "id": 7,
//                 "firstname": "Faiza",
//                 "lastname": "Tahir",
//                 "username": "FaizaTahir0111",
//                 "email": "faizatahir0111@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+92 03335106587",
//                 "referral_id": 5,
//                 "created_at": "2023-12-14T09:19:45.000000Z",
//                 "image": null,
//                 "fullname": "Faiza Tahir",
//                 "mobile": "+92+92 03335106587",
//                 "last_seen": "offline"
//             },
//             {
//                 "id": 15,
//                 "firstname": "Sundas",
//                 "lastname": "Ahmad",
//                 "username": "SUNDAS",
//                 "email": "sundasimran54@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+92074243635",
//                 "referral_id": 14,
//                 "created_at": "2023-12-14T18:53:14.000000Z",
//                 "image": null,
//                 "fullname": "Sundas Ahmad",
//                 "mobile": "+92+92074243635",
//                 "last_seen": "offline"
//             },
            
//         ],
//         "3": [
//             {
//                 "id": 13,
//                 "firstname": "Omar",
//                 "lastname": "Omi",
//                 "username": "OmarO",
//                 "email": "umar012ommi@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+923185755602",
//                 "referral_id": 7,
//                 "created_at": "2023-12-14T13:38:14.000000Z",
//                 "image": null,
//                 "fullname": "Omar Omi",
//                 "mobile": "+92+923185755602",
//                 "last_seen": "offline"
//             },
//             {
//                 "id": 30,
//                 "firstname": "mahtab",
//                 "lastname": "Siddiqui",
//                 "username": "stears",
//                 "email": "mahtabulhassan86@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+923007167578",
//                 "referral_id": 29,
//                 "created_at": "2023-12-17T11:33:40.000000Z",
//                 "image": null,
//                 "fullname": "mahtab Siddiqui",
//                 "mobile": "+92+923007167578",
//                 "last_seen": "offline"
//             },
            
//         ],
//         "4": [
//             {
//                 "id": 61,
//                 "firstname": "Muhammad",
//                 "lastname": "Adrees",
//                 "username": "adreesabbasi",
//                 "email": "adreesabbasi2017@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "03448833188",
//                 "referral_id": 59,
//                 "created_at": "2023-12-21T17:14:58.000000Z",
//                 "image": null,
//                 "fullname": "Muhammad Adrees",
//                 "mobile": "+9203448833188",
//                 "last_seen": "offline"
//             },
            
//         ],
//         "5": [
//             {
//                 "id": 134,
//                 "firstname": "Saqib",
//                 "lastname": "Mehar",
//                 "username": "saqib12",
//                 "email": "saqibch019@gmail.com",
//                 "phone_code": "+92",
//                 "phone": "+923221435971",
//                 "referral_id": 104,
//                 "created_at": "2024-01-20T08:52:54.000000Z",
//                 "image": null,
//                 "fullname": "Saqib Mehar",
//                 "mobile": "+92+923221435971",
//                 "last_seen": "offline"
//             }
//         ]
//     },
//     "statusCode": "200"
// }