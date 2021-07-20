///Capitalize first letter
String capitalize(String value) {
  if (value.isEmpty) {
    return value;
  }

  return '${value[0].toUpperCase()}${value.substring(1)}';
}

///lower entire word and capitalize first letter
String lowerAndCapitalize(String value) {
  if (value.isEmpty) {
    return value;
  }

  return '${value[0].toUpperCase()}${value.substring(1).toLowerCase()}';
}

///lower all text and capitalize all words
String lowerAndCapitalizeAllWords(String value) {
  return value.split(' ').map((e) => lowerAndCapitalize(e)).join(' ');
}
