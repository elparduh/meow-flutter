abstract class ApiConfig {
  static const String baseUrl = 'https://api.thecatapi.com/v1';

  static Map<String, String> defaultHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json; chartset=UTF-8'
  };

  static const getCatImage = '/images/search';
}
