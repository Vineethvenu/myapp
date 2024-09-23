class LoginModel {
  int? success;
  String? message;
  Customerdata? customerdata;
  String? guestId;

  LoginModel({this.success, this.message, this.customerdata, this.guestId});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    customerdata = json['customerdata'] != null
        ? new Customerdata.fromJson(json['customerdata'])
        : null;
    guestId = json['guest_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.customerdata != null) {
      data['customerdata'] = this.customerdata!.toJson();
    }
    data['guest_id'] = this.guestId;
    return data;
  }
}

class Customerdata {
  String? id;
  String? name;
  String? email;
  String? mobile;
  String? referee;
  String? referralCode;
  int? status;
  String? token;
  int? otpverificationstatus;
  int? emailverificationstatus;

  Customerdata(
      {this.id,
      this.name,
      this.email,
      this.mobile,
      this.referee,
      this.referralCode,
      this.status,
      this.token,
      this.otpverificationstatus,
      this.emailverificationstatus});

  Customerdata.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    referee = json['referee'];
    referralCode = json['referral_code'];
    status = json['status'];
    token = json['token'];
    otpverificationstatus = json['otpverificationstatus'];
    emailverificationstatus = json['emailverificationstatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['referee'] = this.referee;
    data['referral_code'] = this.referralCode;
    data['status'] = this.status;
    data['token'] = this.token;
    data['otpverificationstatus'] = this.otpverificationstatus;
    data['emailverificationstatus'] = this.emailverificationstatus;
    return data;
  }
}
