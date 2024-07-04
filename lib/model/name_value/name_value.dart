abstract class INameAndValue<T> {
  String get name;
  T get value;
}

class NameAndValue<T> implements INameAndValue<T> {
  final String name;
  final T value;
  bool isSelected;

  NameAndValue(
      {required this.name, required this.value, this.isSelected = false});

  bool get selected => isSelected;

  set selected(bool selected) {
    this.isSelected = selected;
  }

  factory NameAndValue.fromJson(Map<String, dynamic> json) => NameAndValue(
        name: json['name'],
        value: json['value'],
      );

  tojson() => {"name": name, "value": value};
}
