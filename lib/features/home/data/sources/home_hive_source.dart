import 'package:hive_flutter/hive_flutter.dart';
import 'package:peniremit/core/helpers/helpers_utils.dart';
import 'package:peniremit/features/home/data/model/beneficiary_model.dart';

const hiveElectricityKey = 'electricity_key';
const hiveTvKey = 'tv_key';
const hivePhoneKey = 'phone_key';

class AppLocalSource {
  late Box _electricityHiveBox;
  late Box _tvHiveBox;
  late Box _phoneHiveBox;

  Future<void> get openHiveBox async {
    pp('Home Box has been initialized');
    _electricityHiveBox = await Hive.openBox(hiveElectricityKey);
    _tvHiveBox = await Hive.openBox(hiveTvKey);
    _phoneHiveBox = await Hive.openBox(hivePhoneKey);
  }

  //get cart meals
  // Future<List<MealModel>> getCartMeals() async {
  //   final mealMap = _cartMealBox.values;
  //   return mealMap.map((mealData) => MealModel.fromJson(mealData)).toList();
  // }

  //get cart meals
  // Stream<BoxEvent> getMealsStream() async* {
  //   yield* _cartMealBox.watch();
  // }

  //cache electricity beneficiary
  Future<void> cacheElectricityBeneficiary(BeneficiaryModel beneficiary) async {
    await _electricityHiveBox.put(beneficiary.number, beneficiary.toJson);
  }

  //cache smart card beneficiary
  Future<void> cacheTvBeneficiary(BeneficiaryModel beneficiary) async {
    await _tvHiveBox.put(beneficiary.number, beneficiary.toJson);
  }

  //cache phone number beneficiary
  Future<void> cachePhoneBeneficiary(BeneficiaryModel beneficiary) async {
    await _phoneHiveBox.put(beneficiary.number, beneficiary.toJson);
  }

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
