class CmmRegexpValidators {
  static RegExp hasUppercaseWord = RegExp(r'[A-Z]');
  static RegExp hasLowercaseWord = RegExp(r'[a-z]');
  static RegExp withOutAccent = RegExp(r'[à-ü]|[À-Ü]');
  static RegExp sequenceCharacters = RegExp(r'(.+)\1\1+');
  static RegExp hasSpecialCharacter = RegExp(r'[^A-Za-z0-9s\t\n\r]');
  static RegExp onlyWords = RegExp(r'^[a-zA-Z]*$');
  static RegExp onlyWordsSpace = RegExp(r'^[a-zA-Z\s]*$');

  static RegExp numbersAndLeastOneLetter =
      RegExp(r'^(?=.*[a-zA-Z])[a-zA-Z0-9\s]*$');

  static RegExp numbersAndLeastOneLetterWithSpecialChar =
      RegExp(r'^(?=.*[a-zA-Z])[a-zA-Z0-9-_.\s]*$');

  static RegExp isNumericOnly = RegExp(r'\d');
  static RegExp notDigit = RegExp(r'\D+');
  static RegExp isEmail = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );
  static RegExp onlySpecialCharacters = RegExp(r'^[A-Za-z0-9]+\$');
  static RegExp beginningSpecial = RegExp(r'^[^\w\d]+');
  static RegExp onlyWordsDigits = RegExp(r'^[\w\d\.\-\_]+$');
  static RegExp onlyWordsDigitsAndSpace = RegExp(r'^[\w\d\s\.\-\_]+$');
  static RegExp specialSameCharacters = RegExp(r'([^a-zA-Z0-9]){2,}');

  // Numeros nacionales (pago movil)
  static RegExp nationalPhoneNumber =
      RegExp(r'^(0412|0414|0424|0416|0426|412|414|424|416|426)[0-9]{7}$');
  static RegExp nationalOperatorPhoneNumber =
      RegExp(r'^(0412|0414|0424|0416|0426|412|414|424|416|426)$');
}
