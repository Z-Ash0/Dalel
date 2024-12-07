import 'package:go_router/go_router.dart';

void customNavigator(context, String path) {
  GoRouter.of(context).push(path);
}
