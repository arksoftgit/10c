if "%1" == "ignore" goto :ignore
if "%1" == "full" goto :full
qad . \10e /s /r /x@qe.exc
goto :end
:ignore
qad . \10e /s /rv /bC /x@qe.exc
goto :end
:full
qad . \10e /s /rv /bc /x@qe.exc
:end
type ad.rpt | more
