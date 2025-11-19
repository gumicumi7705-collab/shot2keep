import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'landig_page_model.dart';
export 'landig_page_model.dart';

class LandigPageWidget extends StatefulWidget {
  const LandigPageWidget({super.key});

  static String routeName = 'LandigPage';
  static String routePath = '/landigPage';

  @override
  State<LandigPageWidget> createState() => _LandigPageWidgetState();
}

class _LandigPageWidgetState extends State<LandigPageWidget>
    with TickerProviderStateMixin {
  late LandigPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandigPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().addToAllCustomCategories(FFAppState().personalLabel);
      FFAppState().addToAllCustomCategories(FFAppState().homeLabel);
      FFAppState().addToAllCustomCategories(FFAppState().workLabel);
      FFAppState().addToAllCustomCategories(FFAppState().vehicleLabel);
      FFAppState().addToAllCustomCategories(FFAppState().purchasesLabel);
      FFAppState().addToAllCustomCategories(FFAppState().temporaryLabel);
      FFAppState().newCustomCategories =
          FFAppState().allCustomCategories.toList().cast<String>();
      await Future.delayed(
        Duration(
          milliseconds: 3000,
        ),
      );

      context.pushNamed(HomepageWidget.routeName);
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1360.ms),
          MoveEffect(
            curve: Curves.elasticOut,
            delay: 1360.0.ms,
            duration: 800.0.ms,
            begin: Offset(0.0, -100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: PopScope(
        canPop: false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/shot2keep_httr_halvnyabb.png',
                ).image,
              ),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/shot2keep_msolata__4_-removebg-preview.png',
                          width: double.infinity,
                          height: 200.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
