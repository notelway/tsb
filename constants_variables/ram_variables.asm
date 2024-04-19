
_F{_STACK_RAM_VARIABLES						; 100-1FF

.ENUM $0100
;************* STACK *********************;; 
	FLICKER_SPRITES_STACK           .dsb 26
	PLAYER_ACTIONS_STACK            .dsb 32
	
; 		SHARED STACK SPACE 
	
	PLAY_CALL_INPUT_STACK           .dsb 0
    SPLIT_SCREEN_SCROLL_STACK 		.dsb 0	
    BLINKING_PALLETE_STACK 			.dsb 0
    COLLISION_STACK 				.dsb 24
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
    READY_SELECT_UPDATE_TASK		.dsb 0 
	BALL_ANIMATION_STACK			.dsb 0 
    DRAW_SPRITE_CUTSCENE_STACK 	    .dsb 26
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
; SHARED STACK SPACE
	SCROLLING_STACK 				.dsb 0	
	BANNER_STACK 					.dsb 0
	METATILE_STACK					.dsb 32
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
; SHARED STACK SPACE
		
	DRAW_SCRIPT_STACK				.dsb 0
	DRAW_GAMEFIELD_STACK			.dsb 0 	
	PLAYCALL_DEFENSE_STACK			.dsb 32
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	GAMEPLAY_STACK					.dsb 38
	GAME_MENUS_STACK				.dsb 32
	FIXED_BANK_STACK				.dsb 14
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.ENDE
	
FLICKER_SPRITES_STACK_INDEX 		= PLAYER_ACTIONS_STACK 			- $100 - $01
PLAYER_ACTIONS_STACK_INDEX			= PLAY_CALL_INPUT_STACK			- $100 - $01

DRAW_SPRITE_CUTSCENE_STACK_INDEX	= METATILE_STACK				- $100 - $01

SCROLLING_STACK_INDEX				= DRAW_SCRIPT_STACK 			- $100 - $01
BANNER_STACK_INDEX					= DRAW_SCRIPT_STACK 			- $100 - $01
METATILE_STACK_INDEX				= DRAW_SCRIPT_STACK 			- $100 - $01


DRAW_GAMEFIELD_STACK_INDEX			= GAMEPLAY_STACK 				- $100 - $01
DRAW_SCRIPT_STACK_INDEX				= GAMEPLAY_STACK 				- $100 - $01
PLAYCALL_DEFENSE_STACK_INDEX		= GAMEPLAY_STACK				- $100 - $01

SPLIT_SCREEN_SCROLL_STACK_INDEX 	= DRAW_SPRITE_CUTSCENE_STACK 	- $100 - $01
BLINKING_PALLETE_STACK_INDEX		= DRAW_SPRITE_CUTSCENE_STACK 	- $100 - $01
COLLISION_STACK_INDEX				= DRAW_SPRITE_CUTSCENE_STACK 	- $100 - $01
READY_SELECT_UPDATE_STACK_INDEX		= DRAW_SPRITE_CUTSCENE_STACK 	- $100 - $01
BALL_ANIMATION_STACK_INDEX			= METATILE_STACK				- $100 - $01


GAMEPLAY_STACK_INDEX				= GAME_MENUS_STACK				- $100 - $01
GAME_MENUS_STACK_INDEX				= FIXED_BANK_STACK 				- $100 - $01
FIXED_BANK_STACK_INDEX				= 								$100    -$01

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	

_F}_STACK_RAM_VARIABLES

