double toDouble(dynamic value) {
  double parsedValue;
  if (value is String) {
    try {
      parsedValue = double.parse(value);
    } catch (e) {
      throw 'the string value "$value" cannot be parsed to a number';
    }
  } else if (value is int) {
    parsedValue = value.toDouble();
  } else if (value is double) {
    parsedValue = value;
  } else {
    throw 'type ${value.runtimeType} cannot be parsed to a number type';
  }

  return parsedValue;
}

double tryToDouble(dynamic value) {
  double parsedValue;
  if (value is String) {
    parsedValue = double.tryParse(value);
  } else if (value is int) {
    parsedValue = value.toDouble();
  } else if (value is double) {
    parsedValue = value;
  }

  return parsedValue;
}

bool isOdd(dynamic value) {
  var doubleValue = toDouble(value);

  return doubleValue % 2 != 0;
}

bool isEven(dynamic value) {
  var doubleValue = toDouble(value);

  return doubleValue % 2 == 0;
}
