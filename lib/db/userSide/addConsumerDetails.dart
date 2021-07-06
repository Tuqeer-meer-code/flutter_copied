import 'dart:convert';
UserConsumerAdd userConsumerAddFromJson(String str) => UserConsumerAdd.fromJson(json.decode(str));

String userConsumerAddToJson(UserConsumerAdd data) => json.encode(data.toJson());

class UserConsumerAdd {
  UserConsumerAdd({
    this.id,
    this.hint,
    this.consumerNo,
  });

  String id;
  String hint;
  String consumerNo;

  factory UserConsumerAdd.fromJson(Map<String, dynamic> json) => UserConsumerAdd(
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