_F{_SPRITE_RAM_VARIABLES					; 200-2FF

SPRITE_OFFSCREEN = $F0
.ENUM $0200

     SPRITE_DMA_ADDR				.dsb 0
	 SPRITE_START					.dsb 0
.ENDE

SPRITE_OFFSCREEN = $F0


.ENUM $0200
	P1_INDICATOR_SPR_Y 				.dsb 1
	P1_INDICATOR_SPR_TILE			.dsb 1
	P1_INDICATOR_SPR_ATTR			.dsb 1
	P1_INDICATOR_SPR_X				.dsb 1
	P2_INDICATOR_SPR_Y 				.dsb 1
	P2_INDICATOR_SPR_TILE			.dsb 1
	P2_INDICATOR_SPR_ATTR			.dsb 1
	P2_INDICATOR_SPR_X				.dsb 1
	BALL_SPR_Y 						.dsb 1
	BALL_SPR_TILE					.dsb 1
	BALL_SPR_ATTR					.dsb 1
	BALL_SPR_X						.dsb 1
	FG_ARROW_SPR_Y					.dsb 0 
	PASS_TGT_INDICATOR_SPR_Y	    .dsb 1
	FG_ARROW_SPR_TILE				.dsb 0 
	PASS_TGT_INDICATOR_SPR_TILE		.dsb 1
	FG_ARROW_SPR_ATTR				.dsb 0
	PASS_TGT_INDICATOR_SPR_ATTR		.dsb 1
	FG_ARROW_SPR_X
	PASS_TGT_INDICATOR_SPR_X		.dsb 1
	
	EXTRA_SPRITES_FOR_DIVE_JUMP		.dsb 32				; sprite tiles used for diving jumping
	REGULAR_PLAYER_SPRITES			.dsb 176
    BALL_MARKER_SPR_Y 				.dsb 1
	BALL_MARKER_SPR_TILE			.dsb 1
	BALL_MARKER_SPR_ATTR			.dsb 1
	BALL_MARKER_SPR_X				.dsb 1 	
	BALL_SHADOW_SPR_Y 				.dsb 1
	BALL_SHADOW_SPR_TILE			.dsb 1
	BALL_SHADOW_SPR_ATTR			.dsb 1
	BALL_SHADOW_SPR_X				.dsb 1 	
	UNUSED							.dsb 16 
.ENDE

.ENUM $0200
	CUR_SPRITE_Y					.dsb 1
	CUR_SPRITE_TILE					.dsb 1
	CUR_SPRITE_ATTR					.dsb 1
	CUR_SPRITE_X				    .dsb 1
.ENDE

.ENUM $0200
	CUR_PLAYER_SPR_Y_LEFT				.dsb 1
	CUR_PLAYER_SPR_TILE_LEFT					.dsb 1
	CUR_PLAYER_SPR_ATTR_LEFT					.dsb 1
	CUR_PLAYER_SPR_X_LEFT				    .dsb 1
	
	CUR_PLAYER_SPR_Y_RIGHT				.dsb 1
	CUR_PLAYER_SPR_TILE_RIGHT					.dsb 1
	CUR_PLAYER_SPR_ATTR_RIGHT					.dsb 1
	CUR_PLAYER_SPR_X_RIGHT				    .dsb 1
	
	NEXT_PLAYER_SPR_Y_LEFT				.dsb 1
	NEXT_PLAYER_SPR_TILE_LEFT					.dsb 1
	NEXT_PLAYER_SPR_ATTR_LEFT					.dsb 1
	NEXT_PLAYER_SPR_X_LEFT				    .dsb 1
	
	NEXT_PLAYER_SPR_Y_RIGHT				.dsb 1
	NEXT_PLAYER_SPR_TILE_RIGHT					.dsb 1
	NEXT_PLAYER_SPR_ATTR_RIGHT					.dsb 1
	NEXT_PLAYER_SPR_X_RIGHT				    .dsb 1
	
.ENDE

OFFSET_TO_NEXT_8_BY_8_SPRITE				= $04	
OFFSET_TO_NEXT_8_BY_16_SPRITE				= $08 	
OFFSET_TO_START_OF_FIELD_PLAYER_SPRITES		= $30
	
.ENUM $0200
	MENU_ARROW_SPR_INFO					.dsb 0
	MENU_ARROW_SPR_Y					.dsb 1
	MENU_ARROW_SPR_TILE				    .dsb 1
	MENU_ARROW_SPR_ATTR					.dsb 1
	MENU_ARROW_SPR_X				    .dsb 1
	
	SECOND_MENU_ARROW_SPR_INFO			.dsb 0
	SECOND_MENU_ARROW_SPR_Y				.dsb 1
	SECOND_MENU_ARROW_SPR_TILE			.dsb 1
	SECOND_MENU_ARROW_SPR_ATTR			.dsb 1
	SECOND_MENU_ARROW_SPR_X				.dsb 1
.ENDE

.ENUM $0210
	CUR_JERSEY_NUM_FIRST_DIG_SPR_Y		.dsb 1
	CUR_JERSEY_NUM_FIRST_DIG_SPR_TILE	.dsb 1
	CUR_JERSEY_NUM_FIRST_DIG_SPR_ATTR		.dsb 1
	CUR_JERSEY_NUM_FIRST_DIG_SPR_X		.dsb 1
	
	CUR_JERSEY_NUM_SECOND_DIG_SPR_Y		.dsb 1
	CUR_JERSEY_NUM_SECOND_DIG_SPR_TILE	.dsb 1
	CUR_JERSEY_NUM_SECOND_DIG_SPR_ATTR		.dsb 1
	CUR_JERSEY_NUM_SECOND_DIG_SPR_X		.dsb 1
	
.ENDE

.ENUM $0210
	SPECIAL_HELMET_SPRITES_SPR_INFO[]	.dsb 0
.ENDE

.ENUM $0210
	PRO_BOWL_X_MARKER_SPR_INFO[]		.dsb 0
.ENDE

.ENUM $0210
	CONTROLLER_SPR_INFO[]				.dsb 32
.ENDE
	
	

.ENUM $0230
	INJURED_PLAYER_SPR_Y 					.dsb 1
	INJURED_PLAYER_SPR_TILE				.dsb 1
	INJURED_PLAYER_SPR_ATTR					.dsb 1
	INJURED_PLAYER_SPR_X				    .dsb 1

	INJURED_PLAYER_FOOT_SPR_Y 					.dsb 1
   INJURED_PLAYER_FOOT_TILE					.dsb 1
	INJURED_PLAYER_FOOT_SPR_ATTR				.dsb 1
	INJURED_PLAYER_FOOT_SPR_X				    .dsb 1

   REF_INJURY_SPR_Y 					.dsb 1
   REF_INJURY_SPR_TILE					.dsb 1
	REF_INJURY_SPR_ATTR				.dsb 1
	REF_INJURY_SPR_X				    .dsb 1

   STRETCHER_1_INJURY_SPR_Y 					.dsb 1
	STRETCHER_1_INJURY_SPR_TILE					.dsb 1
	STRETCHER_1_INJURY_SPR_ATTR				.dsb 1
	STRETCHER_1_INJURY_SPR_X				    .dsb 1

   STRETCHER_2_INJURY_SPR_Y 					.dsb 1
	STRETCHER_2_INJURY_SPR_TILE					.dsb 1
	STRETCHER_2_INJURY_SPR_ATTR				.dsb 1
	STRETCHER_2_INJURY_SPR_X				    .dsb 1
.ENDE	

.ENUM $0230
	PLAY_CHANGE_ARROWS_SPR_INFO[]
.ENDE	

_F}_SPRITE_RAM_VARIABLES

