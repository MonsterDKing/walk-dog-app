class Utils {
  Utils();

  String getErrorMessage(dynamic response) {
    try {
      return response['errors'][0] as String;
    } catch (e) {
      return 'Parece que algo anda mal, intenta mas tarde';
    }
  }
}
