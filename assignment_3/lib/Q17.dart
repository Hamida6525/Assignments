/*Write a Dart program that formats a price tag string with a currency. 
Apply string methods such as toString, padLeft, and length to format
 and compare the results.*/

void main() {
  //int price = 60; 
  double price = 60;
  String currency = "Pounds";

  //var priceTag = price.toString().padLeft(5 ,'pounds') + ' ' + currency;
  var priceTag = price.toString().padLeft(5) + ' ' + currency;

  print("Formatted Price Tag: $priceTag");

  int originalLength = price.toString().length;
  int formattedLength = priceTag.length;

  print("Original Price Length: $originalLength");
  print("Formatted Price Tag Length: $formattedLength");

  if (formattedLength > originalLength) {
    print("price tag is longer than the original price.");
  } else {
    print("price tag is not longer than the original price.");
  }
}