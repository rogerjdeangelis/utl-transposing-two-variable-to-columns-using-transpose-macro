Transposing two variable to columns using transpose macro

gitub
https://tinyurl.com/umxhnek
https://github.com/rogerjdeangelis/utl-transposing-two-variable-to-columns-using-transpose-macro

SAS Forum
https://tinyurl.com/yx669ype
https://communities.sas.com/t5/SAS-Programming/Transposing-two-variable-to-columns/m-p/631721

Other transpose repos
https://tinyurl.com/us63wgb
https://github.com/rogerjdeangelis?tab=repositories&q=transpos+in%3Aname&type=&language=

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

data have;
format date mmddyy10.;
input ID Date :mmddyy8. Report;
cards4;
1 3/12/16 20
1 4/13/16 30
1 5/16/16 40
2 6/15/16 50
;;;;
run;quit;

 WORK. HAVE total obs=4

     DATE       ID    REPORT

  03/12/2016     1      20
  04/13/2016     1      30
  05/16/2016     1      40
  06/15/2016     2      50

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;

 WORK.WANT total obs=2

  ID      DATE1       REPORT1         DATE2    REPORT2         DATE3    REPORT3

   1    03/12/2016      20       04/13/2016      30       05/16/2016      40
   2    06/15/2016      50                .       .                .       .


*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

* there are many more options with this macro;

%utl_transpose(data=have,out=want,by=id, var=date report);



