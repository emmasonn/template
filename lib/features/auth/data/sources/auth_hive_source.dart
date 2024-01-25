import 'package:hive_flutter/hive_flutter.dart';
import 'package:peniremit/core/helpers/helpers_utils.dart';

const hiveAuthKey = 'auth_response_key';

class AppLocalSource {
  late Box _authResponseBox;

  Future<void> get openHiveBox async {
    pp('auth Box has been initialized');
    _authResponseBox = await Hive.openBox(hiveAuthKey);
  }

  //Get Auth Response
  
  //get cart meals
  // Future<List<MealModel>> getCartMeals() async {
  //   final mealMap = _cartMealBox.values;
  //   return mealMap.map((mealData) => MealModel.fromJson(mealData)).toList();
  // }

  //get cart meals
  // Stream<BoxEvent> getMealsStream() async* {
  //   yield* _cartMealBox.watch();
  // }

  // //cache meal
  // Future<void> cacheCartMeal(MealModel meal) async {
  //   await _cartMealBox.put(meal.id, meal.toJson);
  // }

  // // update meal
  // Future<void> updateCartMeal(MealModel meal) async {
  //   await _cartMealBox.put(meal.id, meal.toJson);
  // }

  //delete favorite bank account
  // Future<void> deleteCartMeal(String id) async {
  //   await _cartMealBox.delete(id);
  // }

  //clear cart
  // Future<void> clearCartMeal() async {
  //   await _cartMealBox.clear();
  // }

  // //cache phone number
  // Future<void> cacheHivPhoneNumber(String phoneNumber) async {
  //   await _phoneNumberBox.put(phoneNumber, phoneNumber);
  // }

  // //get frequency phone number
  // Future<List<String>> getFrequentPhoneNumber() async {
  //   final phoneNumberMap = _phoneNumberBox.values;
  //   return phoneNumberMap.map((phone) => phone as String).toList();
  // }
}
