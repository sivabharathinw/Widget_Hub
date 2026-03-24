import 'package:flutter_riverpod/flutter_riverpod.dart';


final onboardingProvider = NotifierProvider<OnboardingNotifier, bool>(() {
  return OnboardingNotifier();
});

class OnboardingNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void completeOnboarding() {
    state = true;
  }
}
