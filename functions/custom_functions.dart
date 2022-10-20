class CustomFunctions {

  // Функция для подсчета повторений в коллекции
  Map<String, int> checkNames(List<String> names) {
    Map<String, int> _countNames = {};

    for (int i = 0; i <= names.length-1; i++) {
      if (_countNames.containsKey(names[i])) {
        _countNames.update(names[i], (value) => value += 1);
      }
      else
        _countNames.addAll({names[i]: 1});
    }
    return _countNames;
  }
}