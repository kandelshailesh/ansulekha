// ("#tablecreate").on('keydown',reportKeyEvent);
        $('#tablename').focus();

var tablecreatecount=0;


// $('div#hallModal').on('shown.bs.modal', function(e) {
//     // e.preventDefault();
// alert("Entered");
//      $(this).find('input').eq(0).focus();

//     // $(this).find('[autofocus]').focus();
// });


//         $('body').on('shown.bs.modal', '#tableModal', function () {
//             alert("Entered");
//             $('input:visible:enabled:first', this).focus();
//         })
        

//     $('#roomModal').on('shown.bs.modal', function() {
//         console.log("Entered");
//          $('#roomModal').find('input').eq(0).focus();
//         // $(this).find('[autofocus]').get(1).focus();
//     });

//     $('#hallModal').on('shown.bs.modal', function() {
//         console.log("Entered");
//          $('#hallModal').find('input').eq(0).focus();
//         // $(this).find('[autofocus]').get(1).focus();
//     });


$('.tableinformations').on('keyup', 'input', function(e) {
    var self = $(this),
        form = self.parents('form:eq(0)'),
        focusable, next, prev;
        // $('#categoryname').focus();

        // $('.tableinformations').find('[autofocus]').focus();

    // if (e.shiftKey) {
        if (e.keyCode == 8) {

            focusable = form.find('input,a,select,button,textarea').filter(':enabled');
            if(this.value.length===0)
            {
            prev = focusable.eq(focusable.index(this) - 1);

            if (prev.length) {
                prev.focus();
            } else {
                form.submit();
            }
        }
        }
    // } else
    if (e.keyCode == 13) {
        // e.preventDefault();
        // $('[id^=accountlist]').html('');



        focusable = form.find('input,a,select,button,textarea').filter(':enabled');
        next = focusable.eq(focusable.index(this) + 1);
        console.log(next);

        if (next.length) {
            next.focus();

        } else {
            form.submit();
        }
        return false;
    }
   e.preventDefault();

});


// $("[id^=tablecreate]").on('keydown', reportKeyEvent);


function reportKeyEvent(zEvent) {
    // zEvent.preventDefault();
// alert("Sd");

    var reportStr =
        "The " +
        (zEvent.ctrlKey ? "Control " : "") +
        (zEvent.shiftKey ? "Shift " : "") +
        (zEvent.altKey ? "Alt " : "") +
        (zEvent.metaKey ? "Meta " : "") +
        zEvent.key + " " +
        "key was pressed.";
    console.log(reportStr);
    // <!-- $("#statusReport").text (reportStr); -->

    //--- Was a Ctrl-Alt-E combo pressed?
    if (zEvent.altKey && zEvent.key === "c") {
        $("#tableModal").modal();
        // <!-- this.hitCnt = ( this.hitCnt || 0 ) + 1; -->
        // <!--  $("#statusReport").after (
        //      '<p>Bingo! cnt: ' + this.hitCnt + '</p>'
        //  ); -->
    }
    
    // zEvent.stopPropagation();
}


$('form.tableinformations').on('submit',function(e)
{
    e.preventDefault();

    var itemcreateform = $(".tableinformations").serializeArray();
    var formObj = {};
    $.each(itemcreateform, function (i, input) {
        formObj[input.name] = input.value;
    });
   console.log(formObj);
     $.ajax({
            type: 'post',
            url: '/createtable',
            data: { formobj:formObj },
            error: function(data) {
                // var data=JSON.parse(data);
                console.log(data.result);

                alert("table name already in the list");
            },
            success: function(data) {
            
                alert("table created successfully");
                // $(".iteminformations").reset();
                $('button.closetable').click();
                $('form.tableinformations').trigger("reset");
                // $('button.close').click();

                 $('#tableModal').modal('toggle');
                  $("datalist#tablelist").append(`<option>${formObj.tablename}</option>`);

            }

})
})
