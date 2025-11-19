import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _isPro = prefs.getBool('ff_isPro') ?? _isPro;
    });
    _safeInit(() {
      _baseDir = prefs.getString('ff_baseDir') ?? _baseDir;
    });
    _safeInit(() {
      _personalLabel = prefs.getString('ff_personalLabel') ?? _personalLabel;
    });
    _safeInit(() {
      _homeLabel = prefs.getString('ff_homeLabel') ?? _homeLabel;
    });
    _safeInit(() {
      _workLabel = prefs.getString('ff_workLabel') ?? _workLabel;
    });
    _safeInit(() {
      _vehicleLabel = prefs.getString('ff_vehicleLabel') ?? _vehicleLabel;
    });
    _safeInit(() {
      _purchasesLabel = prefs.getString('ff_purchasesLabel') ?? _purchasesLabel;
    });
    _safeInit(() {
      _temporaryLabel = prefs.getString('ff_temporaryLabel') ?? _temporaryLabel;
    });
    _safeInit(() {
      _custom1Label = prefs.getString('ff_custom1Label') ?? _custom1Label;
    });
    _safeInit(() {
      _custom2Label = prefs.getString('ff_custom2Label') ?? _custom2Label;
    });
    _safeInit(() {
      _custom3Label = prefs.getString('ff_custom3Label') ?? _custom3Label;
    });
    _safeInit(() {
      _custom4Label = prefs.getString('ff_custom4Label') ?? _custom4Label;
    });
    _safeInit(() {
      _custom5Label = prefs.getString('ff_custom5Label') ?? _custom5Label;
    });
    _safeInit(() {
      _custom6Label = prefs.getString('ff_custom6Label') ?? _custom6Label;
    });
    _safeInit(() {
      _personalEnabled =
          prefs.getBool('ff_personalEnabled') ?? _personalEnabled;
    });
    _safeInit(() {
      _homeEnabled = prefs.getBool('ff_homeEnabled') ?? _homeEnabled;
    });
    _safeInit(() {
      _workEnabled = prefs.getBool('ff_workEnabled') ?? _workEnabled;
    });
    _safeInit(() {
      _vehicleEnabled = prefs.getBool('ff_vehicleEnabled') ?? _vehicleEnabled;
    });
    _safeInit(() {
      _purchasesEnabled =
          prefs.getBool('ff_purchasesEnabled') ?? _purchasesEnabled;
    });
    _safeInit(() {
      _temporaryEnabled =
          prefs.getBool('ff_temporaryEnabled') ?? _temporaryEnabled;
    });
    _safeInit(() {
      _custom1Enabled = prefs.getBool('ff_custom1Enabled') ?? _custom1Enabled;
    });
    _safeInit(() {
      _custom2Enabled = prefs.getBool('ff_custom2Enabled') ?? _custom2Enabled;
    });
    _safeInit(() {
      _custom3Enabled = prefs.getBool('ff_custom3Enabled') ?? _custom3Enabled;
    });
    _safeInit(() {
      _custom4Enabled = prefs.getBool('ff_custom4Enabled') ?? _custom4Enabled;
    });
    _safeInit(() {
      _custom5Enabled = prefs.getBool('ff_custom5Enabled') ?? _custom5Enabled;
    });
    _safeInit(() {
      _custom6Enabled = prefs.getBool('ff_custom6Enabled') ?? _custom6Enabled;
    });
    _safeInit(() {
      _selectedCategoryPersonal =
          prefs.getBool('ff_selectedCategoryPersonal') ??
              _selectedCategoryPersonal;
    });
    _safeInit(() {
      _selectedCategoryHome =
          prefs.getBool('ff_selectedCategoryHome') ?? _selectedCategoryHome;
    });
    _safeInit(() {
      _selectedCategoryWork =
          prefs.getBool('ff_selectedCategoryWork') ?? _selectedCategoryWork;
    });
    _safeInit(() {
      _selectedCategoryVehicle = prefs.getBool('ff_selectedCategoryVehicle') ??
          _selectedCategoryVehicle;
    });
    _safeInit(() {
      _selectedCategoryPurchases =
          prefs.getBool('ff_selectedCategoryPurchases') ??
              _selectedCategoryPurchases;
    });
    _safeInit(() {
      _selectedCategoryTemporary =
          prefs.getBool('ff_selectedCategoryTemporary') ??
              _selectedCategoryTemporary;
    });
    _safeInit(() {
      _selectedCategoryCustom1 = prefs.getBool('ff_selectedCategoryCustom1') ??
          _selectedCategoryCustom1;
    });
    _safeInit(() {
      _selectedCategoryCustom2 = prefs.getBool('ff_selectedCategoryCustom2') ??
          _selectedCategoryCustom2;
    });
    _safeInit(() {
      _selectedCategoryCustom3 = prefs.getBool('ff_selectedCategoryCustom3') ??
          _selectedCategoryCustom3;
    });
    _safeInit(() {
      _selectedCategoryCustom4 = prefs.getBool('ff_selectedCategoryCustom4') ??
          _selectedCategoryCustom4;
    });
    _safeInit(() {
      _selectedCategoryCustom5 = prefs.getBool('ff_selectedCategoryCustom5') ??
          _selectedCategoryCustom5;
    });
    _safeInit(() {
      _selectedCategoryCustom6 = prefs.getBool('ff_selectedCategoryCustom6') ??
          _selectedCategoryCustom6;
    });
    _safeInit(() {
      _homeLoads = prefs.getInt('ff_homeLoads') ?? _homeLoads;
    });
    _safeInit(() {
      _counterGallerySave100000 = prefs.getInt('ff_counterGallerySave100000') ??
          _counterGallerySave100000;
    });
    _safeInit(() {
      _constans1 = prefs.getInt('ff_constans1') ?? _constans1;
    });
    _safeInit(() {
      _newCustomCategories =
          prefs.getStringList('ff_newCustomCategories') ?? _newCustomCategories;
    });
    _safeInit(() {
      _enabledCatLIst =
          prefs.getStringList('ff_enabledCatLIst') ?? _enabledCatLIst;
    });
    _safeInit(() {
      _galleryAndroidPath =
          prefs.getString('ff_galleryAndroidPath') ?? _galleryAndroidPath;
    });
    _safeInit(() {
      _countexportpictures =
          prefs.getInt('ff_countexportpictures') ?? _countexportpictures;
    });
    _safeInit(() {
      _settings1moreopened =
          prefs.getBool('ff_settings1moreopened') ?? _settings1moreopened;
    });
    _safeInit(() {
      _firstRun = prefs.getBool('ff_firstRun') ?? _firstRun;
    });
    _safeInit(() {
      _activeCategorieToViewer = prefs.getBool('ff_activeCategorieToViewer') ??
          _activeCategorieToViewer;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isPro = false;
  bool get isPro => _isPro;
  set isPro(bool value) {
    _isPro = value;
    prefs.setBool('ff_isPro', value);
  }

  String _baseDir = 'S2K';
  String get baseDir => _baseDir;
  set baseDir(String value) {
    _baseDir = value;
    prefs.setString('ff_baseDir', value);
  }

  String _personalLabel = 'Personal';
  String get personalLabel => _personalLabel;
  set personalLabel(String value) {
    _personalLabel = value;
    prefs.setString('ff_personalLabel', value);
  }

  String _homeLabel = 'Home';
  String get homeLabel => _homeLabel;
  set homeLabel(String value) {
    _homeLabel = value;
    prefs.setString('ff_homeLabel', value);
  }

  String _workLabel = 'Work';
  String get workLabel => _workLabel;
  set workLabel(String value) {
    _workLabel = value;
    prefs.setString('ff_workLabel', value);
  }

  String _vehicleLabel = 'Vehicle';
  String get vehicleLabel => _vehicleLabel;
  set vehicleLabel(String value) {
    _vehicleLabel = value;
    prefs.setString('ff_vehicleLabel', value);
  }

  String _purchasesLabel = 'Purchases';
  String get purchasesLabel => _purchasesLabel;
  set purchasesLabel(String value) {
    _purchasesLabel = value;
    prefs.setString('ff_purchasesLabel', value);
  }

  String _temporaryLabel = 'Temporary';
  String get temporaryLabel => _temporaryLabel;
  set temporaryLabel(String value) {
    _temporaryLabel = value;
    prefs.setString('ff_temporaryLabel', value);
  }

  String _custom1Label = '';
  String get custom1Label => _custom1Label;
  set custom1Label(String value) {
    _custom1Label = value;
    prefs.setString('ff_custom1Label', value);
  }

  String _custom2Label = '';
  String get custom2Label => _custom2Label;
  set custom2Label(String value) {
    _custom2Label = value;
    prefs.setString('ff_custom2Label', value);
  }

  String _custom3Label = '';
  String get custom3Label => _custom3Label;
  set custom3Label(String value) {
    _custom3Label = value;
    prefs.setString('ff_custom3Label', value);
  }

  String _custom4Label = '';
  String get custom4Label => _custom4Label;
  set custom4Label(String value) {
    _custom4Label = value;
    prefs.setString('ff_custom4Label', value);
  }

  String _custom5Label = '';
  String get custom5Label => _custom5Label;
  set custom5Label(String value) {
    _custom5Label = value;
    prefs.setString('ff_custom5Label', value);
  }

  String _custom6Label = '';
  String get custom6Label => _custom6Label;
  set custom6Label(String value) {
    _custom6Label = value;
    prefs.setString('ff_custom6Label', value);
  }

  bool _personalEnabled = true;
  bool get personalEnabled => _personalEnabled;
  set personalEnabled(bool value) {
    _personalEnabled = value;
    prefs.setBool('ff_personalEnabled', value);
  }

  bool _homeEnabled = true;
  bool get homeEnabled => _homeEnabled;
  set homeEnabled(bool value) {
    _homeEnabled = value;
    prefs.setBool('ff_homeEnabled', value);
  }

  bool _workEnabled = true;
  bool get workEnabled => _workEnabled;
  set workEnabled(bool value) {
    _workEnabled = value;
    prefs.setBool('ff_workEnabled', value);
  }

  bool _vehicleEnabled = true;
  bool get vehicleEnabled => _vehicleEnabled;
  set vehicleEnabled(bool value) {
    _vehicleEnabled = value;
    prefs.setBool('ff_vehicleEnabled', value);
  }

  bool _purchasesEnabled = true;
  bool get purchasesEnabled => _purchasesEnabled;
  set purchasesEnabled(bool value) {
    _purchasesEnabled = value;
    prefs.setBool('ff_purchasesEnabled', value);
  }

  bool _temporaryEnabled = true;
  bool get temporaryEnabled => _temporaryEnabled;
  set temporaryEnabled(bool value) {
    _temporaryEnabled = value;
    prefs.setBool('ff_temporaryEnabled', value);
  }

  bool _custom1Enabled = false;
  bool get custom1Enabled => _custom1Enabled;
  set custom1Enabled(bool value) {
    _custom1Enabled = value;
    prefs.setBool('ff_custom1Enabled', value);
  }

  bool _custom2Enabled = false;
  bool get custom2Enabled => _custom2Enabled;
  set custom2Enabled(bool value) {
    _custom2Enabled = value;
    prefs.setBool('ff_custom2Enabled', value);
  }

  bool _custom3Enabled = false;
  bool get custom3Enabled => _custom3Enabled;
  set custom3Enabled(bool value) {
    _custom3Enabled = value;
    prefs.setBool('ff_custom3Enabled', value);
  }

  bool _custom4Enabled = false;
  bool get custom4Enabled => _custom4Enabled;
  set custom4Enabled(bool value) {
    _custom4Enabled = value;
    prefs.setBool('ff_custom4Enabled', value);
  }

  bool _custom5Enabled = false;
  bool get custom5Enabled => _custom5Enabled;
  set custom5Enabled(bool value) {
    _custom5Enabled = value;
    prefs.setBool('ff_custom5Enabled', value);
  }

  bool _custom6Enabled = false;
  bool get custom6Enabled => _custom6Enabled;
  set custom6Enabled(bool value) {
    _custom6Enabled = value;
    prefs.setBool('ff_custom6Enabled', value);
  }

  bool _selectedCategoryPersonal = false;
  bool get selectedCategoryPersonal => _selectedCategoryPersonal;
  set selectedCategoryPersonal(bool value) {
    _selectedCategoryPersonal = value;
    prefs.setBool('ff_selectedCategoryPersonal', value);
  }

  bool _selectedCategoryHome = false;
  bool get selectedCategoryHome => _selectedCategoryHome;
  set selectedCategoryHome(bool value) {
    _selectedCategoryHome = value;
    prefs.setBool('ff_selectedCategoryHome', value);
  }

  bool _selectedCategoryWork = false;
  bool get selectedCategoryWork => _selectedCategoryWork;
  set selectedCategoryWork(bool value) {
    _selectedCategoryWork = value;
    prefs.setBool('ff_selectedCategoryWork', value);
  }

  bool _selectedCategoryVehicle = false;
  bool get selectedCategoryVehicle => _selectedCategoryVehicle;
  set selectedCategoryVehicle(bool value) {
    _selectedCategoryVehicle = value;
    prefs.setBool('ff_selectedCategoryVehicle', value);
  }

  bool _selectedCategoryPurchases = false;
  bool get selectedCategoryPurchases => _selectedCategoryPurchases;
  set selectedCategoryPurchases(bool value) {
    _selectedCategoryPurchases = value;
    prefs.setBool('ff_selectedCategoryPurchases', value);
  }

  bool _selectedCategoryTemporary = false;
  bool get selectedCategoryTemporary => _selectedCategoryTemporary;
  set selectedCategoryTemporary(bool value) {
    _selectedCategoryTemporary = value;
    prefs.setBool('ff_selectedCategoryTemporary', value);
  }

  bool _selectedCategoryCustom1 = false;
  bool get selectedCategoryCustom1 => _selectedCategoryCustom1;
  set selectedCategoryCustom1(bool value) {
    _selectedCategoryCustom1 = value;
    prefs.setBool('ff_selectedCategoryCustom1', value);
  }

  bool _selectedCategoryCustom2 = false;
  bool get selectedCategoryCustom2 => _selectedCategoryCustom2;
  set selectedCategoryCustom2(bool value) {
    _selectedCategoryCustom2 = value;
    prefs.setBool('ff_selectedCategoryCustom2', value);
  }

  bool _selectedCategoryCustom3 = false;
  bool get selectedCategoryCustom3 => _selectedCategoryCustom3;
  set selectedCategoryCustom3(bool value) {
    _selectedCategoryCustom3 = value;
    prefs.setBool('ff_selectedCategoryCustom3', value);
  }

  bool _selectedCategoryCustom4 = false;
  bool get selectedCategoryCustom4 => _selectedCategoryCustom4;
  set selectedCategoryCustom4(bool value) {
    _selectedCategoryCustom4 = value;
    prefs.setBool('ff_selectedCategoryCustom4', value);
  }

  bool _selectedCategoryCustom5 = false;
  bool get selectedCategoryCustom5 => _selectedCategoryCustom5;
  set selectedCategoryCustom5(bool value) {
    _selectedCategoryCustom5 = value;
    prefs.setBool('ff_selectedCategoryCustom5', value);
  }

  bool _selectedCategoryCustom6 = false;
  bool get selectedCategoryCustom6 => _selectedCategoryCustom6;
  set selectedCategoryCustom6(bool value) {
    _selectedCategoryCustom6 = value;
    prefs.setBool('ff_selectedCategoryCustom6', value);
  }

  int _homeLoads = 0;
  int get homeLoads => _homeLoads;
  set homeLoads(int value) {
    _homeLoads = value;
    prefs.setInt('ff_homeLoads', value);
  }

  List<String> _allCustomCategories = [];
  List<String> get allCustomCategories => _allCustomCategories;
  set allCustomCategories(List<String> value) {
    _allCustomCategories = value;
  }

  void addToAllCustomCategories(String value) {
    allCustomCategories.add(value);
  }

  void removeFromAllCustomCategories(String value) {
    allCustomCategories.remove(value);
  }

  void removeAtIndexFromAllCustomCategories(int index) {
    allCustomCategories.removeAt(index);
  }

  void updateAllCustomCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allCustomCategories[index] = updateFn(_allCustomCategories[index]);
  }

  void insertAtIndexInAllCustomCategories(int index, String value) {
    allCustomCategories.insert(index, value);
  }

  int _counterGallerySave100000 = 100000;
  int get counterGallerySave100000 => _counterGallerySave100000;
  set counterGallerySave100000(int value) {
    _counterGallerySave100000 = value;
    prefs.setInt('ff_counterGallerySave100000', value);
  }

  int _constans1 = 1;
  int get constans1 => _constans1;
  set constans1(int value) {
    _constans1 = value;
    prefs.setInt('ff_constans1', value);
  }

  List<String> _allSelectedCategories = [];
  List<String> get allSelectedCategories => _allSelectedCategories;
  set allSelectedCategories(List<String> value) {
    _allSelectedCategories = value;
  }

  void addToAllSelectedCategories(String value) {
    allSelectedCategories.add(value);
  }

  void removeFromAllSelectedCategories(String value) {
    allSelectedCategories.remove(value);
  }

  void removeAtIndexFromAllSelectedCategories(int index) {
    allSelectedCategories.removeAt(index);
  }

  void updateAllSelectedCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allSelectedCategories[index] = updateFn(_allSelectedCategories[index]);
  }

  void insertAtIndexInAllSelectedCategories(int index, String value) {
    allSelectedCategories.insert(index, value);
  }

  List<String> _cleanLabelLIst = [];
  List<String> get cleanLabelLIst => _cleanLabelLIst;
  set cleanLabelLIst(List<String> value) {
    _cleanLabelLIst = value;
  }

  void addToCleanLabelLIst(String value) {
    cleanLabelLIst.add(value);
  }

  void removeFromCleanLabelLIst(String value) {
    cleanLabelLIst.remove(value);
  }

  void removeAtIndexFromCleanLabelLIst(int index) {
    cleanLabelLIst.removeAt(index);
  }

  void updateCleanLabelLIstAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    cleanLabelLIst[index] = updateFn(_cleanLabelLIst[index]);
  }

  void insertAtIndexInCleanLabelLIst(int index, String value) {
    cleanLabelLIst.insert(index, value);
  }

  /// aktuális mentési fájlnév
  String _currentFileName = '';
  String get currentFileName => _currentFileName;
  set currentFileName(String value) {
    _currentFileName = value;
  }

  int _counter100 = 100;
  int get counter100 => _counter100;
  set counter100(int value) {
    _counter100 = value;
  }

  /// az összes valaha adott custom nevek
  List<String> _newCustomCategories = [];
  List<String> get newCustomCategories => _newCustomCategories;
  set newCustomCategories(List<String> value) {
    _newCustomCategories = value;
    prefs.setStringList('ff_newCustomCategories', value);
  }

  void addToNewCustomCategories(String value) {
    newCustomCategories.add(value);
    prefs.setStringList('ff_newCustomCategories', _newCustomCategories);
  }

  void removeFromNewCustomCategories(String value) {
    newCustomCategories.remove(value);
    prefs.setStringList('ff_newCustomCategories', _newCustomCategories);
  }

  void removeAtIndexFromNewCustomCategories(int index) {
    newCustomCategories.removeAt(index);
    prefs.setStringList('ff_newCustomCategories', _newCustomCategories);
  }

  void updateNewCustomCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    newCustomCategories[index] = updateFn(_newCustomCategories[index]);
    prefs.setStringList('ff_newCustomCategories', _newCustomCategories);
  }

  void insertAtIndexInNewCustomCategories(int index, String value) {
    newCustomCategories.insert(index, value);
    prefs.setStringList('ff_newCustomCategories', _newCustomCategories);
  }

  /// a képmegjelenitőhöz az enabled lista
  List<String> _enabledCatLIst = [
    'Personal',
    'Home',
    'Work',
    'Vehicle',
    'Purchases',
    'Temporary'
  ];
  List<String> get enabledCatLIst => _enabledCatLIst;
  set enabledCatLIst(List<String> value) {
    _enabledCatLIst = value;
    prefs.setStringList('ff_enabledCatLIst', value);
  }

  void addToEnabledCatLIst(String value) {
    enabledCatLIst.add(value);
    prefs.setStringList('ff_enabledCatLIst', _enabledCatLIst);
  }

  void removeFromEnabledCatLIst(String value) {
    enabledCatLIst.remove(value);
    prefs.setStringList('ff_enabledCatLIst', _enabledCatLIst);
  }

  void removeAtIndexFromEnabledCatLIst(int index) {
    enabledCatLIst.removeAt(index);
    prefs.setStringList('ff_enabledCatLIst', _enabledCatLIst);
  }

  void updateEnabledCatLIstAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    enabledCatLIst[index] = updateFn(_enabledCatLIst[index]);
    prefs.setStringList('ff_enabledCatLIst', _enabledCatLIst);
  }

  void insertAtIndexInEnabledCatLIst(int index, String value) {
    enabledCatLIst.insert(index, value);
    prefs.setStringList('ff_enabledCatLIst', _enabledCatLIst);
  }

  String _selectedFolder = '';
  String get selectedFolder => _selectedFolder;
  set selectedFolder(String value) {
    _selectedFolder = value;
  }

  List<String> _selFolderImagePath = [];
  List<String> get selFolderImagePath => _selFolderImagePath;
  set selFolderImagePath(List<String> value) {
    _selFolderImagePath = value;
  }

  void addToSelFolderImagePath(String value) {
    selFolderImagePath.add(value);
  }

  void removeFromSelFolderImagePath(String value) {
    selFolderImagePath.remove(value);
  }

  void removeAtIndexFromSelFolderImagePath(int index) {
    selFolderImagePath.removeAt(index);
  }

  void updateSelFolderImagePathAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selFolderImagePath[index] = updateFn(_selFolderImagePath[index]);
  }

  void insertAtIndexInSelFolderImagePath(int index, String value) {
    selFolderImagePath.insert(index, value);
  }

  String _galleryAndroidPath = '';
  String get galleryAndroidPath => _galleryAndroidPath;
  set galleryAndroidPath(String value) {
    _galleryAndroidPath = value;
    prefs.setString('ff_galleryAndroidPath', value);
  }

  int _countexportpictures = 100;
  int get countexportpictures => _countexportpictures;
  set countexportpictures(int value) {
    _countexportpictures = value;
    prefs.setInt('ff_countexportpictures', value);
  }

  bool _isCamera = false;
  bool get isCamera => _isCamera;
  set isCamera(bool value) {
    _isCamera = value;
  }

  bool _settings1moreopened = false;
  bool get settings1moreopened => _settings1moreopened;
  set settings1moreopened(bool value) {
    _settings1moreopened = value;
    prefs.setBool('ff_settings1moreopened', value);
  }

  bool _firstRun = true;
  bool get firstRun => _firstRun;
  set firstRun(bool value) {
    _firstRun = value;
    prefs.setBool('ff_firstRun', value);
  }

  bool _activeCategorieToViewer = false;
  bool get activeCategorieToViewer => _activeCategorieToViewer;
  set activeCategorieToViewer(bool value) {
    _activeCategorieToViewer = value;
    prefs.setBool('ff_activeCategorieToViewer', value);
  }

  String _selectedCarouselCategory = '';
  String get selectedCarouselCategory => _selectedCarouselCategory;
  set selectedCarouselCategory(String value) {
    _selectedCarouselCategory = value;
  }

  bool _deleteConfirmDefFalse = false;
  bool get deleteConfirmDefFalse => _deleteConfirmDefFalse;
  set deleteConfirmDefFalse(bool value) {
    _deleteConfirmDefFalse = value;
  }

  List<String> _selectedCategoriesToSave = [];
  List<String> get selectedCategoriesToSave => _selectedCategoriesToSave;
  set selectedCategoriesToSave(List<String> value) {
    _selectedCategoriesToSave = value;
  }

  void addToSelectedCategoriesToSave(String value) {
    selectedCategoriesToSave.add(value);
  }

  void removeFromSelectedCategoriesToSave(String value) {
    selectedCategoriesToSave.remove(value);
  }

  void removeAtIndexFromSelectedCategoriesToSave(int index) {
    selectedCategoriesToSave.removeAt(index);
  }

  void updateSelectedCategoriesToSaveAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedCategoriesToSave[index] =
        updateFn(_selectedCategoriesToSave[index]);
  }

  void insertAtIndexInSelectedCategoriesToSave(int index, String value) {
    selectedCategoriesToSave.insert(index, value);
  }

  String _zipPublicPath = '';
  String get zipPublicPath => _zipPublicPath;
  set zipPublicPath(String value) {
    _zipPublicPath = value;
  }

  bool _Exportok = false;
  bool get Exportok => _Exportok;
  set Exportok(bool value) {
    _Exportok = value;
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
