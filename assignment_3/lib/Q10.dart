/*Create a Dart program that builds a map of country codes.
 Print the value for 'EG', add a new entry 'QA': 'Qatar',
  print the total length, 
  and check if 'JO' exists—if not, print 'Jordan missing'.*/

void main() {
  // Initialize the map with country codes  
  Map<String, String> countryCodes= { 
    'EG': 'Egypt',
    'US': 'United States',
    'IN': 'India',
    'CN': 'China',
  };  
  
  print("Country for 'EG': ${countryCodes['EG']}");

  countryCodes['QA'] = 'Qatar';
 
  print("Total number of country codes: ${countryCodes.length}");
 
  if (countryCodes.containsKey('JO')) {
    print('Jordan exists');
  } else {
    print('Jordan missing');
  }
}


