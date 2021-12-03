// ignore_for_file: file_names

class Counter {
  String id;
  List<String> reasons;

  Counter({required this.id, required this.reasons});

  factory Counter.fromJson(Map<String, dynamic> json) {
    List<dynamic> jsonReasons = json["reasons"];

    return Counter(
      id: json["id"],
      reasons: jsonReasons.map((element) => element as String).toList(),
    );
  }
}