_F{_NMI_IRQ_RAM_VARIABLES	
	
	.ENUM $0300
				; NMI VARIABLES
	NMI_A			.dsb 1
	NMI_X			.dsb 1
	NMI_Y			.dsb 1

				; IRQ VARIABLES

	IRQ_A			.dsb 1
	IRQ_X			.dsb 1
	IRQ_Y			.dsb 1
    

	CUR_IRQ_INDEX		.dsb 1

   IRQ_INFO_START    .dsb 0
    CURR_IRQ_START    .dsb 0
	CURR_IRQ_PPU_ADDR	.dsb 0
	CURR_IRQ_XSCROLL    .dsb 0
	IRQ_0_XSCROLL		.dsb 1
	CURR_IRQ_NAMETABLE  .dsb 0
	IRQ_0_NAMETABLE		.dsb 1
	CURR_IRQ_BG_0000	.dsb 0
	IRQ_0_BG_0000		.dsb 1
	CURR_IRQ_BG_0800	.dsb 0
	IRQ_0_BG_0800		.dsb 1
	CURR_IRQ_COUNTER	.dsb 0
	IRQ_0_COUNTER		.dsb 1

	IRQ_1_XSCROLL		.dsb 1
	IRQ_1_NAMETABLE		.dsb 1
	IRQ_1_BG_0000		.dsb 1
	IRQ_1_BG_0800		.dsb 1
	IRQ_1_COUNTER		.dsb 1

	IRQ_2_XSCROLL		.dsb 1
	IRQ_2_NAMETABLE		.dsb 1
	IRQ_2_BG_0000		.dsb 1
	IRQ_2_BG_0800		.dsb 1
	IRQ_2_COUNTER		.dsb 1

	IRQ_3_XSCROLL		.dsb 1
	IRQ_3_NAMETABLE		.dsb 1
	IRQ_3_BG_0000		.dsb 1
	IRQ_3_BG_0800		.dsb 1
	
SIZE_OF_IRQ_INFO	 =	IRQ_2_XSCROLL - IRQ_1_XSCROLL
PREVIOUS_IRQ_BG_0000 =  CURR_IRQ_BG_0000 - 	SIZE_OF_IRQ_INFO
PREVIOUS_IRQ_BG_0800 =  CURR_IRQ_BG_0800 - 	SIZE_OF_IRQ_INFO

_F}_NMI_IRQ_RAM_VARIABLES	

