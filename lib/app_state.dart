import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isIntro = prefs.getBool('ff_isIntro') ?? _isIntro;
    });
    _safeInit(() {
      _isLogin = prefs.getBool('ff_isLogin') ?? _isLogin;
    });
    _safeInit(() {
      _deviceId = prefs.getString('ff_deviceId') ?? _deviceId;
    });
    _safeInit(() {
      _currencyType = prefs.getString('ff_currencyType') ?? _currencyType;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_userDetail')) {
        try {
          final serializedData = prefs.getString('ff_userDetail') ?? '{}';
          _userDetail =
              LoginModelStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _phone = prefs.getString('ff_phone') ?? _phone;
    });
    _safeInit(() {
      _countryCodeEdit =
          prefs.getString('ff_countryCodeEdit') ?? _countryCodeEdit;
    });
    _safeInit(() {
      _countryName = prefs.getString('ff_countryName') ?? _countryName;
    });
    _safeInit(() {
      _searchList = prefs.getStringList('ff_searchList') ?? _searchList;
    });
    _safeInit(() {
      _currentPassword =
          prefs.getString('ff_currentPassword') ?? _currentPassword;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isIntro = false;
  bool get isIntro => _isIntro;
  set isIntro(bool value) {
    _isIntro = value;
    prefs.setBool('ff_isIntro', value);
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool value) {
    _isLogin = value;
    prefs.setBool('ff_isLogin', value);
  }

  bool _connected = true;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  String _deviceId = '';
  String get deviceId => _deviceId;
  set deviceId(String value) {
    _deviceId = value;
    prefs.setString('ff_deviceId', value);
  }

  String _currencyType = '';
  String get currencyType => _currencyType;
  set currencyType(String value) {
    _currencyType = value;
    prefs.setString('ff_currencyType', value);
  }

  LoginModelStruct _userDetail = LoginModelStruct.fromSerializableMap(jsonDecode(
      '{\"userName\":\"Dev cooper\",\"firstName\":\"Dev\",\"lastName\":\"Cooper\",\"email\":\"devcooper@gmail.com\",\"countryCode\":\"+91\",\"phoneNumber\":\"9909999099\",\"password\":\"123456\"}'));
  LoginModelStruct get userDetail => _userDetail;
  set userDetail(LoginModelStruct value) {
    _userDetail = value;
    prefs.setString('ff_userDetail', value.serialize());
  }

  void updateUserDetailStruct(Function(LoginModelStruct) updateFn) {
    updateFn(_userDetail);
    prefs.setString('ff_userDetail', _userDetail.serialize());
  }

  List<IntroModelStruct> _introList = [
    IntroModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/c8wimmd35zvo/intro1.png\",\"title\":\"Experience the perfect blend quality and affordability\",\"subTitle\":\"One-stop destination for all your requirement products in your budget.\"}')),
    IntroModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/m08s9nzvttfz/intro2.png\",\"title\":\"Sell your old products for instant cash\",\"subTitle\":\"One-stop destination for all old products selling and buying at one place in your budget.\"}')),
    IntroModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/xrwwodrqk2r5/intro3.png\",\"title\":\"Sell your old products at any time anything anywhere \",\"subTitle\":\"One-stop destination for all products at your time place and your budget friendly.\"}'))
  ];
  List<IntroModelStruct> get introList => _introList;
  set introList(List<IntroModelStruct> value) {
    _introList = value;
  }

  void addToIntroList(IntroModelStruct value) {
    introList.add(value);
  }

  void removeFromIntroList(IntroModelStruct value) {
    introList.remove(value);
  }

  void removeAtIndexFromIntroList(int index) {
    introList.removeAt(index);
  }

  void updateIntroListAtIndex(
    int index,
    IntroModelStruct Function(IntroModelStruct) updateFn,
  ) {
    introList[index] = updateFn(_introList[index]);
  }

  void insertAtIndexInIntroList(int index, IntroModelStruct value) {
    introList.insert(index, value);
  }

  String _phone = '9909999099';
  String get phone => _phone;
  set phone(String value) {
    _phone = value;
    prefs.setString('ff_phone', value);
  }

  String _countryCodeEdit = '91';
  String get countryCodeEdit => _countryCodeEdit;
  set countryCodeEdit(String value) {
    _countryCodeEdit = value;
    prefs.setString('ff_countryCodeEdit', value);
  }

  String _countryCode = '91';
  String get countryCode => _countryCode;
  set countryCode(String value) {
    _countryCode = value;
  }

  String _countryName = 'IN';
  String get countryName => _countryName;
  set countryName(String value) {
    _countryName = value;
    prefs.setString('ff_countryName', value);
  }

  int _homePageIndex = 0;
  int get homePageIndex => _homePageIndex;
  set homePageIndex(int value) {
    _homePageIndex = value;
  }

  List<String> _searchList = [];
  List<String> get searchList => _searchList;
  set searchList(List<String> value) {
    _searchList = value;
    prefs.setStringList('ff_searchList', value);
  }

  void addToSearchList(String value) {
    searchList.add(value);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void removeFromSearchList(String value) {
    searchList.remove(value);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void removeAtIndexFromSearchList(int index) {
    searchList.removeAt(index);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void updateSearchListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    searchList[index] = updateFn(_searchList[index]);
    prefs.setStringList('ff_searchList', _searchList);
  }

  void insertAtIndexInSearchList(int index, String value) {
    searchList.insert(index, value);
    prefs.setStringList('ff_searchList', _searchList);
  }

  List<CategoryModelStruct> _categoriesList = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6efy3tjw6o9p/cat1.png\",\"name\":\"Laptop\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tevih0x2tbs2/cat2.png\",\"name\":\"Phone\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/2zxiey7jve4s/cat3.png\",\"name\":\"Clothes\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/fsovaulpyqdl/cat4.png\",\"name\":\"Shoes\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1e6p2jeoo3yu/cat5.png\",\"name\":\"Pets\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/94gmgqvq7a8z/cat6.png\",\"name\":\"Toys\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/fw3zwi8vlnfe/cat7.png\",\"name\":\"Cars\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/4t76meftluvf/cat8.png\",\"name\":\"Real estate\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tui831jgsznv/cat9.png\",\"name\":\"Bikes\"}'))
  ];
  List<CategoryModelStruct> get categoriesList => _categoriesList;
  set categoriesList(List<CategoryModelStruct> value) {
    _categoriesList = value;
  }

  void addToCategoriesList(CategoryModelStruct value) {
    categoriesList.add(value);
  }

  void removeFromCategoriesList(CategoryModelStruct value) {
    categoriesList.remove(value);
  }

  void removeAtIndexFromCategoriesList(int index) {
    categoriesList.removeAt(index);
  }

  void updateCategoriesListAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    categoriesList[index] = updateFn(_categoriesList[index]);
  }

  void insertAtIndexInCategoriesList(int index, CategoryModelStruct value) {
    categoriesList.insert(index, value);
  }

  List<NotificationsModelStruct> _notificationsList = [
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Clearance sale\",\"subTitle\":\"Get amazing deals on past-season favorites.\",\"createAt\":\"30 seconds ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Limited-time offer\",\"subTitle\":\"Own a piece of history with our vintage collection.\",\"createAt\":\"5 min ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Final days\",\"subTitle\":\"Everything must go in our massive clearance sale.\",\"createAt\":\"2 hours ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Quantities limited\",\"subTitle\":\"Shop our pre-owned items before they\'re gone!\",\"createAt\":\"15 hours ago\"}')),
    NotificationsModelStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Sustainable shopping\",\"subTitle\":\"Find high-quality pre-owned items at a fraction of the cost.\",\"createAt\":\"a few seconds ago\"}'))
  ];
  List<NotificationsModelStruct> get notificationsList => _notificationsList;
  set notificationsList(List<NotificationsModelStruct> value) {
    _notificationsList = value;
  }

  void addToNotificationsList(NotificationsModelStruct value) {
    notificationsList.add(value);
  }

  void removeFromNotificationsList(NotificationsModelStruct value) {
    notificationsList.remove(value);
  }

  void removeAtIndexFromNotificationsList(int index) {
    notificationsList.removeAt(index);
  }

  void updateNotificationsListAtIndex(
    int index,
    NotificationsModelStruct Function(NotificationsModelStruct) updateFn,
  ) {
    notificationsList[index] = updateFn(_notificationsList[index]);
  }

  void insertAtIndexInNotificationsList(
      int index, NotificationsModelStruct value) {
    notificationsList.insert(index, value);
  }

  List<ChatsModelStruct> _chatList = [
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/gbnzw5e3uwr9/chat-1.png\",\"name\":\"Esther howard\",\"chat\":\"Hello, good morning\",\"lastCreateAt\":\"08:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lyjevc6vqc2i/caht-2.png\",\"name\":\"Esther howard\",\"chat\":\"Hello, good morning\",\"lastCreateAt\":\"08:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/k9l03xikipjg/caht-3.png\",\"name\":\"Jane cooper\",\"chat\":\"How are you dude\",\"lastCreateAt\":\"09:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ymaiyqmd42wl/caht-4.png\",\"name\":\"Guy hawkins\",\"chat\":\"What about you\",\"lastCreateAt\":\"10:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/govwjhbnkcmd/caht-5.png\",\"name\":\"Leslie alexander\",\"chat\":\"I am fine\",\"lastCreateAt\":\"11:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/7nyp6h69ud0a/caht-6.png\",\"name\":\"Ralph edwards\",\"chat\":\"Awesome\",\"lastCreateAt\":\"18:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6ssehnf8v1cf/caht-7.png\",\"name\":\"Jenny wilson\",\"chat\":\"What are you doing\",\"lastCreateAt\":\"22:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/zufmww75z99s/caht-8.png\",\"name\":\"Jacob jones \",\"chat\":\"Awesome\",\"lastCreateAt\":\"22:00\"}'))
  ];
  List<ChatsModelStruct> get chatList => _chatList;
  set chatList(List<ChatsModelStruct> value) {
    _chatList = value;
  }

  void addToChatList(ChatsModelStruct value) {
    chatList.add(value);
  }

  void removeFromChatList(ChatsModelStruct value) {
    chatList.remove(value);
  }

  void removeAtIndexFromChatList(int index) {
    chatList.removeAt(index);
  }

  void updateChatListAtIndex(
    int index,
    ChatsModelStruct Function(ChatsModelStruct) updateFn,
  ) {
    chatList[index] = updateFn(_chatList[index]);
  }

  void insertAtIndexInChatList(int index, ChatsModelStruct value) {
    chatList.insert(index, value);
  }

  List<ReviewModelStruct> _reviewList = [
    ReviewModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/skill-sprout-go7q3c/assets/yichry95lazm/Mentors3.png\",\"name\":\"Ralph edwards\",\"title\":\"greens inside plate on desk.\",\"subTitle\":\"It is a long established fact that a reader will be distracted by the readable content of a page when the point of using\",\"review\":\"4.0\"}')),
    ReviewModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/skill-sprout-go7q3c/assets/blpo2cptrshd/Mentors2.png\",\"name\":\"Jane cooper\",\"title\":\"greens inside plate on desk.\",\"subTitle\":\"It is a long established fact that a reader will be distracted by the readable content of a page when the point of using\",\"review\":\"4.0\"}'))
  ];
  List<ReviewModelStruct> get reviewList => _reviewList;
  set reviewList(List<ReviewModelStruct> value) {
    _reviewList = value;
  }

  void addToReviewList(ReviewModelStruct value) {
    reviewList.add(value);
  }

  void removeFromReviewList(ReviewModelStruct value) {
    reviewList.remove(value);
  }

  void removeAtIndexFromReviewList(int index) {
    reviewList.removeAt(index);
  }

  void updateReviewListAtIndex(
    int index,
    ReviewModelStruct Function(ReviewModelStruct) updateFn,
  ) {
    reviewList[index] = updateFn(_reviewList[index]);
  }

  void insertAtIndexInReviewList(int index, ReviewModelStruct value) {
    reviewList.insert(index, value);
  }

  String _currentPassword = '';
  String get currentPassword => _currentPassword;
  set currentPassword(String value) {
    _currentPassword = value;
    prefs.setString('ff_currentPassword', value);
  }

  List<CategoryModelStruct> _leptop = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/x7lm60b48jdi/leptop-1.png\",\"name\":\"Asus\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/mz7zu5s9y2ne/leptop-2.png\",\"name\":\"HP\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/344a8zj9io4r/leptop-3.png\",\"name\":\"Acer\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6kpygylg5tcf/leptop-4.png\",\"name\":\"Apple\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/3rwu0vh3avgv/leptop-5.png\",\"name\":\"Dell\"}'))
  ];
  List<CategoryModelStruct> get leptop => _leptop;
  set leptop(List<CategoryModelStruct> value) {
    _leptop = value;
  }

  void addToLeptop(CategoryModelStruct value) {
    leptop.add(value);
  }

  void removeFromLeptop(CategoryModelStruct value) {
    leptop.remove(value);
  }

  void removeAtIndexFromLeptop(int index) {
    leptop.removeAt(index);
  }

  void updateLeptopAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    leptop[index] = updateFn(_leptop[index]);
  }

  void insertAtIndexInLeptop(int index, CategoryModelStruct value) {
    leptop.insert(index, value);
  }

  List<CategoryModelStruct> _phonelist = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1vw7zte7o0hc/phone-1.png\",\"name\":\"Xiaomi\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tpulhsg5hrvl/phone-2.png\",\"name\":\"Oppo\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/w6cp274919ov/phone-3.png\",\"name\":\"Vivo\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/pxicboqi3quc/phone-4.png\",\"name\":\"Apple\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6ehed7fxjiga/phone-5.png\",\"name\":\"Samsung\"}'))
  ];
  List<CategoryModelStruct> get phonelist => _phonelist;
  set phonelist(List<CategoryModelStruct> value) {
    _phonelist = value;
  }

  void addToPhonelist(CategoryModelStruct value) {
    phonelist.add(value);
  }

  void removeFromPhonelist(CategoryModelStruct value) {
    phonelist.remove(value);
  }

  void removeAtIndexFromPhonelist(int index) {
    phonelist.removeAt(index);
  }

  void updatePhonelistAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    phonelist[index] = updateFn(_phonelist[index]);
  }

  void insertAtIndexInPhonelist(int index, CategoryModelStruct value) {
    phonelist.insert(index, value);
  }

  List<CategoryModelStruct> _clothes = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ldybwbyapf3c/c-1.png\",\"name\":\"Adidas\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ef4m85jacx4f/c-2.png\",\"name\":\"Nike\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tolppyc8yg5s/c-3.png\",\"name\":\"Gucci\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/0hjtydbjt0th/c-4.png\",\"name\":\"Raymond\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/eu07tnbdm1h3/c-5.png\",\"name\":\"Chanel\"}'))
  ];
  List<CategoryModelStruct> get clothes => _clothes;
  set clothes(List<CategoryModelStruct> value) {
    _clothes = value;
  }

  void addToClothes(CategoryModelStruct value) {
    clothes.add(value);
  }

  void removeFromClothes(CategoryModelStruct value) {
    clothes.remove(value);
  }

  void removeAtIndexFromClothes(int index) {
    clothes.removeAt(index);
  }

  void updateClothesAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    clothes[index] = updateFn(_clothes[index]);
  }

  void insertAtIndexInClothes(int index, CategoryModelStruct value) {
    clothes.insert(index, value);
  }

  List<CategoryModelStruct> _shoes = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/5zupw4shmzea/shoes-1.png\",\"name\":\"Adidas\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/on8sqosro2il/shoes-2.png\",\"name\":\"Nike\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/w3yh9x79xmn1/shoes-3.png\",\"name\":\"Bata\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/76y5ho7a02rp/shoes-4.png\",\"name\":\"Puma\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/xf0fs1acsb45/shoes-5.png\",\"name\":\"Woodland\"}'))
  ];
  List<CategoryModelStruct> get shoes => _shoes;
  set shoes(List<CategoryModelStruct> value) {
    _shoes = value;
  }

  void addToShoes(CategoryModelStruct value) {
    shoes.add(value);
  }

  void removeFromShoes(CategoryModelStruct value) {
    shoes.remove(value);
  }

  void removeAtIndexFromShoes(int index) {
    shoes.removeAt(index);
  }

  void updateShoesAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    shoes[index] = updateFn(_shoes[index]);
  }

  void insertAtIndexInShoes(int index, CategoryModelStruct value) {
    shoes.insert(index, value);
  }

  List<CategoryModelStruct> _pets = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://picsum.photos/seed/302/600\",\"name\":\"Dog\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://picsum.photos/seed/540/600\",\"name\":\"Cat\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://picsum.photos/seed/360/600\",\"name\":\"Birds\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://picsum.photos/seed/263/600\",\"name\":\"Hamster\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://picsum.photos/seed/592/600\",\"name\":\"Turtel\"}'))
  ];
  List<CategoryModelStruct> get pets => _pets;
  set pets(List<CategoryModelStruct> value) {
    _pets = value;
  }

  void addToPets(CategoryModelStruct value) {
    pets.add(value);
  }

  void removeFromPets(CategoryModelStruct value) {
    pets.remove(value);
  }

  void removeAtIndexFromPets(int index) {
    pets.removeAt(index);
  }

  void updatePetsAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    pets[index] = updateFn(_pets[index]);
  }

  void insertAtIndexInPets(int index, CategoryModelStruct value) {
    pets.insert(index, value);
  }

  List<CategoryModelStruct> _toys = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/5xf06abpdkgf/toys-1.png\",\"name\":\"Teddy \"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/sq5e5plyp6cl/toys-2.png\",\"name\":\"Doll house\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/0i2j5g6k35ya/toys3.png\",\"name\":\"Magic car\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/wy6zpd014jol/toys-4.png\",\"name\":\"Tricycle\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/2sncxlw0nsqd/toys-5.png\",\"name\":\"Drum\"}'))
  ];
  List<CategoryModelStruct> get toys => _toys;
  set toys(List<CategoryModelStruct> value) {
    _toys = value;
  }

  void addToToys(CategoryModelStruct value) {
    toys.add(value);
  }

  void removeFromToys(CategoryModelStruct value) {
    toys.remove(value);
  }

  void removeAtIndexFromToys(int index) {
    toys.removeAt(index);
  }

  void updateToysAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    toys[index] = updateFn(_toys[index]);
  }

  void insertAtIndexInToys(int index, CategoryModelStruct value) {
    toys.insert(index, value);
  }

  List<CategoryModelStruct> _cars = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/eat25twe6mzr/car-1.png\",\"name\":\"Tata\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/82kgcxw27bh6/car-2.png\",\"name\":\"Hyundai\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lm963eu2c6lg/car-3.png\",\"name\":\"Toyota\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/k4n9hvrl746k/car-4.png\",\"name\":\"Mahindra\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/kzaifg4bk039/car-5.png\",\"name\":\"Renault\"}'))
  ];
  List<CategoryModelStruct> get cars => _cars;
  set cars(List<CategoryModelStruct> value) {
    _cars = value;
  }

  void addToCars(CategoryModelStruct value) {
    cars.add(value);
  }

  void removeFromCars(CategoryModelStruct value) {
    cars.remove(value);
  }

  void removeAtIndexFromCars(int index) {
    cars.removeAt(index);
  }

  void updateCarsAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    cars[index] = updateFn(_cars[index]);
  }

  void insertAtIndexInCars(int index, CategoryModelStruct value) {
    cars.insert(index, value);
  }

  List<CategoryModelStruct> _realEstate = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/weab33a2haff/r-1.png\",\"name\":\"Villa\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/iguymzaz9igs/r-2.png\",\"name\":\"Town house\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/2ciex3tcrbus/r-3.png\",\"name\":\"Condos\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/dvog8oy7n7t3/r-5.png\",\"name\":\"Apartment\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/58zumcakuy7k/r-6.png\",\"name\":\"Row house\"}'))
  ];
  List<CategoryModelStruct> get realEstate => _realEstate;
  set realEstate(List<CategoryModelStruct> value) {
    _realEstate = value;
  }

  void addToRealEstate(CategoryModelStruct value) {
    realEstate.add(value);
  }

  void removeFromRealEstate(CategoryModelStruct value) {
    realEstate.remove(value);
  }

  void removeAtIndexFromRealEstate(int index) {
    realEstate.removeAt(index);
  }

  void updateRealEstateAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    realEstate[index] = updateFn(_realEstate[index]);
  }

  void insertAtIndexInRealEstate(int index, CategoryModelStruct value) {
    realEstate.insert(index, value);
  }

  List<CategoryModelStruct> _bikes = [
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/s6iauuuwvh7h/b-1.png\",\"name\":\"Honda\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/uo6hnc92rzt3/b-2.png\",\"name\":\"Ola\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/rk9fxgl702cz/b-3.png\",\"name\":\"Ather\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/uh8qv9vuc9ok/b-4.png\",\"name\":\"Bajaj\"}')),
    CategoryModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/pan1u1jorzze/b-5.png\",\"name\":\"Suzuki\"}'))
  ];
  List<CategoryModelStruct> get bikes => _bikes;
  set bikes(List<CategoryModelStruct> value) {
    _bikes = value;
  }

  void addToBikes(CategoryModelStruct value) {
    bikes.add(value);
  }

  void removeFromBikes(CategoryModelStruct value) {
    bikes.remove(value);
  }

  void removeAtIndexFromBikes(int index) {
    bikes.removeAt(index);
  }

  void updateBikesAtIndex(
    int index,
    CategoryModelStruct Function(CategoryModelStruct) updateFn,
  ) {
    bikes[index] = updateFn(_bikes[index]);
  }

  void insertAtIndexInBikes(int index, CategoryModelStruct value) {
    bikes.insert(index, value);
  }

  List<ItemsModelStruct> _itemsLIst = [
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vtbur4fdpegf/p-1.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$1500.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/w4i4u77hpbt5/pp-11.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Popular items\",\"discount\":\"false\",\"price2\":\"\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v660ykggohwh/p--2.png\",\"name\":\"Ather 450x 2023 model\",\"price\":\"\$1200.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/00pvo9qtndqa/pp-22.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Popular items\",\"discount\":\"false\",\"price2\":\"\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/4ib15fh9vidc/p-3.png\",\"name\":\"Ola s1 pro 2023 model\",\"price\":\"\$1900.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/jr74m8u6l3qv/pp--33.png\",\"firstname\":\"Robert fox\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Popular items\",\"discount\":\"false\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ocy0wfdly3s3/p-4.png\",\"name\":\"Macbook 2010 intel i5\",\"price\":\"\$500.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/be6xe7t6m2e2/pp--44.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Popular items\",\"discount\":\"false\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/8u7wlz53kayk/p-5.png\",\"name\":\"7 BHK villa\",\"price\":\"\$ 1,90,800.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1bdxv3zs21i7/pp--55.png\",\"firstname\":\"John howards\",\"country\":\"New jersey\",\"isfav\":\"false\",\"types\":\"Popular items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/zcmeb1sz8mpm/p-6.png\",\"name\":\"iPhone xs 2020 model\",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/r22dlzzysfye/pp--66.png\",\"firstname\":\"Ronald richards\",\"country\":\"Los vegas\",\"isfav\":\"false\",\"types\":\"Popular items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6tcbzyb4p729/p-7.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$65.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/x2jygvsst3od/pp--77.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Popular items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/s0mvvol8e6sa/p-8.png\",\"name\":\"Macbook 2015 intel i7 \",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1gn6jog7vjgz/pp-88.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Popular items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vtbur4fdpegf/p-1.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$1500.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/w4i4u77hpbt5/pp-11.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"9\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/aiq0efbfrp4j/recomanded-2.png\",\"name\":\"The pug \",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/00pvo9qtndqa/pp-22.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"10\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v660ykggohwh/p--2.png\",\"name\":\"Ather 450x 2023 model\",\"price\":\"\$1200.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/00pvo9qtndqa/pp-22.png\",\"firstname\":\"Robert fox\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"11\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ocy0wfdly3s3/p-4.png\",\"name\":\"Macbook 2010 intel i5\",\"price\":\"\$500.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/be6xe7t6m2e2/pp--44.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"12\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/8u7wlz53kayk/p-5.png\",\"name\":\"7 BHK villa\",\"price\":\"\$ 1,90,800.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1bdxv3zs21i7/pp--55.png\",\"firstname\":\"John howards\",\"country\":\"New jersey\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"13\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/zcmeb1sz8mpm/p-6.png\",\"name\":\"iPhone xs 2020 model\",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/r22dlzzysfye/pp--66.png\",\"firstname\":\"Ronald richards\",\"country\":\"Los vegas\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"14\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6tcbzyb4p729/p-7.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$65.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/x2jygvsst3od/pp--77.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"15\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/s0mvvol8e6sa/p-8.png\",\"name\":\"Macbook 2015 intel i7 \",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/1gn6jog7vjgz/pp-88.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Recommended for you\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"16\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6nqpramvvag7/fp-1.png\",\"name\":\"Mercedes-benz-S-class\",\"price\":\"\$102.000,00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v5smfnk9w0j6/lv-8.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"17\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6a3b38h0lilh/fp-2.png\",\"name\":\"Automatic gents watch\",\"price\":\"\$80.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/7edv9ckggcd1/lv-7.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Featured products\",\"discount\":\"false\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"18\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ezxu7tsxgfxu/fp-3.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$1500.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lu0lv2pv08ih/lv-6.png\",\"firstname\":\"Robert fox\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"19\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/kec5lhkxd62n/fp-4.png\",\"name\":\"Macbook 2010 intel i5\",\"price\":\"\$ 500.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/e52haflab9mc/lv-5.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"20\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/asc1yes3xv8f/fp-5.png\",\"name\":\"Ather 450x 2023 model\",\"price\":\"\$ 1200.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/pbgtb7icldr3/lv-4.png\",\"firstname\":\"John howards\",\"country\":\"New jersey\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"21\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/qs5r8yuja5h8/fp-6.png\",\"name\":\"White cat\",\"price\":\"\$80.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vzlow4hme7kw/lv-3.png\",\"firstname\":\"Ronald richards\",\"country\":\"Los vegas\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"22\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/y4nqlkmvit3h/fp-7.png\",\"name\":\"iPhone 15 pro max\",\"price\":\"\$65.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/wjyoywasvg2o/lv-2.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"23\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/zebxb9xplcdd/fp-8.png\",\"name\":\"Macbook 2015 intel i7\",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q6et2abso2tl/lv-1.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Featured products\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"24\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/zs3hug5bctgp/di-1.png\",\"name\":\"Ivary bridal sandals\",\"price\":\"\$65.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q6et2abso2tl/lv-1.png\",\"firstname\":\"Esther howards\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"25\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/3uxaf5lkxqqv/di-2.png\",\"name\":\"White cat\",\"price\":\"\$300.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/wjyoywasvg2o/lv-2.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"26\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q4v6agjwg776/di-3.png\",\"name\":\"Automatic gents watch\",\"price\":\"\$100.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vzlow4hme7kw/lv-3.png\",\"firstname\":\"Robert fox\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"27\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/oofyguc2kwn9/di-4.png\",\"name\":\"12BHK villa\",\"price\":\"\\n\$ 1,90,800.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/e52haflab9mc/lv-5.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"28\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ceva0lmipbrj/di-5.png\",\"name\":\"Mercedes amg G 63\",\"price\":\"\$ 1,90,800.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lu0lv2pv08ih/lv-6.png\",\"firstname\":\"John howards\\r\",\"country\":\"New jersey\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"29\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/brp697t9enzs/di-6.png\",\"name\":\"Classic gents watch\",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lu0lv2pv08ih/lv-6.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Los vegas\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"30\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/a0v1wmw38lvp/di-7.png\",\"name\":\"iPhone 15 pro max\",\"price\":\"\$65.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/7edv9ckggcd1/lv-7.png\",\"firstname\":\"Esther howards\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"31\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/4w7j0ko6dxle/di-8.png\",\"name\":\"Macbook 2015 intel i7\",\"price\":\"\$300.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v5smfnk9w0j6/lv-8.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Discount items\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"32\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/fmk2lpfsbt7n/aa-1.png\",\"name\":\"ASUS ROG strix G15\",\"price\":\"\$300,00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q6et2abso2tl/lv-1.png\",\"firstname\":\"Esther howards\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"33\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/xplp61qgo6cu/aa-2.png\",\"name\":\"Asus vivobook 3\",\"price\":\"\$180.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/wjyoywasvg2o/lv-2.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"34\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/o0x7tfq8bnc1/aa-3.png\",\"name\":\"Asus vivobook 16X\",\"price\":\"\$200.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vzlow4hme7kw/lv-3.png\",\"firstname\":\"Robert fox\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"35\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/obpjy6ie8yq9/aa-4.png\",\"name\":\"Asus vivobook 15\",\"price\":\"\$ 500.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/pbgtb7icldr3/lv-4.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"36\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/tk1r8pmvorhe/aa-5.png\",\"name\":\"Asus ROG G15\",\"price\":\"\$ 150.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/e52haflab9mc/lv-5.png\",\"firstname\":\"John howards\\r\",\"country\":\"New jersey\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"37\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/rc2mfufkroxt/aa-6.png\",\"name\":\"Asus zenbook 2\",\"price\":\"\$280.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lu0lv2pv08ih/lv-6.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Los vegas\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"38\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ya4rwp0xc1ob/aa-7.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$65.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/7edv9ckggcd1/lv-7.png\",\"firstname\":\"Esther howards\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"39\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/525vlq6t9065/aa-8.png\",\"name\":\"Macbook 2015 intel i7 \",\"price\":\"\$300.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v5smfnk9w0j6/lv-8.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Asus\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"40\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/6nqpramvvag7/fp-1.png\",\"name\":\"Mercedes-benz-S-class\",\"price\":\"\$100.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q6et2abso2tl/lv-1.png\",\"firstname\":\"Esther howards\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$120.00\\r\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"41\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q4v6agjwg776/di-3.png\",\"name\":\"iPhone 15 pro max\",\"price\":\"\$1500.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lu0lv2pv08ih/lv-6.png\",\"firstname\":\"Robert fox\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$1400.00\\r\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"42\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ezxu7tsxgfxu/fp-3.png\",\"name\":\"iPhone 15 pro max\",\"price\":\"\$1500.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/pbgtb7icldr3/lv-4.png\",\"firstname\":\"Robert fox\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$1400.00\\r\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"43\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/kec5lhkxd62n/fp-4.png\",\"name\":\"Macbook 2010 intel i5\",\"price\":\"\$ 500.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/wjyoywasvg2o/lv-2.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Hello World\",\"discount\":\"true\",\"price2\":\"\$450.00\\r\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"44\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/asc1yes3xv8f/fp-5.png\",\"name\":\"Ather 450x 2023 model\",\"price\":\"\$ 1200.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/e52haflab9mc/lv-5.png\",\"firstname\":\"John howards\\r\",\"country\":\"New jersey\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$1100.00\\r\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"45\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/qs5r8yuja5h8/fp-6.png\",\"name\":\"White cat\",\"price\":\"\$80.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vzlow4hme7kw/lv-3.png\",\"firstname\":\"Ronald richards\\r\",\"country\":\"Los vegas\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$70.00\\r\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"46\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/y4nqlkmvit3h/fp-7.png\",\"name\":\"iPhone 15 pro max \",\"price\":\"\$65.00\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/7edv9ckggcd1/lv-7.png\",\"firstname\":\"Esther howards\\r\",\"country\":\"New york\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$50.00\"}')),
    ItemsModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"47\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/zebxb9xplcdd/fp-8.png\",\"name\":\"Macbook 2015 intel i7\",\"price\":\"\$300.00\\r\",\"smallimg\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v5smfnk9w0j6/lv-8.png\",\"firstname\":\"Ronald richards\",\"country\":\"Broome\",\"isfav\":\"false\",\"types\":\"Discount product\",\"discount\":\"true\",\"price2\":\"\$50.00\"}'))
  ];
  List<ItemsModelStruct> get itemsLIst => _itemsLIst;
  set itemsLIst(List<ItemsModelStruct> value) {
    _itemsLIst = value;
  }

  void addToItemsLIst(ItemsModelStruct value) {
    itemsLIst.add(value);
  }

  void removeFromItemsLIst(ItemsModelStruct value) {
    itemsLIst.remove(value);
  }

  void removeAtIndexFromItemsLIst(int index) {
    itemsLIst.removeAt(index);
  }

  void updateItemsLIstAtIndex(
    int index,
    ItemsModelStruct Function(ItemsModelStruct) updateFn,
  ) {
    itemsLIst[index] = updateFn(_itemsLIst[index]);
  }

  void insertAtIndexInItemsLIst(int index, ItemsModelStruct value) {
    itemsLIst.insert(index, value);
  }

  List<VenderModelStruct> _vandorList = [
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/hj3aczeekt8z/v-1.png\",\"name\":\"Shop point\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/4ua9eom2vipp/v-2.png\",\"name\":\"Shopping\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/e935k2d51mqy/v-3.png\",\"name\":\"Beshop\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/efqafdv3zb4b/v-4.png\",\"name\":\"Bangla mart\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/th32aspjk5wy/v-5.png\",\"name\":\"Afsara mart\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ar0k818h27yj/v-6.png\",\"name\":\"Shop point\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/so6jjv8vu6h9/v-7.png\",\"name\":\"Deal shop\"}')),
    VenderModelStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ncsgi3oj8biy/v-8.png\",\"name\":\"Shopping\"}'))
  ];
  List<VenderModelStruct> get vandorList => _vandorList;
  set vandorList(List<VenderModelStruct> value) {
    _vandorList = value;
  }

  void addToVandorList(VenderModelStruct value) {
    vandorList.add(value);
  }

  void removeFromVandorList(VenderModelStruct value) {
    vandorList.remove(value);
  }

  void removeAtIndexFromVandorList(int index) {
    vandorList.removeAt(index);
  }

  void updateVandorListAtIndex(
    int index,
    VenderModelStruct Function(VenderModelStruct) updateFn,
  ) {
    vandorList[index] = updateFn(_vandorList[index]);
  }

  void insertAtIndexInVandorList(int index, VenderModelStruct value) {
    vandorList.insert(index, value);
  }

  List<TopratedsellerStruct> _Topratedseller = [
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/q6et2abso2tl/lv-1.png\",\"name\":\"Ronald richards\",\"items\":\"11 items\",\"followers\":\"10 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/wjyoywasvg2o/lv-2.png\",\"name\":\"Wade warren\",\"items\":\"10 items\",\"followers\":\"20 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/vzlow4hme7kw/lv-3.png\",\"name\":\"Jane cooper\",\"items\":\"15 items\",\"followers\":\"26 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/pbgtb7icldr3/lv-4.png\",\"name\":\"Cameron williamson\",\"items\":\"18 items\",\"followers\":\"80 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/e52haflab9mc/lv-5.png\",\"name\":\"Guy hawkins\",\"items\":\"41 items\",\"followers\":\"35 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/lu0lv2pv08ih/lv-6.png\",\"name\":\"Ralph edwards\",\"items\":\"21 items\",\"followers\":\"54 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/7edv9ckggcd1/lv-7.png\",\"name\":\"Kristin watson\",\"items\":\"11 items\",\"followers\":\"25 followers\"}')),
    TopratedsellerStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"img\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/v5smfnk9w0j6/lv-8.png\",\"name\":\"Cody fisher\",\"items\":\"05 items\",\"followers\":\"84 followers\"}'))
  ];
  List<TopratedsellerStruct> get Topratedseller => _Topratedseller;
  set Topratedseller(List<TopratedsellerStruct> value) {
    _Topratedseller = value;
  }

  void addToTopratedseller(TopratedsellerStruct value) {
    Topratedseller.add(value);
  }

  void removeFromTopratedseller(TopratedsellerStruct value) {
    Topratedseller.remove(value);
  }

  void removeAtIndexFromTopratedseller(int index) {
    Topratedseller.removeAt(index);
  }

  void updateTopratedsellerAtIndex(
    int index,
    TopratedsellerStruct Function(TopratedsellerStruct) updateFn,
  ) {
    Topratedseller[index] = updateFn(_Topratedseller[index]);
  }

  void insertAtIndexInTopratedseller(int index, TopratedsellerStruct value) {
    Topratedseller.insert(index, value);
  }

  List<ChatsModelStruct> _chatSellingList = [
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/b32q44a40pku/s-1.png\",\"name\":\"Esther howard\",\"chat\":\"Hello, good morning\",\"lastCreateAt\":\"08:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/jxh9ams48ro6/s-2.png\",\"name\":\"Jane cooper\",\"chat\":\"How are you dude\",\"lastCreateAt\":\"09:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ngaphnw5yhgr/s-3.png\",\"name\":\"Guy hawkins\",\"chat\":\"What about you\",\"lastCreateAt\":\"10:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/ronnlwg7mv3d/s-4.png\",\"name\":\"Leslie alexander\",\"chat\":\"I am fine\",\"lastCreateAt\":\"11:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/qy7d0xd17rb5/s-5.png\",\"name\":\"Ralph edwards\",\"chat\":\"Awesome\",\"lastCreateAt\":\"18:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/iajyx1hh89z3/s-6.png\",\"name\":\"Jenny wilson\",\"chat\":\"What are you doing\\r\",\"lastCreateAt\":\"22:00\"}')),
    ChatsModelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/classified-app-pdz708/assets/oq4u50b1quvw/s-7.png\",\"name\":\"Jacob jones\",\"chat\":\"Awesome\\r\",\"lastCreateAt\":\"22:00\"}'))
  ];
  List<ChatsModelStruct> get chatSellingList => _chatSellingList;
  set chatSellingList(List<ChatsModelStruct> value) {
    _chatSellingList = value;
  }

  void addToChatSellingList(ChatsModelStruct value) {
    chatSellingList.add(value);
  }

  void removeFromChatSellingList(ChatsModelStruct value) {
    chatSellingList.remove(value);
  }

  void removeAtIndexFromChatSellingList(int index) {
    chatSellingList.removeAt(index);
  }

  void updateChatSellingListAtIndex(
    int index,
    ChatsModelStruct Function(ChatsModelStruct) updateFn,
  ) {
    chatSellingList[index] = updateFn(_chatSellingList[index]);
  }

  void insertAtIndexInChatSellingList(int index, ChatsModelStruct value) {
    chatSellingList.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
