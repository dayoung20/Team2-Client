import 'package:get/get.dart';
import 'package:team2_client/views/chat_page.dart';
import 'package:team2_client/views/game/game_page.dart';
import 'package:team2_client/views/game/quest_page.dart';
import 'package:team2_client/views/rank_board_page.dart';

import 'package:team2_client/views/new_account/code_confirm_page.dart';
import 'package:team2_client/views/new_account/new_account_page.dart';
import 'package:team2_client/views/new_account/nickname_page.dart';
import 'package:team2_client/views/new_account/password_confirm_page.dart';

import 'package:team2_client/views/signup_page.dart';
import 'package:team2_client/views/start_page.dart';

class AppRoutes {
  static const HOME = '/';

  static final routes = [
    GetPage(
      name: HOME,
      page: () => StartPage(),
    ),
    GetPage(
      name: '/signup',
      page: () => SignupPage(),
    ),
    // 회원가입
    GetPage(
      name: '/new_account',
      page: () => NewAccountPage(),
      children: [
        GetPage(
          name: '/code',
          page: () => CodeConfirmPage(),
        ),
        GetPage(
          name: '/password',
          page: () => PasswordConfirmPage(),
        ),
        GetPage(
          name: '/nickname',
          page: () => NicknamePage(),
        ),
      ],
    ),
    // 게임(괴롭히기) 화면
    GetPage(
      name: '/game',
      page: () => GamePage(),
      children: [
        // 퀘스트
        GetPage(
          name: '/quest',
          page: () => QuestPage(),
        ),
      ],
    ),
    // 챗봇 화면
    GetPage(
      name: '/chat',
      page: () => ChatPage(),
    ),
    // 랭킹 화면
    GetPage(
      name: '/rank',
      page: () => RankBoardPage(),
    ),
  ];
}
