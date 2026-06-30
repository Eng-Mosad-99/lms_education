import 'package:lms/core/utils/app_assets.dart';

class BoardingModel {
  final String image;
  final String title;
  final String body;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

final List<BoardingModel> boardingList = [
  BoardingModel(
    image: Assets.imagesOnboarding1,
    title: 'Welcome to Cybex IT Group\nwhere learning meets innovation!',
    body: 'Empowering your journey through cutting-edge IT education and expertise',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding2,
    title: 'Begin your learning journey and unlock a world of knowledge',
    body: 'Explore our comprehensive courses designed to transform your skills and career',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding3,
    title: 'Dive into a seamless learning experience with Cybex IT Group',
    body: 'Experience interactive learning with expert-led courses and progress tracking',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding4,
    title: 'Join a community of learners and embark on a learning adventure',
    body: 'Connect with like-minded individuals Join us to learn, grow, and thrive together!',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding5,
    title: 'Join Cybex IT Group to Kick Start Your Lesson',
    body: 'Join and Learn from our Top Instructors!',
  ),
];