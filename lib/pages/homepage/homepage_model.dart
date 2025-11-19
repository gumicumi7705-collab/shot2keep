import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'homepage_widget.dart' show HomepageWidget;
import 'package:flutter/material.dart';

class HomepageModel extends FlutterFlowModel<HomepageWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadedPhotsLIst = [];
  void addToUploadedPhotsLIst(FFUploadedFile item) =>
      uploadedPhotsLIst.add(item);
  void removeFromUploadedPhotsLIst(FFUploadedFile item) =>
      uploadedPhotsLIst.remove(item);
  void removeAtIndexFromUploadedPhotsLIst(int index) =>
      uploadedPhotsLIst.removeAt(index);
  void insertAtIndexInUploadedPhotsLIst(int index, FFUploadedFile item) =>
      uploadedPhotsLIst.insert(index, item);
  void updateUploadedPhotsLIstAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedPhotsLIst[index] = updateFn(uploadedPhotsLIst[index]);

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataD9h = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadDataD9h = [];

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
