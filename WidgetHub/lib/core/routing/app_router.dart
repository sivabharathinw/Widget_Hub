import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:widgethub/core/routing/main_shell.dart';
import 'package:widgethub/core/routing/onboarding_provider.dart';
import 'package:widgethub/features/api/api_detail_screen.dart';
import 'package:widgethub/features/api/api_screen.dart';
import 'package:widgethub/features/dashboard/dashboard_screen.dart';
import 'package:widgethub/features/faq/faq_screen.dart';
import 'package:widgethub/features/onboarding/onboarding_screen.dart';
import 'package:widgethub/features/settings/settings_screen.dart';
import 'package:widgethub/features/tasks/task_screen.dart';

// Basic GoRouter without ShellRoute!
final routerProvider = Provider<GoRouter>((ref) {
  // Check our simple in-memory boolean
  final hasCompletedOnboarding = ref.watch(onboardingProvider);

  return GoRouter(
    initialLocation: hasCompletedOnboarding ? '/dashboard' : '/onboarding',
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      
      // Look! No complex ShellRoute. Just standard GoRoutes!
      // We explicitly wrap each screen with our MainShell.
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const MainShell(child: DashboardScreen()),
      ),
      GoRoute(
        path: '/tasks',
        builder: (context, state) => const MainShell(child: TaskScreen()),
      ),
      GoRoute(
        path: '/faq',
        builder: (context, state) => const MainShell(child: FaqScreen()),
      ),
      GoRoute(
        path: '/api',
        builder: (context, state) => const MainShell(child: ApiScreen()),
        routes: [
          GoRoute(
            path: 'detail',
            // API Detail shouldn't have the bottom nav bar, so no MainShell!
            builder: (context, state) {
              final post = state.extra as Map<String, dynamic>;
              return ApiDetailScreen(post: post);
            },
          ),
        ],
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const MainShell(child: SettingsScreen()),
      ),
    ],
  );
});
