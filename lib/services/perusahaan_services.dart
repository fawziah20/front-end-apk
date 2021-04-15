part of 'services.dart';

class PerusahaanServices {
  static Future<ApiReturnValue<List<Perusahaan>>> getPerusahaan() async {
    await Future.delayed(Duration(milliseconds: 5000));

    return ApiReturnValue(value: mockPerusahaan);
  }
}
