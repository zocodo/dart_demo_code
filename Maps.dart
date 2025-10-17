void main() {
  Map<String, String> countries = {
    'CN': 'china',
    'US': 'united states',
    'JP': 'japan'
  };

  print(countries);
  print(countries.keys);
  print(countries['CN']);
  print(countries['US']);
  
  countries['RU'] = '俄罗斯';
  countries['CN'] = '中国';
  print(countries);
  print(countries.length);
  print(countries['aa']);
}
