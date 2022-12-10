class EventModel {
  String createdAt;
  String name;
  int duration;
  String category;
  bool locked;
  String id;

  EventModel(
      {required this.createdAt,
      required this.name,
      required this.duration,
      required this.category,
      required this.locked,
      required this.id});

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
      createdAt: json['createdAt'],
      name: json['name'],
      duration: json['duration'],
      category: json['category'],
      locked: json['locked'],
      id: json['id']);
}