_F{_PALLETTE_BUFFER_RAM_VARIABLES
	
				; PALLETE BUFFER VARIABLES

	PALLETE_BUFFER_START .dsb 0			
	BG_PAL_BUFFER_START	.dsb 16
	SPR_PAL_BUFFER_START	.dsb 16



REF_PAL_BUF_1								= SPR_PAL_BUFFER_START + 13
REF_PAL_BUF_2								= SPR_PAL_BUFFER_START + 14
REF_PAL_BUF_3								= SPR_PAL_BUFFER_START + 15

CONTROLLER_FLASH_PAL_BUF_1					= BG_PAL_BUFFER_START + 10
CONTROLLER_FLASH_PAL_BUF_2					= BG_PAL_BUFFER_START + 14

CUTSCENE_SKIN_COLOR_A						= SPR_PAL_BUFFER_START + 3
CUTSCENE_SKIN_COLOR_B						= SPR_PAL_BUFFER_START + 7

CUTSCENE_PANTS_HELMET_COLOR_A				= SPR_PAL_BUFFER_START + 6
CUTSCENE_PANTS_HELMET_COLOR_B				= SPR_PAL_BUFFER_START + 11

CUTSCENE_JERSEY_COLOR_A						= SPR_PAL_BUFFER_START + 2
CUTSCENE_JERSEY_COLOR_B						= SPR_PAL_BUFFER_START + 10

LARGE_HELMET_SHELL_INNER_BG_COLOR_OFFSET 			= BG_PAL_BUFFER_START + $05 
LARGE_HELMET_SHELL_MIDDLE_BG_COLOR_OFFSET 		= BG_PAL_BUFFER_START + $06
LARGE_HELMET_LINING_BG_COLOR_OFFSET 		= BG_PAL_BUFFER_START + $07

LARGE_HELMET_FACEMASK_FILL_SPR_COLOR_OFFSET				= SPR_PAL_BUFFER_START + $01
LARGE_HELMET_FACEMASK_OUTLINE_SPR_COLOR_OFFSET			= SPR_PAL_BUFFER_START + $02
LARGE_HELMET_FACEMASK_MIDDLE_SPR_COLOR_OFFSET			= SPR_PAL_BUFFER_START + $03 

LARGE_HELMET_LOGO_SPR_COLOR_ONE_OFFSET					= SPR_PAL_BUFFER_START + $05 
LARGE_HELMET_LOGO_SPR_COLOR_TWO_OFFSET					= SPR_PAL_BUFFER_START + $06 
LARGE_HELMET_LOGO_SPR_COLOR_THREE_OFFSET				= SPR_PAL_BUFFER_START + $07 

_F}_PALLETTE_BUFFER_RAM_VARIABLES

_F{_BACKROUND_BUFFER_RAM_VARIABLES

MAX_BUFFER_LENGTH = $3F

				; BG BUFFER VARIABLES
	CURRENT_BG_BUFFER_LOC .dsb 0 	; USED FOR ARRAY OPERATIONS		
	BG_BUFFER_INC_TYPE	.dsb 0
	BG_BUFFER_SEGMENT_LENGTH	.dsb 1
	BG_BUFFER_ADDR		.dsb 2       ;
	BG_BUFFER_DATA		.dsb 64     ;
	BG_BUFFER_DIR_LOCK_STATUS			.dsb 0  ; BIT 7= set = to buffer, not set=  to ppu, BIT 6 set= lockked
	BG_BUFFER_LENGTH	.dsb 1      ;
	

				; NAME BUFFER
.ENUM $037E			
	NAME_BUFFER_STATUS	   .dsb 1      ;	
    NAME_BUFFER_LENGTH	   .dsb 0	
	NAME_BUFFER_SPACE_FLAG	.dsb 1
	NAME_BUFFER_START    	.dsb 1
.ENDE

.ENUM $037F			
	SCORE_BUFFER			.dsb 5
	END_OF_SCORE_BUFFER		.dsb 0 
.ENDE

SIZE_OF_SCORE_BUFFER = END_OF_SCORE_BUFFER - SCORE_BUFFER

_F}_BACKROUND_BUFFER_RAM_VARIABLES

_F{_CLOSEST_PLAYERS_ON_PASS_RAM_VARIABLES

.ENUM $037F
	DEFENDER_DISTANCES_PASS					 	.dsb 0 			
	FIRST_CLOSEST_DEFENDER_DIST_PASS			.dsb 1
	SECOND_CLOSEST_DEF_DIST_PASS				.dsb 1
	THIRD_CLOSEST_DEF_DIST_PASS					.dsb 1
.ENDE 

.ENUM $0381	
	PLAYER_POS_IDS_PASS							.dsb 0
 	FIRST_CLOSEST_POS_ID_PASS					.dsb 1
	SECOND_CLOSEST_POS_ID_PASS					.dsb 1
	THIRD_CLOSEST_POS_ID_PASS					.dsb 1
	FOURTH_CLOSEST_POS_ID_PASS					.dsb 1

.ENUM $0382	
	DEFENDER_POS_IDS_PASS						.dsb 1	
	FIRST_CLOSEST_DEF_POS_ID_PASS				.dsb 1
	SECOND_CLOSEST_DEF_POS_ID_PASS				.dsb 1
	THIRD_CLOSEST_DEF_POS_ID_PASS				.dsb 1
.ENDE

_F}_CLOSEST_PLAYERS_ON_PASS_RAM_VARIABLES

