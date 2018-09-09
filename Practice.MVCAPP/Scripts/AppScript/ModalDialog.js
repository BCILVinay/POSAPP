function setDialogLink(element, dialogTitle, dialogHeight, dialogWidth, updateTargetId, updateUrl) {
    //Wireup the click event of any url .
    element.on('click', function () {
        debugger;
        // Generate Unique id for element
        var dialogId = "uniqueName-" + Math.floor(Math.random() * 1000);
        var dialogDiv = "<div id ='" + dialogId + "'>  </div>"

        // load the form into the  dialog div.
        $(dialogDiv).load(this.href, function () {
            debugger;
            $(this).dialog({

                modal: true,
                resizable: false,
                title: dialogTitle,
                height: dialogHeight,
                width: dialogWidth,
                buttons: {
                    "Save": function () {
                        //Manually submit the form.

                        var form = $('form', this);
                             $(form).submit();
                        

                    },

                    "Cancel": function () {

                        $(this).dialog('close');
                    }
                },
                close: function () {

                    // It turns out that closing a jQuery UI dialog
                    // does not actually remove the element from the
                    // page but just hides it. For the server side 
                    // validation tooltips to show up you need to
                    // remove the original form the page

                    $(dialogId).remove();

                }

            });

            // Enable client side validation

            $.validator.unobtrusive.parse(this);

            // Setup the Ajax submit logic.
            debugger;
            wireUpForm(this, updateTargetId, updateUrl);

        });

        return false;

    })
}

// Second function for Ajax Submit logic.

function wireUpForm(dialog, upadteTargetId, UpdateUrl) {
    debugger;
    $('form', dialog).submit(function () {

        //Do not the submit if the form
        //Does not pass client side validation.

        if (!$(this).valid())
            return false;

        // Client side val,idation passed, then submit the form
        // using the Jquery.ajax form

        $.ajax({

            url: this.action,
            type: this.method,
            data: $(this).serialize(),
            success: function (result) {
                //check weather the post was successfull.
                if (result.success) {

                    //close the dialog
                    $(dialog).dialog('close');
                    
                    //reload the update data into target div.
                    $("#" + upadteTargetId).load(UpdateUrl);
                   // $("#"+upadteTargetId).load(UpdateUrl);

                }
                else {
                    // Reload the dialog to show model errors.
                    alert(UpdateUrl);
                    $(dialog).html(result);

                    // Enable client side validation
                    $.validator.unobtrusive.parse(dialog);
                    
                    //Set up the Ajax submit logic.
                    wireUpForm(dialog, upadteTargetId, UpdateUrl);
                   
                }
            }
            
        });
        
        return false;
    });

}