import 'dart:convert';
userModel userModelFromJson(String str) => userModel.fromJson(json.decode(str));

String userConsumerAddToJson(userModel data) => json.encode(data.toJson());

class userModel {
  userModel({
    this.id,
    this.hint,
    this.consumerNo,
  });

  String id;
  String hint;
  String consumerNo;

  factory userModel.fromJson(Map<String, dynamic> json) => userModel(
    id: json["id"],
    hint: json["hint"],
    consumerNo: json["consumer_no"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "hint": hint,
    "consumer_no": consumerNo,
  };
}