_F{_SEASON_RANKING_RAM_VARIABLES

.ENUM $03D6	
	RANKING_DATA[]								.dsb 186				; *** no need to start in this area = 6 bytes per rank
	END_OF_RANKING_DATA							.dsb 0
.ENDE
	
	SIZE_OF_RANKING_DATA						= END_OF_RANKING_DATA   -   RANKING_DATA[]	
	LAST_LEADER_INDEX							= END_OF_RANKING_DATA	-	RANKING_DATA[] - $06	; ordinal, team, roster id, stat value 3 byte
	CURRENT_RANKING_ORDINAL[]					= RANKING_DATA[]  
	CURRENT_TEAM_LEADERS_RANKING[]				= RANKING_DATA[] + 1 
	CURRENT_ROSTER_ID_LEADERS_RANKING[]			= RANKING_DATA[] + 2
	CURRENT_BCD_STAT_VALUE[]					= RANKING_DATA[] + 3		;  3 byte size
	
	LAST_LEADER_INDEX							= $B4 

_F}_SEASON_RANKING_RAM_VARIABLES	

_F{_SAVE_PREV_BANK_RAM_VARIABLES

.ENUM $0393
	PREV_8000_BANK_TEMP  .dsb 1
	PREV_A000_BANK_TEMP  .dsb 1

.ENDE 

_F}_SAVE_PREV_BANK_RAM_VARIABLES	

_F{_P1_P2_QTR_TOTAL_SCORES_RAM_VARIABLES
	
	.ENUM $0395
	QTR_SCORES[]		.dsb 0		
    P1_QTR_SCORES		.dsb 0
	P1_Q1_TOTAL			.dsb 1
	P1_Q2_TOTAL			.dsb 1
	P1_Q3_TOTAL			.dsb 1
	P1_Q4_TOTAL			.dsb 1
	P1_TOTAL_SCORE		.dsb 1
	
	P2_QTR_SCORES		.dsb 0
	P2_Q1_TOTAL			.dsb 1
	P2_Q2_TOTAL			.dsb 1
	P2_Q3_TOTAL			.dsb 1
	P2_Q4_TOTAL			.dsb 1
	P2_TOTAL_SCORE		.dsb 1
	
	SIZE_OF_ALL_SCORES	= P2_TOTAL_SCORE - P1_QTR_SCORES + 1 

.ENDE	
_F}_P1_P2_QTR_TOTAL_SCORES_RAM_VARIABLES	

_F{_ON_FIELD_PLAYER_INFO_SCORES_RAM_VARIABLES       ; SHARED

.ENUM $039F
	PLAYER_RAM_START 		.dsb 0			; STORES INFO FOR EACH PLAYER ON FIELD
											; collision status, action addr, collision addr, position id, x,y, location, speed, etc
	
	P1_RAM_FIRST_PLAYER	.dsb 0
   P1_RAM_KICKER        .dsb 0
   PLAYER_1_RAM_START 	.dsb 0
   P1_RAM_QB_RE         .dsb 32  	
   P1_RAM_RB1_NT        .dsb 32
   P1_RAM_RB2_LE        .dsb 32
   P1_RAM_WR1_ROLB      .dsb 32
   P1_RAM_WR2_RILB      .dsb 32
   P1_RAM_TE1_LILB      .dsb 32
   P1_RAM_C_LOLB        .dsb 32
   P1_RAM_LG_RCB        .dsb 32
   P1_RAM_RG_LCB        .dsb 32
   P1_RAM_LT_FS         .dsb 32
   P1_RAM_RT_SS         .dsb 32



										; 0x4FF
   PLAYER_2_RAM_START  .dsb 0
   P2_RAM_FIRST_PLAYER .dsb 0
   P2_RAM_KICKER        .dsb 0 
   P2_RAM_QB_RE         .dsb 32
   P2_RAM_RB1_NT        .dsb 32
   P2_RAM_RB2_LE        .dsb 32
   P2_RAM_WR1_ROLB      .dsb 32
   P2_RAM_WR2_RILB      .dsb 32
   P2_RAM_TE1_LILB      .dsb 32
   P2_RAM_C_LOLB        .dsb 32
   P2_RAM_LG_RCB        .dsb 32
   P2_RAM_RG_LCB        .dsb 32
   P2_RAM_LT_FS         .dsb 32
   P2_RAM_RT_SS         .dsb 32
   PLAYER_RAM_END		.dsb 0				; 0x65F 
   UNUSED_KICK_MEMORY   .dsb 1 			; ***code could be fixed to get rid of this. Used in gameple and on field commands 
   KICK_TYPE_SAVE		.dsb 1			; 00= fg, FF = xp
   
   
SIZE_OF_EACH_PLAYER_RAM 	= $20 
SIZE_OF_ALL_PLAYER_RAM		= PLAYER_RAM_END - PLAYER_RAM_START 
 
.ENDE

_F}_ON_FIELD_PLAYER_INFO_SCORES_RAM_VARIABLES

