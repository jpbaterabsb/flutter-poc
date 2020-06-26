class History {
  final String startDate;
  final String finalDate;

  History(this.startDate, this.finalDate);

  History.fromJson(Map<String, dynamic> json)
      : startDate = json['startDate'],
        finalDate = json['finalDate'];

  Map<String, dynamic> toJson() =>
      {
        'startDate': startDate,
        'finalDate': finalDate,
      };
}