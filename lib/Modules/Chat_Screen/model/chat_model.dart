class ChatModel {
  final String title;
  final String desc;

  ChatModel({
   required this.title,
   required this.desc
});

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
      title: json["title"],
      desc: json["desc"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": this.title,
      "desc": this.desc,
    };
  }

//
}