_F{_LEADERS_YARDAGE_RAM_VARIABLES 					; SHARED

.ENUM $039F
	TEAM_YARDAGE_SORTED_INFO[] .dsb 0			
	LEADERS_SORTED_INFO_TEMP[]	.dsb 5				; used to sort leaders 
.ENDE

_F}_LEADERS_YARDAGE_RAM_VARIABLES 

_F{_SEASON_SKIP_MODE_RAM_VARIABLES 					; SHARED

.ENUM $039F
P1_P2_SIM_TEAM_STATS[]			.dsb 0
START_OF_SIM_RAM[]		        .dsb 0
SIM_TEAM_FIRST_DOWNS[]          .dsb 2                                                       ; 
SIM_TEAM_RUSHING_ATT[]          .dsb 2
SIM_TEAM_RUSHING_YDS[]          .dsb 4                                                       ; 2 bytes per team 
SIM_TEAM_PASSING_YDS[]          .dsb 4                                                       ; 2 bytes per team 
SIM_CURRENT_TEAM_WITH_BALL      .dsb 1
SIM_LAST_TEAM_WITH_BALL         .dsb 1
SIM_PLAYER_TACKLED_BOOL         .dsb 1                                                       ; true or false   
SIM_DO_KICKOFF_BOOL             .dsb 1  
SIM_GAME_STATUS                 .dsb 1 
SIM_PLAY_TYPE                   .dsb 1
SIM_DISTANCE_FROM_ENDZONE       .dsb 1
SIM_YARDS_LEFT_FOR_FIRST_DOWN   .dsb 1 
SIM_PLAY_CALLS[]                .dsb 2
SIM_PLAY_YARDAGE                .dsb 1 
SIM_TIME_PLAY_USED              .dsb 1 
SIM_PTS_TO_ADD_TO_SCORE         .dsb 1
SIM_PUNT_YARDS                  .dsb 1
SIM_PUNTER_ID                   .dsb 1
SIM_QB_ID                       .dsb 1
SIM_CURRENT_STARTER_ID          .dsb 1  													; used to save starter or roster id
SIM_TEMP_VARIABLE_ONE           .dsb 1
SIM_TEMP_VARIABLE_TWO           .dsb 1
SIM_TEMP_VARIABLE_THREE         .dsb 1 														; 3be
SIM_TARGET_INDEX                .dsb 1
SIM_NOT_USED                    .dsb 1
SIM_INJURY_BOOL                 .dsb 1                                                       ; 3c1   
SIM_CURRENT_POSITION_ID         .dsb 1 
SIM_CURRENT_TEAM                .dsb 1 
SIM_ROSTER_ID_UPDATE_STATS      .dsb 1
SIM_STAT_TO_UPDATE              .dsb 1
SIM_SAVE_LOCAL_VARS[]           .dsb 8 
SIM_RUN_PLAY_STARTER_IDS[]      .dsb 8                                                     ; 4 FOR EACH TEAM  
SIM_QB_RUSHING_SIM_VALUE[]      .dsb 2
SIM_SKILL_RUSHING_SIM_VALUE[]   .dsb 10 
SIM_KR_SIM_VALUE[]              .dsb 2 
SIM_PR_SIM_VALUE[]              .dsb 2                                                     ; looks not used uses kr value instead
SIM_QB_PASS_SIM_VALUE[]         .dsb 2
SIM_SKILL_REC_SIM_VALUE[]       .dsb 10
SIM_SKILL_REC_YARD_SIM_VALUE[]  .dsb 10
SIM_FG_XP_SIM_VALUE[]           .dsb 2
SIM_PUNT_YARD_SIM_VALUE[]       .dsb 2
SIM_TARGET_CHANCE_SIM_VALUE[]   .dsb 10
SIM_RUN_DEFENSE_SIM_VALUE[]     .dsb 2
SIM_PASS_DEFENSE_SIM_VALUE[]    .dsb 2
SIM_QB_SCRAMBLE_SIM_VALUE[]     .dsb 2
SIM_DEF_SACK_SIM_VALUE[]        .dsb 22
SIM_DEF_INT_SIM_VALUE[]         .dsb 22

.ENDE

.ENUM $061F
    SIM_IS_IS_PLAYOFFS_BOOL			.dsb 1	
	P1_TEAM_OFFENSIVE_STYLE			.dsb 1
	P2_TEAM_OFFENSIVE_STYLE			.dsb 1
	
	SIM_RUN_PLAY_POSITION_IDS[]		.dsb 0
	P1_SKP_MODE_RUN_PLAY_RUNNERS	.dsb 4
	P2_SKP_MODE_RUN_PLAY_RUNNERS	.dsb 4
	
	SIM_CONDITIONS[]				.dsb 0 
	P1_SIM_CONDITIONS[]				.dsb 8
	P2_SIM_CONDITIONS[]				.dsb 8
.ENDE

_F}_SEASON_SKIP_MODE_RAM_VARIABLES 

