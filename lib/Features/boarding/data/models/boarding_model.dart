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
    title: 'Title 1',
    body: 'Body 1',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding2,
    title: 'Title 2',
    body: 'Body 2',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding3,
    title: 'Title 3',
    body: 'Body 3',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding4,
    title: 'Title 3',
    body: 'Body 3',
  ),
  BoardingModel(
    image: Assets.imagesOnboarding5,
    title: 'Title 3',
    body: 'Body 3',
  ),
];