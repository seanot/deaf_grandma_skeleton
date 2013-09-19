$(document).ready(function() {
    // bind to form submission
    $('#grandma').submit(function(event){
        // preventDefault
        event.preventDefault();

        // get url and data from form
        var url = $(this).attr('action');
        var data = $(this).serialize();

        // post url and data
        $.post(url, data, function(response){
            // receive data back from server
            // parse desired data from returned data
            var p = $(response).find('p');

            // remove existing paragraphs
            $('p').remove();
            
            // add paragraph from response
            $('h1').after(p);

        });

        // clear the form
        this.reset();

    })

});