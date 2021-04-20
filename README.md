# Useful Tools

Useful tools is a package whos have a large number of utils functions

## Usage


```dart
import 'package:useful_utils/useful_utils.dart';
```

## Number functions

```dart
isOdd(1) # returns true
isOdd(2) # returns false

isEven(1) # returns false
isEven(1) # returns true

# if the input is a string will parse to double if is an int will convert to double if is a double will return the original input
toDouble(50) # if an error happened, throw an error
tryToDouble(50) # if an error happened return null

# accepts a double, string, or int, and returns a double with fixed decimal places
fixedDecimais(value: 3.5784665466456, decimalPlaces: 2) # returns 3.57

percentage(value: 12.8, total: 150, round: 2) # returns 8.53
percentageReverse(percentage: 8.53, total: 100) # returns 12.794999999999998
```

## String functions

```dart
capitalize('wOrD') # returns word 
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.