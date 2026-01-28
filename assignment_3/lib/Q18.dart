/*Write a Dart program that reads environment variables from a map. 
If a value is null, replace it with a default.
Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on conditions.*/

void main() {
  Map<String, String?> envVariable = {
    'ENV': null,
    'VERSION': '1.0.0',
  };

  String env = envVariable['ENV'] ?? 'development';
  String version = envVariable['VERSION'] ?? '0.1.0';

  print('ENV: ${env.toUpperCase()}');
  print('VERSION: ${version.toUpperCase()}');


  if (env.toUpperCase() == 'DEVELOPMENT' && version.toUpperCase() == '1.0.0') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}

