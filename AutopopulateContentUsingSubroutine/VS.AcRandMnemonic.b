SUBROUTINE VS.AcRandMnemonic


    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT MARX.BP I_VS.COMMON

    rand_mne = RND$Letters(4) : RND$Numbers(4) : RND$Letters(2)
    IF R.NEW(AF) EQ '' THEN R.NEW(AF) = rand_mne

    RETURN 
END