import 'dart:math';

class Utils {
  Utils();

  String getErrorMessage(dynamic response) {
    try {
      return response['errors'][0] as String;
    } catch (e) {
      return 'Parece que algo anda mal, intenta mas tarde';
    }
  }

  //utils develop

  //generate function to return a randoom image to pichsum
  //https://picsum.photos/200/300
  static String generateRandomImage() {
    return "https://picsum.photos/200/300?random=${Random().nextInt(100)}";
  }
}