_F{_KICKING_RAM_VARIABLES 
	
.ENUM $0661
KICKING_ABILITY_TEMP				.dsb 1
AVOID_BLOCK_TEMP					.dsb 1
.ENDE

_F}_KICKING_RAM_VARIABLES 

_F{_SPRITE_SCRIPT_RAM_VARIABLES 					; SHARED

.ENUM $0683
    SPRITE_SCRIPT_RAM_START			.dsb 96 		; each script is 32 bytes max of 3 
	
.ENDE

_F}_SPRITE_SCRIPT_RAM_VARIABLES 

_F{_PASS_TARGETS_BALL_COLLISION_RAM_VARIABLES

.ENUM $0680
    DEF_SACK_BALL_BLOCK_STARTER_ID	.dsb 1 
   	IN_GAME_COM_COA_SKP_SIDE		.dsb 1
	COLL_SOUND_TO_PLAY				.dsb 0
	PLAY_COLL_SOUND_STATUS 			.dsb 1
    
	PASS_TARGET_INFO				.dsb 0	
    CURRENT_PASS_TARGET				.dsb 1
    PASS_TARGETS					.dsb 0 	
	PASS_COLL_PLAYERS       		.dsb 5
	EMPTY							.dsb 1 
.ENDE

_F}_PASS_TARGETS_BALL_COLLISION_RAM_VARIABLES

