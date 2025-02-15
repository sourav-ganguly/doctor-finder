import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final feedRepositoryProvider = Provider<FeedProvider>((ref) => FeedProvider());

final feedListProvider = FutureProvider.autoDispose<List<String>>((ref) async {
  final repository = ref.read(feedRepositoryProvider);

  try {
    final results = repository.getRandomHealthFacts();
    return results;
  } catch (e) {
    throw Exception('Failed to fetch health facts: $e');
  }
});

class FeedProvider {
  final List<String> _healthFacts = [
    "Did you practice deep breathing today? Deep breathing significantly reduces stress levels",
    "Time for water! Drinking 8 glasses of water daily improves brain function",
    "Stand up and stretch! Taking breaks every 30 minutes reduces risk of heart disease",
    "Have you meditated today? Just 10 minutes of meditation can reduce anxiety",
    "Time to move! Walking 7000 steps daily can add years to your life expectancy",
    "Eat your greens! 5 servings of vegetables daily reduces cancer risk",
    "Check your posture! Good posture reduces back pain and boosts energy levels",
    "Time for bed! 7-9 hours of sleep strengthens your immune system",
    "Smile! Genuine smiling releases endorphins and reduces stress hormones",
    "Had your omega-3s? Fish oil supplements improve brain function",
    "Time to socialize! Strong social connections can increase lifespan",
    "Practice gratitude! Writing 3 grateful things daily boosts happiness",
    "Get some sun! 15 minutes of sunlight provides your daily vitamin D needs",
    "Stretch it out! Regular stretching improves flexibility in just weeks",
    "Eat mindfully! Slow eating naturally reduces calorie intake",
    "Dance a bit! Dancing regularly reduces risk of dementia",
    "Time for fruits! An apple a day really does keep the doctor away",
    "Stand tall! Good posture increases testosterone and confidence",
    "Laugh out loud! Regular laughter boosts immune system function",
    "Take a walk! A 15-minute walk after meals reduces blood sugar spikes",
    "Hydrate well! Proper hydration improves cognitive performance",
    "Time for pushups! Regular strength training slows aging",
    "Breathe deeply! Proper breathing reduces anxiety levels",
    "Get moving! Exercise boosts brain-derived growth factor",
    "Eat colorfully! Varied fruit and vegetable intake reduces inflammation",
    "Time for tea! Green tea drinkers have lower risk of heart disease",
    "Rest your eyes! The 20-20-20 rule reduces digital eye strain",
    "Stay connected! Strong relationships improve overall health",
    "Floss daily! Regular flossing can add years to your life",
    "Meditate mindfully! Meditation increases gray matter in the brain",
    "Take cold showers! Cold exposure boosts immune function",
    "Eat fermented foods! Probiotics improve gut health",
    "Practice yoga! Regular yoga reduces chronic pain",
    "Get creative! Artistic activities reduce stress levels",
    "Stay curious! Learning new skills prevents cognitive decline",
    "Time for squats! Regular leg exercises boost brain function",
    "Drink green juice! Daily green juice boosts nutrient intake",
    "Practice balance! Balance exercises reduce fall risk",
    "Breathe through nose! Nasal breathing improves oxygen uptake",
    "Eat nuts daily! A handful of nuts reduces heart disease risk",
    "Time for planks! Core exercises improve posture",
    "Stay positive! Optimistic people live longer",
    "Get a massage! Regular massage reduces muscle tension",
    "Take the stairs! Stair climbing strengthens bones",
    "Eat berries! Antioxidants in berries slow brain aging",
    "Practice fasting! Intermittent fasting increases longevity",
    "Get a pet! Pet owners have fewer doctor visits",
    "Dance regularly! Dancing reduces risk of falls in elderly",
    "Stay hydrated! Proper hydration reduces headaches",
    "Love yourself! Self-compassion reduces anxiety and depression"
  ];

  List<String>? _cachedFacts;

  List<String> getRandomHealthFacts() {
    // Return cached facts if they exist
    if (_cachedFacts != null) {
      return _cachedFacts!;
    }

    final random = Random();
    final Set<int> selectedIndexes = {};

    while (selectedIndexes.length < 10) {
      selectedIndexes.add(random.nextInt(_healthFacts.length));
    }

    // Cache the results before returning
    _cachedFacts = selectedIndexes.map((index) => _healthFacts[index]).toList();
    return _cachedFacts!;
  }

  void clearCache() {
    _cachedFacts = null;
  }
}
