rem
rem Choose nearest stratum:
rem       stratum-eu.rplant.xyz   /France/
rem       stratum-asia.rplant.xyz /Singapore/
rem       stratum-na.rplant.xyz   /Canada/
rem
:start
"%~dp0"cpuminer-sse2.exe -a yespower -o stratum+tcps://stratum-na.rplant.xyz:17017 -u web1qjuueqla0yz40427l5nydwnz508qz7vl37qwx0a.winner
goto start
