$(document).ready(function() {
        const month_day = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
        var x = $('#month').val();

    var k = 0;
    var d = 0, h = 0, v = 0, s = 0, o = 0, w = 0, sd = 0;
    for (let i=1; i<=month_day[x]; i++) {
        $('#part_'+i).change(function () {
            if ($(this).val() === "1") {
                $("#hours_"+i).attr("readonly", true);
                $("#hours_"+i).val("0");
            } else if ($(this).val() === "2") {
                $("#hours_"+i).attr("readonly", true);
                $("#hours_"+i).val("0");
            } else if ($(this).val() === "3") {
                $("#hours_"+i).attr("readonly", true);
                $("#hours_"+i).val("0");
            } else if ($(this).val() === "4") {
                $("#hours_"+i).attr("readonly", true);
                $("#hours_"+i).val("0");
            } else if ($(this).val() === "5") {
                $("#hours_"+i).attr("readonly", true);
                $("#hours_"+i).val("8");
            } else if ($(this).val() === "6") {
                $("#hours_"+i).attr("readonly", true);
                $("#hours_"+i).val("7");
            } else if ($(this).val() === "7") {
                $("#hours_"+i).attr("readonly", false);
                $("#hours_"+i).val("0");
            }

        });

            $("#hours_"+i).ready(function () {
                k = k + parseInt($("#hours_"+i).val());
                $("#sum").val(k);
            });

            $("#part_"+i).ready(function () {
                if ($("#part_"+i).val() === '7'){
                    o = o + parseInt($("#hours_"+i).val());
                    $("#ot").val(o);
                }
            });

        $("#part_"+i).ready(function () {
            if ($("#part_"+i).val() === '5'){
                d++;
                $("#day").val(d);
            }
            else if ($("#part_"+i).val() === '2'){
                w++;
                $("#wek").val(w);
            }

            else if ($("#part_"+i).val() === '1'){
                h++;
                $("#hol").val(h);
            }

            else if ($("#part_"+i).val() === '3'){
                s++;
                $("#sl").val(s);
            }

            else if ($("#part_"+i).val() === '4'){
                v++;
                $("#vac").val(v);
            }

            else if ($("#part_"+i).val() === '6'){
                sd++;
                $("#sd").val(sd);
            }

            // else{
            //
            //     $("#day").val(0);
            //     $("#hol").val(0);
            //     $("#sl").val(0);
            //     $("#vac").val(0);
            //     $("#sd").val(0);
            //     $("#wek").val(0);
            // }

        });
    }

});