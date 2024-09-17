abstract class ApiConfig {
  static const String baseUrl = 'https://api.thecatapi.com';
  static const String version = '/v1';

  static Map<String, String> defaultHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json; chartset=UTF-8'
  };

  static const getPictureCat = '/images/search';
}