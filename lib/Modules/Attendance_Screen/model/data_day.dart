class DataPerDay {
  final String text, color;

  DataPerDay({
    required this.text,required this.color
});

  factory DataPerDay.fromJson(Map<String, dynamic> json) {
    return DataPerDay(
      text: json["text"],
      color: json["color"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "text": text,
      "color": color,
    };
  }

//
}