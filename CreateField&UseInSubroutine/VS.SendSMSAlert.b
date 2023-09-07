    SUBROUTINE VS.SendSMSAlert(mobile, acc_id, txn, text)

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT

    text = ''
    dr_cr = 'debited from'

    CALL VS.GetRecord('F.ACCOUNT', acc_id, acc_rec)
    acc_name = acc_rec<Account_ShortTitle>

    CALL GET.LOC.REF('ACCOUNT', 'SMS.ALERT', posn)
    sms_alert = acc_rec<Account_LocalRef, posn>

    IF sms_alert NE 'Y' THEN RETURN

    currency = txn<1>
    amount = txn<2>
    details = txn<4>

    IF txn<3> EQ 'CR' THEN dr_cr = 'credited to'

    text = 'Hi ' : acc_name :', ' : currency : ' ' : amount : ' has been '
    text := dr_cr : ' your account ': acc_id : '. Details: ': details 

    * Sending SMS
    CRT 'Sending SMS to ' : mobile

    RETURN 
END