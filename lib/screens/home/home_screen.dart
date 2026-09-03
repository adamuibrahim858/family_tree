import 'package:flutter/material.dart';

import '../../widgets/family_summary_card.dart';
import '../../widgets/home_bottom_navigation.dart';
import '../../widgets/home_feature_card.dart';
import '../../widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _features = [
    _FeatureItem(
      title: 'Persons',
      icon: Icons.people_outline,
      subtitle: 'Family members',
      route: '/persons',
      iconColor: Color(0xFF2D6A4F),
      iconBackground: Color(0xFFD8F3DC),
    ),
    _FeatureItem(
      title: 'Histories',
      icon: Icons.menu_book_outlined,
      subtitle: 'Family stories',
      route: '/histories',
      iconColor: Color(0xFF805AD5),
      iconBackground: Color(0xFFEDE9FA),
    ),
    _FeatureItem(
      title: 'Documentaries',
      icon: Icons.movie_outlined,
      subtitle: 'Videos & films',
      route: '/documentaries',
      iconColor: Color(0xFFDD6B20),
      iconBackground: Color(0xFFFEEBC8),
    ),
    _FeatureItem(
      title: 'Events',
      icon: Icons.event_outlined,
      subtitle: 'Gatherings',
      route: '/events',
      iconColor: Color(0xFF2B6CB0),
      iconBackground: Color(0xFFEBF4FF),
    ),
    _FeatureItem(
      title: 'Galleries',
      icon: Icons.photo_library_outlined,
      subtitle: 'Photos & albums',
      route: '/galleries',
      iconColor: Color(0xFFC05621),
      iconBackground: Color(0xFFFFF5F0),
    ),
    _FeatureItem(
      title: 'Chats',
      icon: Icons.chat_bubble_outline,
      subtitle: 'Family messages',
      route: '/chats',
      iconColor: Color(0xFF2C7A7B),
      iconBackground: Color(0xFFE6FFFA),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF8),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HomeHeader(
                          userName: 'Ibrahim',
                          subtitle: 'Explore your family history',
                          onNotificationTap: () {
                            Navigator.pushNamed(context, '/notifications');
                          },
                        ),
                        const SizedBox(height: 24),
                        FamilySummaryCard(
                          familyName: 'Salman Family',
                          memberDetails: '42 Members • 5 Generations',
                          onTap: () {
                            Navigator.pushNamed(context, '/tree');
                          },
                        ),
                        const SizedBox(height: 28),
                        const Text(
                          'Explore',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E2923),
                          ),
                        ),
                        const SizedBox(height: 14),
                        _buildFeaturesGrid(context),
                      ],
                    ),
                  ),
                ),
                HomeBottomNavigation(
                  selectedIndex: 0,
                  onDestinationSelected: (index) {
                    if (index == 1) {
                      Navigator.pushNamed(context, '/tree');
                    } else if (index == 2) {
                      Navigator.pushNamed(context, '/profile');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturesGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _features.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.05,
      ),
      itemBuilder: (context, index) {
        final feature = _features[index];
        return HomeFeatureCard(
          icon: feature.icon,
          title: feature.title,
          subtitle: feature.subtitle,
          iconColor: feature.iconColor,
          iconBackground: feature.iconBackground,
          onTap: () => Navigator.pushNamed(context, feature.route),
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Private data model — lives here since it's HomeScreen-specific
// ---------------------------------------------------------------------------
class _FeatureItem {
  final String title;
  final IconData icon;
  final String subtitle;
  final String route;
  final Color iconColor;
  final Color iconBackground;

  const _FeatureItem({
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.route,
    required this.iconColor,
    required this.iconBackground,
  });
}
