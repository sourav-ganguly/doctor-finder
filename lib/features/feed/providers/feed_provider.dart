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
    "Drinking water can boost your metabolism by up to 30%",
    "The human body contains enough iron to make a 3-inch nail",
    "Your heart beats about 100,000 times every day",
    "The human brain can process images in as little as 13 milliseconds",
    "A single human blood cell takes only 60 seconds to make a complete circuit of the body",
    "The average person walks the equivalent of three times around the world in a lifetime",
    "Your nose can remember 50,000 different scents",
    "Your body has enough blood vessels to circle the Earth four times",
    "20% of your body's total oxygen consumption is used by your brain",
    "Your body produces enough saliva to fill two swimming pools in a lifetime",
    "Bones are 4 times stronger than concrete",
    "The average person takes 23,000 breaths per day",
    "Your eyes can distinguish approximately 10 million different colors",
    "The human body contains enough fat to make 7 bars of soap",
    "Your stomach acid is strong enough to dissolve zinc",
    "The average person spends 6 months of their lifetime waiting for red lights to turn green",
    "Your body generates enough heat in 30 minutes to boil a gallon of water",
    "The human eye can detect over 300 different shades of gray",
    "Your ears never stop growing throughout your lifetime",
    "The average person produces enough saliva in their lifetime to fill two swimming pools",
    "Your brain generates enough electricity to power a small light bulb",
    "The average person has over 1,460 dreams a year",
    "Your body contains enough carbon to make 900 pencils",
    "The human skeleton regenerates completely every 10 years",
    "Your fingernails grow four times faster than your toenails",
    "The average person's heart beats over 2.5 billion times in their lifetime",
    "Your body has enough phosphorus to make 2,200 match heads",
    "The average person blinks about 15-20 times per minute",
    "Your body contains enough sulfur to kill all fleas on an average dog",
    "The average person's foot has 250,000 sweat glands",
    "Your brain is more active at night than during the day",
    "The average person speaks about 7,000 words per day",
    "Your body produces 25 million new cells each second",
    "The average person's skin weighs twice as much as their brain",
    "Your bones are composed of 31% water",
    "The average person spends 6 years of their life dreaming",
    "Your body has enough glucose to make a caramel candy",
    "The average person's heart pumps about 2,000 gallons of blood per day",
    "Your body contains enough potassium to cause a small explosion",
    "The average person walks about 110,000 miles in their lifetime",
    "Your brain operates on about 20 watts of power",
    "The average person has over 100 trillion microorganisms living in their body",
    "Your hair is strong enough to hold the weight of two elephants",
    "The average person's lungs contain over 300 billion capillaries",
    "Your body produces enough heat in 30 minutes to boil half a gallon of water",
    "The average person has over 600 muscles in their body",
    "Your stomach lining replaces itself every 4 days",
    "The average person's heart creates enough pressure to squirt blood 30 feet",
    "Your body contains enough DNA to stretch from the Sun to Pluto and back 17 times",
    "The average person produces enough earwax in their lifetime to fill several candles"
  ];

  List<String> getRandomHealthFacts() {
    final random = Random();
    final Set<int> selectedIndexes = {};

    while (selectedIndexes.length < 5) {
      selectedIndexes.add(random.nextInt(_healthFacts.length));
    }

    return selectedIndexes.map((index) => _healthFacts[index]).toList();
  }
}
