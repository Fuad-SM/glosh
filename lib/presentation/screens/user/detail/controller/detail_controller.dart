part of '../../../screen.dart';

class DetailController extends GetxController {}

class FavoriteButtonController extends GetxController {
  final _isFavorite = false.obs;
  set isFavorite(value) => this._isFavorite.value = value;
  get isFavorite => this._isFavorite.value;
}
