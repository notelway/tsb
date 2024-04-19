_F{_CHR_BANK_IDS

RIGHT_ENDZONE_CROWD_CHR_BANK		= $10 
LEFT_ENDZONE_CROWD_CHR_BANK			= $14 



; SPR CHR BANK CONSTANTS

.ENUM $00						; SPRITE 
CHR_BANK_1_ID			.dsb 1  ; 0 DEFAULT 1000  CHR BANK ON FIELD PLAYERS (gets rotated aevery frame for animation)
CHR_BANK_2_ID			.dsb 1  ; 1
CHR_BANK_3_ID			.dsb 1	; 2
CHR_BANK_4_ID			.dsb 1	; 3
CHR_BANK_5_ID			.dsb 1	; 4
CHR_BANK_6_ID			.dsb 1	; 5
CHR_BANK_7_ID			.dsb 1	; 6  DEFAULT 1400  CHR BANK ON FIELD PLAYERS
CHR_BANK_8_ID			.dsb 1	; 7  DEFAULT 1800  CHR BANK ON FIELD PLAYERS
CHR_BANK_9_ID			.dsb 1	; 8  DEFAULT 1C00  CHR BANK ON FIELD PLAYERS
CHR_BANK_10_ID			.dsb 1	; 9 
CHR_BANK_11_ID			.dsb 1	; 0a
CHR_BANK_12_ID			.dsb 1	; 0b
CHR_BANK_13_ID			.dsb 1	; 0c
CHR_BANK_14_ID			.dsb 1	; 0d
CHR_BANK_15_ID			.dsb 1  ; $0e
CHR_BANK_16_ID			.dsb 1  ; $0f 

CHR_BANK_17_ID			.dsb 1	; CROWD1 + ENDZONE 1 
CHR_BANK_18_ID			.dsb 1
CHR_BANK_19_ID			.dsb 1  ; CROWD2 + ENDZONE 1 
CHR_BANK_20_ID			.dsb 1
CHR_BANK_21_ID			.dsb 1  ; CROWD1 + ENDZONE 2
CHR_BANK_22_ID			.dsb 1
CHR_BANK_23_ID			.dsb 1	; CROWD2 + ENDZONE 2
CHR_BANK_24_ID			.dsb 1

CHR_BANK_25_ID			.dsb 1  ; ON FIELD TEXT + MARKERS + CNOTROLLER OUTLINE 
CHR_BANK_26_ID			.dsb 1

CHR_BANK_27_ID			.dsb 1  ; LARGE LETTERS
CHR_BANK_28_ID			.dsb 1

CHR_BANK_29_ID			.dsb 1  ; FIELD GRAPHICS (YARDLINES AND MIDFIELD LOGO)
CHR_BANK_30_ID			.dsb 1

CHR_BANK_31_ID			.dsb 1  ; PLAYBOOK GRAPHICS
CHR_BANK_32_ID			.dsb 1

CHR_BANK_33_ID			.dsb 1  ; PLAYSELECT TEXT AND MINI FIELD GRAPHICS
CHR_BANK_34_ID			.dsb 1	; 

CHR_BANK_35_ID			.dsb 1	; PLAYBOOK GRAPHICS FLIPPED
CHR_BANK_36_ID			.dsb 1

CHR_BANK_37_ID			.dsb 1  ; BLIMP GRAPHICS 
CHR_BANK_38_ID			.dsb 1

CHR_BANK_39_ID			.dsb 1	; STADIUM CUTSCENE BG
CHR_BANK_40_ID			.dsb 1
CHR_BANK_41_ID			.dsb 1
CHR_BANK_42_ID			.dsb 1
CHR_BANK_43_ID			.dsb 1
CHR_BANK_44_ID			.dsb 1
CHR_BANK_45_ID			.dsb 1
CHR_BANK_46_ID			.dsb 1
CHR_BANK_47_ID			.dsb 1

PLAYER_ANI_START_CHR_BANK		 		= CHR_BANK_1_ID
DEFAULT_PLAYER_ANI_1400_CHR_BANK		= CHR_BANK_7_ID	
DEFAULT_PLAYER_ANI_1800_CHR_BANK		= CHR_BANK_8_ID
DEFAULT_PLAYER_ANI_1C00_CHR_BANK		= CHR_BANK_9_ID



DIVE_QB_ARM_EXTENDED_CHR_BANK			= CHR_BANK_7_ID

TIPPED_BALL_CHR_BANK					= CHR_BANK_8_ID
JUMP_THROW_ON_GROUND_CHR_BANK			= CHR_BANK_8_ID
TUMBLE_X_MARKER_CHR_BANK				= CHR_BANK_9_ID
DIVE_QB_DROPBACK_CHR_BANK				= CHR_BANK_10_ID

HOLDER_AND_KICKER_CHR_BANK				= CHR_BANK_11_ID 
HANDOFF_CHR_BANK						= CHR_BANK_12_ID

DIVE_CELEBRATE_CRY_CHR_BANK				= CHR_BANK_14_ID

QB_THROW_JUMP_NO_TIP_BALL_CHR_BANK		= CHR_BANK_15_ID	

TEAM_SELECT_CHR_BANK					= CHR_BANK_16_ID
PLAY_CALL_SPRITES_CHR_BANK				= CHR_BANK_16_ID
PLAY_IMAGE_P1_SIDE_CHR_BANK				= CHR_BANK_23_ID

NUMBERS_CHR_BANK_ID				 		= CHR_BANK_33_ID
LETTERS_CHR_BANK_ID				 		= CHR_BANK_34_ID ; double check

P2_SIDE_PLAY_IMAGE_TILES_CHR_BANK   	= CHR_BANK_31_ID
P1_SIDE_PLAY_IMAGE_TILES_CHR_BANK		= CHR_BANK_35_ID

FLASHING_CONTROLLER_SPR_TILES_CHR_BANK	= CHR_BANK_33_ID
CHANGE_PLAY_ARROW_SPR_TILES_CHR_BANK	= CHR_BANK_47_ID

PLAYER_FACES_SPR_CHR_BANK_ONE			= $62
PLAYER_FACES_SPR_CHR_BANK_TWO			= $63

HELMET_SPR_TILES_CHR_BANK_ONE			= $7A
HELMET_SPR_TILES_CHR_BANK_TWO			= $7B

_F}_CHR_BANK_IDS