_F{_COLLISION_STATUS_RAM_VARIABLES

.ENUM $068A                   	               	   ; all of these are set bitwise from RE to SS 
	COLL_RAM_START					.dsb 0 
	CAN_COLLIDE_STATUS_OFFENSE		.dsb 22        ; 68A
	CAN_BLOCK_STATUS_OFFENSE		.dsb 22        ; 6A0 PLAYER CAN BE TACKLED/ CAN CHOP BLOCK
	COLLIDED_STATUS_OFFENSE			.dsb 22        ; 6B6 OFFENSIVE PLAYER COLLIDED STATUS two bytes per player
	CLOSE_COLL_STATUS_OFFENSE		.dsb 22        ; 6CC DEFENDERS NEAR (for dive checks 
	END_OF_COLL_RAM					.dsb 0 
	SIZE_OF_ENTIRE_COLL_STATUS_RAM	 = END_OF_COLL_RAM - COLL_RAM_START
	SIZE_OF_COLLISION_STATUS		 = CAN_BLOCK_STATUS_OFFENSE - CAN_COLLIDE_STATUS_OFFENSE
	
.ENDE

OFFSET_TO_CLOSE_COLL_STATUS = SIZE_OF_COLLISION_STATUS
OFFSET_TO_CAN_BLOCK_STATUS = SIZE_OF_COLLISION_STATUS

_F}_COLLISION_STATUS_RAM_VARIABLES

_F{_FLICKER_PLAYER_SPRITE_RAM_VARIABLES

.ENUM $06E2		
	SPRITE_PER_AREA_COUNTER_START 	.dsb 16	
.ENDE

_F}_FLICKER_PLAYER_SPRITE_RAM_VARIABLES

_F{_BG_SCROLL_SPEEDS_RAM_VARIABLES

.ENUM $06E3		
	CURRENT_BG_X_SCROLL_SPEED[] 	.dsb 0					; for srolling split screen backgrounds	
	BG_ONE_X_SCROLL_SPEED			.dsb 1
	BG_TWO_X_SCROLL_SPEED			.dsb 1
	BG_THREE_X_SCROLL_SPEED			.dsb 1
	BG_FOUR_X_SCROLL_SPEED			.dsb 1
	
.ENDE

_F}_BG_SCROLL_SPEEDS_RAM_VARIABLES

_F{_DOWN_MARKER_ATTR_VALUE_RAM_VARIABLES

.ENUM $06F2
	DOWN_MARKER_ATTR_DATA[]
	DOWN_MARKER_ATTR_DATA_LENGTH	.dsb 1	
	DOWN_MARKER_ATTR_TABLE_VALUE	.dsb 1
.ENDE

_F}_DOWN_MARKER_ATTR_VALUE_RAM_VARIABLES

_F{_SLOW_MOTION_DEBUG_RAM_VARIABLES

.ENUM $06F6
	SLOW_MOTION_PAUSE_DEBUG
.ENDE

_F}_SLOW_MOTION_DEBUG_RAM_VARIABLES

_F{_UNUSED_PLAY_YARDAGE_RAM_VARIABLES

.ENUM $06FC													; *** unused 
	PLAY_YARDAGE_ROSTER_ID			.dsb 1
	PLAY_YARDAGE_PLAY_TYPE			.dsb 1					; *** guess
	PLAY_YARDAGE_VALUE				.dsb 2
.ENDE

_F}_UNUSED_PLAY_YARDAGE_RAM_VARIABLES

_F{_SOUND_ENGINE_RAM_VARIABLES

.ENUM $0700
	SOUND_ID_TO_PLAY	               	.dsb 1
	
	CURRENT_CH_SONG_ADDR[]				.dsb 16				; 
	
	CURRENT_CH_VOLUME[]					.dsb 1				; 711 array of struct 
	CURRENT_CH_DUTY_LENGTH_VOL_TYPE[]	.dsb 15				; 712 
									              
	
	CURRENT_CH_NOTE_FREQ_VAL[]			.dsb 0	    		; 721,722
	NOTE_FREQ_VAL_EFFECT[]				.dsb 8
	NOTE_FREQ_VAL_MUSIC[]				.dsb 8 
	
    CURRENT_SECTION_OFFSET_FOR_RETURN[]	.dsb 1				; 731 array of struct song offset
	CURRENT_VOLUME_ENVELOPE_INDEX[]		.dsb 15				; 732 volume envelope offset
	
	MUSIC_DATA_ADDRESSES_RAM_START		.dsb 48				; 741 possible 3 addresses per channel


;;; data format:  current note duration, previous note duration 	
	CURRENT_NOTE_DURATION[]				.dsb 0				; 771  
	NOTE_DURATION_EFFECT[]				.dsb 8				; for memory reference only 
	NOTE_DURATION_MUSIC[]				.dsb 8				; for memory reference only  
	
	CURRENT_VOLUME_ENVELOPE_DURATION[]	.dsb 1				; 781 array of struct
	CURRENT_VOLUME_ENVELOPE_VALUE[]		.dsb 15				; 782
	
	CURRENT_VOLUME_ENVELOPE_ADDR[]		.dsb 16 			; 791

	CURRENT_CHANNEL_DUTY_VALUE[]		.dsb 1 				; 7A1	array of struct : duty,pitch for each channel 
	CURRENT_CHANNEL_PITCH_ADJUST[]		.dsb 15 			; 7A2
	
	
	CURRENT_CHANNEL_FADE_OUT_TIMER[]	.dsb 1 				; 7B1 only music portion used for fade out *** may need to realbel these
	CURRENT_CHANNEL_FADE_OUT_RELOAD[]	.dsb 15
	
	CURRENT_CHANNEL_NOTE_STATUS[]		.dsb 1 				; 7C1 array of struct status,timer 
	CURRENT_CHANNEL_NOTE_TIMER[]		.dsb 15
	
	CURRENT_CHANNEL_VIBRATO_ADDR[]		.dsb 0 				; 7d1
	VIBRATO_ADDR_EFFECT[]				.dsb 8
	VIBRATO_ADDR_MUSIC[]				.dsb 8 
	
	CURRENT_CHANNEL_VIBRATO_TIMER[]		.dsb 1 				; 7e1  ragged array: timer,offset for each channel 
	CURRENT_CHANNEL_VIBRATO_OFFSET[]	.dsb 15	
.ENDE

.ENUM $07F1
   CURRENT_SOUND_DATA_BANK				.dsb 1
   INT_SONG_PLAYING_BOOLEAN				.dsb 1
   ON_FIELD_SONG_TO_PLAY_AFTER_INT   	.dsb 1
   SOFT_APU_STATUS					 	.dsb 1
   EFFECT_CH_INDEX						.dsb 1 
   
.ENDE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_F}_SOUND_ENGINE_RAM_VARIABLES


