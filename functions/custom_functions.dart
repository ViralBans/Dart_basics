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

  // Функция для подсчета в коллеции цифр и возвращения их в виде списка
  Set<int> countDigits(List<String> list) {
    Set<int> _countDigits = {};

    for(int i = 0; i <= list.length-1; i++) {
      var _temp = list[i].toLowerCase();
      switch(_temp) {
        case 'zero': _countDigits.add(0);
        break;
        case 'one': _countDigits.add(1);
        break;
        case 'two': _countDigits.add(2);
        break;
        case 'three': _countDigits.add(3);
        break;
        case 'four': _countDigits.add(4);
        break;
        case 'five': _countDigits.add(5);
        break;
        case 'six': _countDigits.add(6);
        break;
        case 'seven': _countDigits.add(7);
        break;
        case 'eight': _countDigits.add(8);
        break;
        case 'nine': _countDigits.add(9);
        break;
      }
    }
    return _countDigits;
  }
}