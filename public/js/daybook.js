

	$("[id^=month]").click(function(e)
{
var month =event.target.id.split('-')[1];
console.log(month);
var monthdata=$('.month');
// if(monthdata=month)
// {
// 	$('month')
// }

var monthlength=0;
for(i=0;i<monthdata.length;i++)
{
if($('.month').eq(i).attr('data-month')==month)
{
	monthlength=monthlength+1;
}
}

console.log(monthlength);
console.log(monthdata.length);
if(monthlength==0)
{
	$('.table-header').hide();
	$('.nodata').show();
}
for(i=0;i<monthdata.length;i++)
{
if($('.month').eq(i).attr('data-month')==month)
{
	$('.table-header').show();

	$('.month').eq(i).show();
	$('.month-total').eq(i).show();
	$('.month-row').eq(i).show();
	$('.nodata').hide();



}
else
{
	$('.month').eq(i).hide();
	$('.month-total').eq(i).hide();
	$('.month-row').eq(i).hide();



}


}


})

var prjalready=false;
var purchasealready= false;
var salesalready=false;

$("#daybookform").on('submit',function(e)
{
	if(!$('#daybookform').valid()) return;
var initialdate=$('#daybookinitialdate').val();
var finaldate= $('#daybookfinaldate').val();
$.ajax({
	url:'/daybook',
	type:'post',
	async:false,
	data:{initialdate:initialdate,finaldate:finaldate},
	success:function(data)
	{
		console.log(data.daybook);
		var daybookprj= data.daybookprj;
		var daybookpurchase=data.daybookpurchase;
		var daybooksales=data.daybooksales;		
	

	console.log(daybookprj);
	$('.daybookdiv').html('');
		var table=`<div class="table-responsive" style="max-height:400px; overflow-y:scroll;"><table style="color:black !important;" class="table table-sm table-hover table-condensed"><tr><th>Date</th><th>Particulars</th><th>Vch. Type</th><th>Vch. no</th><th>Debit Amount</th><th>Credit Amount</th></tr>`;

		if ( Array.isArray(daybookprj) && daybookprj.length) 
		{
			for(var i=0;i<daybookprj.length;i++)
		{
			
			
			for(var m=0;m<i;m++)
			{
				
			if(daybookprj[i].vouchertype===daybookprj[m].vouchertype && parseInt(daybookprj[i].transactionno)=== parseInt(daybookprj[m].transactionno) )	
			{
			
				prjalready=true;
				
			}
			}
			
if(prjalready===false)
{
	
if(daybookprj[i].dctype==='c')
		{
		table+=`<tr><td>${daybookprj[i].paymentdate}</td><td>${daybookprj[i].account}</td><td>${daybookprj[i].vouchertype}</td><td>${daybookprj[i].transactionno}</td><td></td><td>${daybookprj[i].dcamount}</td></tr>`;
		


		}
		else
		{
			table+=`<tr><td>${daybookprj[i].paymentdate}</td><td>${daybookprj[i].account}</td><td>${daybookprj[i].vouchertype}</td><td>${daybookprj[i].transactionno}</td><td>${daybookprj[i].dcamount}</td><td></td></tr>`;
	
		}
	}
	prjalready=false;
}

		}

		if ( Array.isArray(daybookpurchase) && daybookpurchase.length) 
		{
			for(var i=0;i<daybookpurchase.length;i++)
		{
			for(var m=0;m<i;m++)
			{
				
			if(daybookpurchase[i].vouchertype===daybookpurchase[m].vouchertype && parseInt(daybookpurchase[i].transactionno)=== parseInt(daybookpurchase[m].transactionno) )	
			{
			
				purchasealready=true;
				
			}
			}
if(purchasealready===false)
		{
			table+=`<tr><td>${daybookpurchase[i].purchasedate}</td><td>${daybookpurchase[i].accountname}</td><td>${daybookpurchase[i].vouchertype}</td><td>${daybookpurchase[i].purchaseno}</td><td></td><td>${daybookpurchase[i].totalamount}</td></tr>`;
		}
		purchasealready=false;
		
	}
}
	if ( Array.isArray(daybooksales) && daybooksales.length) 
	{
		for(var i=0;i<daybooksales.length;i++)
	{

		for(var m=0;m<i;m++)
		{
			
		if(daybooksales[i].vouchertype===daybooksales[m].vouchertype && parseInt(daybooksales[i].transactionno)=== parseInt(daybooksales[m].transactionno) )	
		{
		
			salesalready=true;
			
		}
		}
		if(salesalready===false)
	{
		table+=`<tr><td>${daybooksales[i].salesdate}</td><td>${daybooksales[i].accountname}</td><td>${daybooksales[i].vouchertype}</td><td>${daybooksales[i].salesno}</td><td>${daybooksales[i].totalamount}</td><td></td></tr>`;
	}
	salesalready=false;
	
}



}
		$('.daybookdiv').append(table);
		alert(table);
	},
	error:function(data)
	{
		alert("Error");
	}
})
e.preventDefault();

})




var gc = $.calendars.instance('gregorian', 'fr');
var currentdate = gc.newDate();
var currenttime = new Date();
var currenttime = currenttime.toLocaleTimeString();
$('#daybookinitialdate').calendarsPicker({calendar: $.calendars.instance('gregorian'),dateFormat: 'yyyy-mm-dd'})
$('#daybookfinaldate').calendarsPicker({calendar: $.calendars.instance('gregorian'),dateFormat: 'yyyy-mm-dd'});
