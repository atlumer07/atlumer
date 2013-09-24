var up
var min1, sec1, hrs1
var cmin1, csec1, chrs1
var dayarray = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
var montharray = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")


var dayTwo = convertToDat(Datetemp);  //new Date(Datetemp)
var hrNow = dayTwo.getHours()
var mnNow = dayTwo.getMinutes()
var scNow = dayTwo.getSeconds()
var day = dayTwo.getDay()
var month = dayTwo.getMonth()
var dn = "AM"
var daym = dayTwo.getDate()
var year = dayTwo.getYear()


$().ready(function () {
    TimerOn()
});

function TimerOn() {
    chrs1 = hrNow
    cmin1 = mnNow
    csec1 = scNow
    UpRepeat()
}

function Display(hrs, min, sec) {
    var disp

    if (hrs <= 9) disp = "0"
    else disp = ""

    disp += hrs + ":"

    if (min <= 9) disp += "0"
    else disp += ""

    disp += min + ":"

    if (sec <= 9) disp += "0" + sec
    else disp += sec

    return (disp)
}

function UpRepeat() {
    csec1++
    if (csec1 == 60) {
        csec1 = 0
        cmin1++
    }

    if (cmin1 == 60) {
        cmin1 = 0
        chrs1++
    }

    if (chrs1 == 24) {
        chrs1 = 0
        cmin1 = 0
        csec1 = 0
        strDate = strDateNextDay
    }


    if (year < 1000)
        year += 1900


    var cdate = dayarray[day] + ", " + montharray[month] + " " + daym + ", " + year + " " + Display(chrs1, cmin1, csec1)

    if (document.all)
        document.all.clock.innerHTML = cdate
    else if (document.getElementById)
        document.getElementById("clock").innerHTML = cdate
    else
        document.write(cdate)

    up = setTimeout("UpRepeat()", 1000)
}

function convertToDat(v_sDate) {
    var dateString = v_sDate; // "2010-08-09 01:02:03";
    var reggie = /(\d{4})-(\d{2})-(\d{2}) (\d{2}):(\d{2}):(\d{2})/;
    var dateArray = reggie.exec(dateString);
    var dateObject = new Date(
        (+dateArray[1]),
        (+dateArray[2]) - 1, // Careful, month starts at 0! 
        (+dateArray[3]),
        (+dateArray[4]),
        (+dateArray[5]),
        (+dateArray[6])
    );
    return dateObject;
}