    SUBROUTINE VS.ValDefaultMnemonic


    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.ACCOUNT
    $INSERT MARX.BP I_VS.COMMON

    rand_mne = RND$Letters(4) : COMI
    IF R.NEW(AC.MNEMONIC) EQ '' THEN R.NEW(AC.MNEMONIC) = rand_mne

    RETURN
END
