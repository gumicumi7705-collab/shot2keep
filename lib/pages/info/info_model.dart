import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'info_widget.dart' show InfoWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class InfoModel extends FlutterFlowModel<InfoWidget> {
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

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController8;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController9;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    expandableExpandableController6.dispose();
    expandableExpandableController7.dispose();
    expandableExpandableController8.dispose();
    expandableExpandableController9.dispose();
  }
}
