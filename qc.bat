if "%1" == "" goto :e2c
qad \10c \10e /s /rv /bc /x@qcx.exc
qrw ad.rpt /ce=Same;x /r
type ad.rpt |more
quit
:e2c
qad \10e \10c /s /rv /bc /x@qc.exc
qrw ad.rpt /ce=Same;x /r
type ad.rpt | more

