

for (var i = 1; i < 2; i++) {

    $('.salestable').append(`<tr  class=" m-0 row row-${i} text-center">
      
      <td  class="col-md-4 p-0"><input required list="itemnamelist" class="form-control" name="itemname" id="itemname-${i}" type="text" required oninvalid="this.setCustomValidity('Item not in the list!!')"/></td>
      <td  class="col-md-1 p-0"><input required  name="quantity" id="quantity-${i}" class="form-control" min="0" type="number"  /></td>
      <td  class="col-md-2 p-0"><input required name="rate" id="rate-${i}"  type="number" min="0" class="form-control"  /></td>
      <td   class="col-md-1 p-0"><input autocomplete="off" list="unitlist" name="units" id="units-${i}"  type="text"  class="form-control" required /></td>
      <td  class="col-md-1 p-0"><input required name="discountpercent" id="discountpercent-${i}"  type="number" min="0" class="form-control"  /></td>
      <td  class="col-md-1 p-0"><input required name="vatpercent" id="vatpercent-${i}"  type="number" min="0" class="form-control"  /></td>
      <td   class="col-md-2 p-0"><input onkeypress="createnewsalesbox(event)" name="amount" id="amount-${i}" type="text" class="form-control text-center" readonly  required /></td>
    </tr>`)
}

$(document).on('input', '[id^=quantity-]', function(e) {
    console.log(e.target.value);
    var targetid = e.target.id.split('-')[1];
    var amountlist = $("[id^=amount-");
    var totalamount = Number(0);
    $(`#amount-${targetid}`).val($(`#rate-${targetid}`).val() * $(`#quantity-${targetid}`).val());
    for (i = 0; i < amountlist.length; i++) {
        totalamount = totalamount + Number($(amountlist).eq(i).val());
    }
    console.log("Totalamount is" + totalamount);
    console.log("TYpe of " + typeof(totalamount))

    if (Number(totalamount) > 0) {
        $('#totalamount').val(totalamount);
    } else {
        $('#totalamount').val(0);

    }
    // $('#totalamount').val(totalamount);

    $(`#amount-${targetid}`).val($(`#rate-${targetid}`).val() * $(`#quantity-${targetid}`).val());
ondvchange();

})
$(document).on('input', '[id^=rate-]', function(e) {
    var targetid = e.target.id.split('-')[1];
    console.log(e.target.value);
    var amountlist = $("[id^=amount-");

    var totalamount = 0;

    $(`#amount-${targetid}`).val($(`#rate-${targetid}`).val() * $(`#quantity-${targetid}`).val());
    for (i = 0; i < amountlist.length; i++) {
        totalamount = totalamount + Number($(amountlist).eq(i).val());
    }
    console.log("TYpe of " + typeof(totalamount))
    console.log("Totalamount is" + totalamount);

    if (Number(totalamount) > 0) {
        $('#totalamount').val(totalamount);
    } else {
        $('#totalamount').val(0);

    }

    $(`#amount-${targetid}`).val($(`#rate-${targetid}`).val() * $(`#quantity-${targetid}`).val());
    ondvchange();

})

