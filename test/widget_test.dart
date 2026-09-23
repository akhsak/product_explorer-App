import 'package:flutter_test/flutter_test.dart';
import 'package:product_explorer/core/services/favorites_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('FavoritesService initialization test', (
    WidgetTester tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await FavoritesService.instance.init();
    expect(FavoritesService.instance.favorites, isEmpty);
  });
}
