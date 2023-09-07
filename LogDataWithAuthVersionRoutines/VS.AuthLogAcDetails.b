    SUBROUTINE VS.AuthLogAcDetails

    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.ACCOUNT

    log_file = ID.NEW : '.log'
    log_info = R.NEW(AC.MNEMONIC) : '*' : R.NEW(AC.SHORT.TITLE) : '*' :R.NEW(AC.CURRENCY)
    log_info := '*' : R.NEW(AC.CATEGORY) : '*': OPERATOR

    CALL VS.Logger(log_file, log_info, 'INFO', ret_code)

    RETURN
END