function createnewsalesbox(e) {
    e.preventDefault();
    var i = Number(e.target.id.split('-')[1]) + 1;
    console.log('Pressed');
    if (e.altKey && e.key === "c") {
        console.log("EJ");
        $('#totalamount').focus();
    }
    // if(e.keyCode===13)
    // {
    if ($(`#itemname-${i}`).length === 0 && e.keyCode ===
        13) {

        $('.salestable').append(`<tr  class=" m-0 row row-${i} text-center extraadded1">
       
      <td  class="col-md-4 p-0"><input required list="itemnamelist" class="form-control" name="itemname" id="itemname-${i}" type="text" required oninvalid="this.setCustomValidity('Item not in the list!!')"/></td>
      <td  class="col-md-1 p-0"><input required  name="quantity" id="quantity-${i}" class="form-control" min="0" type="number"  /></td>
      <td  class="col-md-2 p-0"><input required name="rate" id="rate-${i}"  type="number" min="0" class="form-control"  /></td>
      <td   class="col-md-1 p-0"><input autocomplete="off" list="unitlist" name="units" id="units-${i}"  type="text"  class="form-control" required /></td>
      <td  class="col-md-1 p-0"><input required name="discountpercent" id="discountpercent-${i}"  type="number" min="0" class="form-control"  /></td>
      <td  class="col-md-1 p-0"><input required name="vatpercent" id="vatpercent-${i}"  type="number" min="0" class="form-control"  /></td>
      <td   class="col-md-2 p-0"><input onkeypress="createnewsalesbox(event)" name="amount" id="amount-${i}" type="text" class="form-control text-center" readonly  required /></td>
    </tr>`)

    }
  }

    var itemcheck = 0;
    var itemalertshow = 0;
    $(document).on('input', '[id^=discountpercent-],[id^=vatpercent-]', function(e) {

        var discountpercentlist=$("[id^=discountpercent-]");
        
            var vatpercentlist=$("[id^=vatpercent-]");
            var vatamount=0;
            var discountamount=0;
            var totalamountcheck=0;
            var newid;
            $.each(discountpercentlist,function(i,result)
            {
                 newid= $(result).attr("id").split('-')[1];

                
                var discountpercent=$(result).val();
                console.log(discountpercent);
                var totalamount=$(`#amount-${newid}`).val();
                console.log(totalamount);
                totalamountcheck=Number(totalamountcheck)+Number(totalamount);
               
                if(Number(discountpercent)>0)
                {
           
                discountamount=Number(discountamount)+(Number(discountpercent)/Number(100))*Number(totalamount);
                console.log(discountamount);
                }
            })
        

            $.each(vatpercentlist,function(i,result)
            {
                var id= $(result).attr("id").split('-')[1];
                var vatpercent=Number($(result).val());
                var discountpercentcheck = Number($(`#discountpercent-${id}`).val());
                console.log(discountpercentcheck);
                var totalamount=Number($(`#amount-${id}`).val());
                console.log(totalamount);
                if(Number(vatpercent)>0)
                {
                vatamount=Number(vatamount)+(vatpercent/100) * (totalamount-(discountpercentcheck/100)*totalamount);
               
                }
            })
   
            discountamount=discountamount.toFixed(2);
            vatamount= vatamount.toFixed(2);
            if(discountamount>0)
            {
             $("#discountamount").val(discountamount); 

            }
            if(vatamount>0)
            {
                $("#vatamount").val(vatamount); 
            }
            var finaltotalamount = Number(totalamountcheck) + Number(vatamount) - Number(discountamount);
            finaltotalamount= finaltotalamount.toFixed(2);
            if(finaltotalamount>0)
            {
                $("#grandtotalamount").val(finaltotalamount); 

            }
           
    })

    function ondvchange()
    {
        
        var discountpercentlist=$("[id^=discountpercent-]");
        
            var vatpercentlist=$("[id^=vatpercent-]");
            var vatamount=0;
            var discountamount=0;
            var totalamountcheck=0;
            var newid;
            $.each(discountpercentlist,function(i,result)
            {
                 newid= $(result).attr("id").split('-')[1];

                
                var discountpercent=$(result).val();
                console.log(discountpercent);
                var totalamount=$(`#amount-${newid}`).val();
                console.log(totalamount);
                totalamountcheck=Number(totalamountcheck)+Number(totalamount);
               
                if(Number(discountpercent)>0)
                {
           
                discountamount=Number(discountamount)+(Number(discountpercent)/Number(100))*Number(totalamount);
                console.log(discountamount);
                }
            })
        

            $.each(vatpercentlist,function(i,result)
            {
                var id= $(result).attr("id").split('-')[1];
                var vatpercent=Number($(result).val());
                var discountpercentcheck = Number($(`#discountpercent-${id}`).val());
                console.log(discountpercentcheck);
                var totalamount=Number($(`#amount-${id}`).val());
                console.log(totalamount);
                if(Number(vatpercent)>0)
                {
                vatamount=Number(vatamount)+(vatpercent/100) * (totalamount-(discountpercentcheck/100)*totalamount);
               
                }
            })
   
            discountamount=discountamount.toFixed(2);
            vatamount= vatamount.toFixed(2);
            if(discountamount>0)
            {
             $("#discountamount").val(discountamount); 

            }
            if(vatamount>0)
            {
                $("#vatamount").val(vatamount); 
            }
            var finaltotalamount = Number(totalamountcheck) + Number(vatamount) - Number(discountamount);
            finaltotalamount= finaltotalamount.toFixed(2);
            if(finaltotalamount>0)
            {
                $("#grandtotalamount").val(finaltotalamount); 

            }
    }
    $(document).on('focusout', '[id^=itemname-]', function(e) {


        // $('[id^=itemname-]').focusout(function(e)
             // {
        var checkid=e.target.id.split('-')[1];
        var itemnamelength= e.target.value.length;
            if(itemnamelength===0 && $("#itemname-1").val().length > 0)
            {
                $(`tr.row-${checkid}`).remove();

                $("table.salestablefinal tr").remove();

            var discountpercentlist=$("[id^=discountpercent-]");
            var vatpercentlist=$("[id^=vatpercent]");
            var vatamount=0;
            var discountamount=0;
            var totalamountcheck=0;
            $.each(discountpercentlist,function(i,result)
            {
                var id= $(result).attr("id").split('-')[1];
                var discountpercent=$(result).val();
                console.log(discountpercent);
                var totalamount=$(`#amount-${id}`).val();
                console.log(totalamount);
                totalamountcheck=Number(totalamountcheck)+Number(totalamount);
               
                if(Number(discountpercent)>0)
                {
           
                discountamount=Number(discountamount)+(Number(discountpercent)/Number(100))*Number(totalamount);
                console.log(discountamount);
                }
            })
        

            $.each(vatpercentlist,function(i,result)
            {
                var id= $(result).attr("id").split('-')[1];
                var vatpercent=Number($(result).val());
                var discountpercentcheck = Number($(`#discountpercent-${id}`).val());
                console.log(discountpercentcheck);
                var totalamount=Number($(`#amount-${id}`).val());
                console.log(totalamount);
                if(Number(vatpercent)>0)
                {
                vatamount=Number(vatamount)+(vatpercent/100) * (totalamount-(discountpercentcheck/100)*totalamount);
               
                }
            })
   
            discountamount=discountamount.toFixed(2);
            vatamount= vatamount.toFixed(2);
            if(discountamount>0)
            {
                $('.salestablefinal').append(`<tr  class=" m-0 row text-center extraadded1">
               
                <td  class="col-md-4 p-0"><input required value="Discount amount" class="form-control" name="itemname" id="dvname-${i}" type="text" required oninvalid="this.setCustomValidity('Item not in the list!!')"/></td>
                <td  class="col-md-1 p-0"><input required  name="quantity" id="quantity-${i}" class="form-control bg-white" min="0" type="number" disabled /></td>
                <td  class="col-md-2 p-0"><input required name="rate" id="rate-${i}"  type="number" min="0" class="form-control"  /></td>
                <td   class="col-md-1 p-0"><input autocomplete="off" list="unitlist" name="units" id="units-${i}"  type="text"  class="form-control" required /></td>
                <td  class="col-md-1 p-0"><input required name="discountpercent" id="discountpercent-${i}" disabled  type="number" min="0" class="form-control bg-white"  /></td>
                <td  class="col-md-1 p-0"><input required name="vatpercent" id="vatpercent-${i}"  type="number" disabled min="0" class="form-control bg-white"  /></td>
                <td   class="col-md-2 p-0"><input onkeypress="createnewsalesbox(event)" name="amount" id="amount-${i}" type="text" class="form-control text-center" readonly value="${discountamount}"  required /></td>
              </tr>`)

            }
            if(vatamount>0)
            {

                $('.salestablefinal').append(`<tr  class=" m-0 row text-center extraadded1">
               
                <td  class="col-md-4 p-0"><input required value="VAT amount" class="form-control" name="itemname" id="dvname-${i}" type="text" required oninvalid="this.setCustomValidity('Item not in the list!!')"/></td>
                <td  class="col-md-1 p-0"><input required  name="quantity" id="quantity-${i}" class="form-control bg-white" min="0" type="number" disabled /></td>
                <td  class="col-md-2 p-0"><input required name="rate" id="rate-${i}"  type="number" min="0" class="form-control"  /></td>
                <td   class="col-md-1 p-0"><input autocomplete="off" list="unitlist" name="units" id="units-${i}"  type="text"  class="form-control" required /></td>
                <td  class="col-md-1 p-0"><input required name="discountpercent" id="discountpercent-${i}" disabled  type="number" min="0" class="form-control bg-white"  /></td>
                <td  class="col-md-1 p-0"><input required name="vatpercent" id="vatpercent-${i}"  type="number" disabled min="0" class="form-control bg-white"  /></td>
                <td   class="col-md-2 p-0"><input onkeypress="createnewsalesbox(event)" name="amount" id="amount-${i}" type="text" class="form-control text-center" readonly value="${vatamount}"  required /></td>
              </tr>`)
            }
            var finaltotalamount = Number(totalamountcheck) + Number(vatamount) - Number(discountamount);
            finaltotalamount= finaltotalamount.toFixed(2);
            if(finaltotalamount>0)
            {
                
                $('.salestablefinal').append(`<tr  class=" m-0 row text-center extraadded1">
               
                <td  class="col-md-4 p-0"><input required value="Total amount" class="form-control" name="itemname" id="dvname-${i}" type="text" required oninvalid="this.setCustomValidity('Item not in the list!!')"/></td>
                <td  class="col-md-1 p-0"><input required  name="quantity" id="quantity-${i}" class="form-control bg-white" min="0" type="number" disabled /></td>
                <td  class="col-md-2 p-0"><input required name="rate" id="rate-${i}"  type="number" min="0" class="form-control"  /></td>
                <td   class="col-md-1 p-0"><input autocomplete="off" list="unitlist" name="units" id="units-${i}"  type="text"  class="form-control" required /></td>
                <td  class="col-md-1 p-0"><input required name="discountpercent" id="discountpercent-${i}" disabled  type="number" min="0" class="form-control bg-white"  /></td>
                <td  class="col-md-1 p-0"><input required name="vatpercent" id="vatpercent-${i}"  type="number" disabled min="0" class="form-control bg-white"  /></td>
                <td   class="col-md-2 p-0"><input onkeypress="createnewsalesbox(event)" name="amount" id="amount-${i}" type="text" class="form-control text-center" readonly value="${finaltotalamount}"  required /></td>
              </tr>`)
            }
               
            }
        console.log("Itemname is " + e.target.value);
        var itemnameentered = e.target.value;
        var targetid = e.target.id.split('-')[1];
        var itemlist = $("#itemnamelist option");
        for (i = 0; i < itemlist.length; i++) {
            // console.log($(itemlist).eq(i).val())
            if (itemnameentered === $(itemlist).eq(i).val()) {
                itemcheck = 1;

            }
        }
        if (itemcheck === 1) {
            console.log("ok");
            itemcheck = 0;
            if ($(`#itemname-${targetid}`).hasClass('bg-danger')) {
                $(`#itemname-${targetid}`).removeClass('bg-danger');
            }
            if (!$(`#itemname-${targetid}`).hasClass('bg-white')) {
                $(`#itemname-${targetid}`).addClass('bg-white');
                $(`#itemname-${targetid}`).next('p').remove();

            }
            // $( `#itemname-${targetid}`).addClass('bg-white');

        } else {
            if ($(`#itemname-${targetid}`).hasClass('bg-white')) {
                $(`#itemname-${targetid}`).removeClass('bg-white');

            }
            // $( `#itemname-${targetid}`).removeClass('bg-white');

            if (!$(`#itemname-${targetid}`).hasClass('bg-danger')) {
                $(`#itemname-${targetid}`).addClass('bg-danger');
                $(`#itemname-${targetid}`).after('<p>Item not in the list</p>');

            }
            // $( `#itemname-${targetid}`).addClass('bg-danger');


            // console.log("A is "+a);

            $(`#itemname-${targetid}`).focus();



        }

    })
    $('#salespurchasetransaction').on('keyup', 'input', function(zEvent) {

        var self = $(this),
            form = self.parents('form:eq(0)'),
            focusable, next, prev;

        // if (zEvent.shiftKey) {
        if (zEvent.keyCode == 8) {

            focusable = form.find('input,a,select,button,textarea').filter(':enabled');
            console.log(this);
            if (this.value.length === 0) {

                prev = focusable.eq(focusable.index(this) - 1);

                if (prev.length) {
                    prev.focus();
                } else {
                    form.submit();
                }
            }
        }
        // } else
        if (zEvent.keyCode == 13) {
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
    });

    // $('#salespurchasetransaction').on('keydown', 'input', function(e) {

    //     var self = $(this),
    //         form = self.parents('form:eq(0)'),
    //         focusable, next, prev;

    //     if (e.shiftKey) {
    //         if (e.keyCode == 13) {

    //             focusable = form.find('input,a,select,button,textarea').filter(':enabled');
    //             prev = focusable.eq(focusable.index(this) - 1);

    //             if (prev.length) {
    //                 prev.focus();
    //             } else {
    //                 form.submit();
    //             }
    //         }
    //     } else
    //     if (e.keyCode == 13) {
    //         // e.preventDefault();
    //         // $('[id^=accountlist]').html('');



    //         focusable = form.find('input,a,select,button,textarea').filter(':enabled');
    //         next = focusable.eq(focusable.index(this) + 1);
    //         console.log(next);

    //         if (next.length) {
    //             next.focus();
    //             next.select();
    //         } else {
    //             form.submit();
    //         }
    //         return false;
    //     }
    // });




    // $('#itemModal').on('shown.bs.modal', function() {
    //     console.log("Entered");
    //      $('#itemModal').find('input').eq(0).focus();
    //     // $(this).find('[autofocus]').get(1).focus();
    // });
    // $('#itemgroupModal').on('shown.bs.modal', function() {
    //     console.log("Entered");
    //      $(this).find('input').eq(0).focus();

    //     // $(this).find('[autofocus]').focus();
    // });


    function purchasesubmit() {

 if($("#transactiontitle1").text()==='Purchase')
 {
        var purchaseform = $("#salespurchasetransaction").serializeArray();

        console.log($("#salespurchasetranscation").serializeArray());
        // console.log("payment submit is "+purchaseform);
        var o = {};
        // var op = [];
        var transactiontitle = $("#transactiontitle1").text();
        var transactionno = $('#transactionno1').text();
        var purchasedate = $('#datemodify').val();
        // var narration= $('#narration').val();
        $.each(purchaseform, function(i, input) {
            if (!o[input.name]) {
                o[input.name] = [];
               
            }
        });
         o['transactionno'] = [];
        o['purchasedate'] = [];
        $.each(purchaseform, function(i, input) {

            if (o[input.name]) {
                o[input.name].push(input.value);
            } else {
                o[input.name] = input.value;
            }
        });


        var lengthofname = o['itemname'].length;

        for (i = 0; i < lengthofname; i++) {
            o['transactionno'].push(transactionno);
            o['purchasedate'].push(purchasedate);
        }
        console.table(o);

        var purchasedetails = [[transactionno,"Discount amount", $('#discountamount').val(), purchasedate],[transactionno,"VAT amount", $('#vatamount').val(), purchasedate],[transactionno,$('#accountname').val(),$('#grandtotalamount').val(),purchasedate]];

        $.ajax({
            type: 'post',
            url: '/purchasesubmit',
            data: { o: o, purchasedetails: purchasedetails },
            async: false,
            error: function(data) {
                // var data=JSON.parse(data);
                alert("Transaction didn't get completed. Please try again.")
                // console.log(data.result);
            },
            success: function(data) {
                console.log(data);
                purchaseno=purchaseno+1;
                $('#transactionno1').text(Number(purchaseno)+1)
                $('.resetpurchase').click();
                $('.extraadded1').remove();
                $('#salespurchasetransaction').trigger('reset');

                // $('.salestable td input').attr('disabled', 'disabled');

                $('#totalamount').val('0');
            }

        });


}
else
{
   var salesform = $("#salespurchasetransaction").serializeArray();

        console.log($("#salespurchasetranscation").serializeArray());
        // console.log("payment submit is "+purchaseform);
        var o = {};
        // var op = [];
        var transactiontitle = $("#transactiontitle1").text();
        var transactionno = $('#transactionno1').text();
        var salesdate = $('#datemodify').val();
        // var narration= $('#narration').val();
        $.each(salesform, function(i, input) {
            if (!o[input.name]) {
                o[input.name] = [];
               
            }
        });
         o['transactionno'] = [];
        o['salesdate'] = [];
        $.each(salesform, function(i, input) {

            if (o[input.name]) {
                o[input.name].push(input.value);
            } else {
                o[input.name] = input.value;
            }
        });


        var lengthofname = o['itemname'].length;

        for (i = 0; i < lengthofname; i++) {
            o['transactionno'].push(transactionno);
            o['salesdate'].push(salesdate);
        }
        console.table(o);

        var salesdetails = [[transactionno,"Discount amount", $('#discountamount').val(), salesdate],[transactionno,"VAT amount", $('#vatamount').val(), salesdate],[transactionno,$('#accountname').val(),$('#grandtotalamount').val(), salesdate]];
        

        $.ajax({
            type: 'post',
            url: '/salessubmit',
            data: { o: o, salesdetails: salesdetails },
            async: false,
            error: function(data) {
                // var data=JSON.parse(data);
                alert("Transaction didn't get completed. Please try again.")
                // console.log(data.result);
            },
            success: function(data) {
                console.log(data);
                salesno=Number(salesno)+1;
                $('#transactionno1').text(salesno);
                $('.resetpurchase').click();
                $('.extraadded1').remove();
                $("#salespurchasetransaction").trigger('reset');

                // $('.salestable td input').attr('disabled', 'disabled');

                $('#totalamount').val('0');
            }

        });


}
        // var a= JSON.stringify(paymentform);
        // console.log(a);
    }

  