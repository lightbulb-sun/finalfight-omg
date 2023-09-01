norom

!OH_MY_GOD_SAMPLE_START     = $56310
!OH_MY_GOD_SAMPLE_LENGTH    = $13c2
!OH_MY_GOD_SAMPLE_END      #= !OH_MY_GOD_SAMPLE_START+!OH_MY_GOD_SAMPLE_LENGTH
!OH_MY_GOD_PITCH            = $8a

; copy sample from japanese version
org !OH_MY_GOD_SAMPLE_START
incbin "finalfight-jp.sfc":!OH_MY_GOD_SAMPLE_START..!OH_MY_GOD_SAMPLE_END

; fix pitch
if defined("US")
org $43cdc
else
org $44064
endif
        db      !OH_MY_GOD_PITCH

; fix on-screen text
if defined("US")
org $150b
else
org $1544
endif
        db      "GOD"
