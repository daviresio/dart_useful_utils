import 'dart:math' as math;

/// Convert a string or int to double and returns the double value
/// Throws a Error if cant be converted
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

/// Convert a string or int to double and returns the double value
/// Returns null if cant be converted
double? tryToDouble(dynamic value) {
  double? parsedValue;
  if (value is String) {
    parsedValue = double.tryParse(value);
  } else if (value is int) {
    parsedValue = value.toDouble();
  } else if (value is double) {
    parsedValue = value;
  }

  return parsedValue;
}

///Check if number is odd and return a bool
bool isOdd(dynamic value) {
  var doubleValue = toDouble(value);

  return doubleValue % 2 != 0;
}

///Check if number is even and return a bool
bool isEven(dynamic value) {
  var doubleValue = toDouble(value);

  return doubleValue % 2 == 0;
}

/// Fixed decimals and return the double value
/// If the input value is a string or int, convert it to double before
double fixedDecimais({required dynamic value, required int decimalPlaces}) {
  var parsedValue = toDouble(value);
  return toDouble(parsedValue.toStringAsFixed(decimalPlaces));
}

///Calculate the percentage of a number, and round the result if pass the optional parameter
double percentage(
    {required dynamic value, required dynamic total, int? round}) {
  var valueParsed = toDouble(value);
  var totalParsed = toDouble(total);

  var result = (valueParsed * 100) / totalParsed;
  if (round == null) {
    return result;
  } else {
    return fixedDecimais(value: result, decimalPlaces: round);
  }
}

///Discovery value from percentage of a number, and round the result if pass the optional parameter
double percentageReverse({
  required dynamic percentage,
  required dynamic total,
  int? round,
}) {
  var percentageParsed = toDouble(percentage);
  var totalParsed = toDouble(total);

  var result = ((totalParsed / 100) * percentageParsed);

  if (round == null) {
    return result;
  } else {
    return fixedDecimais(value: result, decimalPlaces: round);
  }
}

///This funcion is like a lerp and unlerp, but is general. Its expect a number
/// and a range for interpolate, after the result is interpolated with a second range
double remap(
  double value,
  double start1,
  double stop1,
  double start2,
  double stop2,
) {
  final outgoing =
      start2 + (stop2 - start2) * ((value - start1) / (stop1 - start1));

  return outgoing;
}

///expect a min and max number and return a random number between them
int randomInt({required int min, required int max}) {
  final random = math.Random();
  return min + random.nextInt(max - min);
}
