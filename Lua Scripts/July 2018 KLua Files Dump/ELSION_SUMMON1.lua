KL��   ? ,	  T� ?,	 T� ?  ,T
� ?,	  T� ?  ,G   ELSION_SUMMON1_SUMMON_TYPE2 ELSION_SUMMON1_SUMMON_TYPE1StateChange_LUAGetNowSubStageIndexGetNowStageIndex    ? , T�<  < ?< ? ,G  NUI_ELSION_SUMMUN_PROTONPC_UNIT_IDSetSummonMonsterInfoIsHost�    ? , T�; ; ; <   	 
   ,G  ELSION_SUMMON1_DYINGSummonMonsterFrameMove      IsHost    ? , T�<  < ?< ? ,G  NUI_ELSION_SUMMUN_PROTONPC_UNIT_IDSetSummonMonsterInfoIsHost�    ? , T�; ; ; <   	 
   ,G  ELSION_SUMMON1_DYINGSummonMonsterFrameMove  	
    IsHost�     ?     ,  ?   ,  ?  ,  ?     ,  ?    ,  ?    ,G  SetTimerRestartSetInt_LUA�  � ?  , ? 	  ,: 
 ?	  ,	C	
 ?	  ,	 D	   T	5�
 ?	 ,	
 
	 T	��
  ?	 ,	
   	 I�  ?  ,
  T� ?@,
 T� ?@, T� ?, T�
 T�K�
 T� ?  , ? ,T	V�	>		
>


	  T�
  T	�< 	 , ?
  ,G   ?  ,	 T?� T=�  
 I+� ? , ? , (>  ? , ? ,   T�< ?  , ?> ?,      ,	K� ?
  , ?  , ? ,G  GetHardLevelCreateNPCReq_LUAremove
tableGetStartPositionGetLineMapGetRandValSetInt_LUARERROR! Check arrSummonTime and arrSummonMonsterNum size equal iMaxSummonCount
printSetTimerRestartStateChange_LUAGetDyingStartIsUnitIDGetNPCUnitGetNPCUnitListSizeGetTimerElapsedTimeGetInt_LUA�����  U �;   =  ;  ; B ; B =  ;  = 	 ; 
 =  ;  < B < B < B =  ;  ; C ; C ; C ; C =  ;  ; < ?BB =  ;  < B  <! ?"B# < B$ < B% < B& < B' < B( ;) B* :  B+ = , 9 - = . ; / < B  <! ?"B# < B$ < B% < B& < B' < B( ;0 B* ;1 B2 ;3 < B4<5 B6< B7<8 ?9B8B: :  B+ ;; B< = = 9 > = ? 9 @ = A ; B < B  <! ?"B# < B$ < B% < B& < B' < B( ;C B* ;D B2 ;E < B4<5 B6< B7<8 ?9B8B: :  B+ ;F B< = G 9 H = I 9 J = K ; L < B  <! ?"B# < B$ < B% < B& < B' ;M B* < BN < BO = P 9 Q = R 9 S = T G  SummonMonsterFrameMove SetSummonMonsterInfo ELSION_SUMMON1_DYINGIMMADIATE_PACKET_SENDDYING_END   d ANIM_NAME	Wait+ELSION_SUMMON1_SUMMON_TYPE2_FRAME_MOVE ,ELSION_SUMMON1_SUMMON_TYPE2_STATE_START  ELSION_SUMMON1_SUMMON_TYPE2  $EffectSet_ELSION_Proto_RedArarm  
DELAYDISAPPEAR_TIME  ��Ɨ����Caution.ogg   d ANIM_NAME	Wait+ELSION_SUMMON1_SUMMON_TYPE1_FRAME_MOVE ,ELSION_SUMMON1_SUMMON_TYPE1_STATE_START  ELSION_SUMMON1_SUMMON_TYPE1EFFECT_SET_LIST  $EffectSet_ELSION_Proto_RedArarm 
ALARMACT_REDALARM_COLOR_TYPEREPEATALARM_MESSAGESTR_ID_36816DANGER 
DELAYDISAPPEAR_TIMESOUND_PLAY0  ��Ɨ����Caution.ogg   d ANIM_NAME	Wait%ELSION_SUMMON1_START_STATE_START ELSION_SUMMON1_STARTEVENT_PROCESSINVINCIBLE   dNEVER_MOVECAN_PASS_UNITCAN_PUSH_UNITLAND_CONNECTTRANSITIONPLAY_TYPEXAP_ONE_WAITXSKIN_ANIM_PLAYTYPE	SHOW ANIM_NAME	WaitINIT_AITARGET   TARGET_NEAR_RANGE TARGET_LOST_RANGE TARGET_SUCCESS_RATE PRESERVE_LAST_TARGET_RATE TARGET_INTERVAL��TARGET_RANGE ATTACK_TARGET_RATE TP_LOW_HP_FIRSTTARGET_PRIORITYINIT_STATE DYING_LAND_BACKELSION_SUMMON1_DYINGDYING_SKYELSION_SUMMON1_DYINGDYING_LAND_FRONTELSION_SUMMON1_DYINGREVENGE_ATTACKSTART_STATEELSION_SUMMON1_START STATE_NAMEELSION_SUMMON1_DYING STATE_NAME ELSION_SUMMON1_SUMMON_TYPE2LUA_FRAME_MOVE_FUNC+ELSION_SUMMON1_SUMMON_TYPE2_FRAME_MOVELUA_STATE_START_FUNC,ELSION_SUMMON1_SUMMON_TYPE2_STATE_START STATE_NAME ELSION_SUMMON1_SUMMON_TYPE1LUA_FRAME_MOVE_FUNC+ELSION_SUMMON1_SUMMON_TYPE1_FRAME_MOVELUA_STATE_START_FUNC,ELSION_SUMMON1_SUMMON_TYPE1_STATE_START STATE_NAMEELSION_SUMMON1_STARTLUA_STATE_START_FUNC%ELSION_SUMMON1_START_STATE_STARTINIT_COMPONENTNOT_CHECK_INDICATOR	TRUESHOW_ON_MINIMAPUSE_SLASH_TRACE
FALSE HYPER_MODE_COUNT MAX_HYPER_MODE_TIMEHEAD_BONE_NAME
Bip01INIT_PHYSIC RUN_SPEED RELOAD_ACCEL�DASH_JUMP_SPEED WALK_SPEED G_ACCEL�MAX_G_SPEED����JUMP_SPEED INIT_MOTION MOTION_FILE_NAMEDummy_Ani_Wait.xINIT_DEVICEREADY_SOUND  Caution.oggREADY_TEXTURE    ScreenLayer_Black.ddsINIT_SYSTEM UNIT_HEIGHT�UNIT_WIDTH2 