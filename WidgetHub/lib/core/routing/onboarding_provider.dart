import 'package:flutter_riverpod/flutter_riverpod.dart';

// An extremely simple in-memory notifier to track if the user saw onboarding
final onboardingProvider = NotifierProvider<OnboardingNotifier, bool>(() {
  return OnboardingNotifier();
});

class OnboardingNotifier extends Notifier<bool> {
  @override
  bool build() => false; // false by default

  void completeOnboarding() {
    state = true;
  }
}
