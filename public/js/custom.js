/** Start of Add/Remove Input TextBox **/
$(document).ready(function() {

    var MaxInputsObat = 20; //maximum input boxes allowed
    var InputsWrapper = $("#ObatWrapper input"); //Input boxes wrapper ID
    var AddButton = "#AddMoreObat"; //Add button ID

    var x = InputsWrapper.length; //initlal text box count
    var FieldCount = 1; //to keep track of text box added
	var boxName="Obat "+FieldCount; 
    $(AddButton).click(function (e) //on add input button click
    {
        e.preventDefault()	;
        InputsWrapper = $("#ObatWrapper input");
        x = InputsWrapper.length;
        console.log(x + '  ' + MaxInputsObat);
        if (x < MaxInputsObat) //max input box allowed
        {
			
            FieldCount++; //text box added increment
			var boxName="Obat "+FieldCount; 
            //add input box
            $(InputsWrapper).parents('#ObatWrapper').append('<div class="ObatRemove"><div class="input-group form-group form-group-default"><label>'+boxName+'</label><input id="obat" onclick="openKCFinder(this)" class="form-control" type="text" name="obat[]"/><a href="#" class="removeclassObat input-group-addon danger"><i class="fa fa-minus"></i></a></div></div>');
            x++; //text box increment
			
        }
        return false;
    });

    $("body").on("click", ".removeclassObat", function (e) { //user click on remove text
        console.log(x);
        if (x > 1) {
            $(this).parents('.ObatRemove').remove(); //remove text box
            x--; //decrement textbox
        }
        return false;
    })

});
/** End Of Add/Remove Input TextBox **/