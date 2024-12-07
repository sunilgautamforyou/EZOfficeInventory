$(document).ready(function() {

    // Custom Scrollbar

    if ($(window).outerWidth() > 992) {
        $("nav.side-navbar").mCustomScrollbar({
            scrollInertia: 200
        });
    }

    // Main Template Color
    var brandPrimary = '#33b35a';

    // Side Navbar Functionality
    $('#toggle-btn').on('click', function(e) {

        e.preventDefault();

        if ($(window).outerWidth() > 1194) {
            $('nav.side-navbar').toggleClass('shrink');
            $('.page').toggleClass('active');
        } else {
            $('nav.side-navbar').toggleClass('show-sm');
            $('.page').toggleClass('active-sm');
        }
    });

    // Material Inputs

    var materialInputs = $('input.input-material');

    // activate labels for prefilled values
    materialInputs.filter(function() {
        return $(this).val() !== "";
    }).siblings('.label-material').addClass('active');

    // move label on focus
    materialInputs.on('focus', function() {
        $(this).siblings('.label-material').addClass('active');
    });

    // remove/keep label on blur
    materialInputs.on('blur', function() {
        $(this).siblings('.label-material').removeClass('active');

        if ($(this).val() !== '') {
            $(this).siblings('.label-material').addClass('active');
        } else {
            $(this).siblings('.label-material').removeClass('active');
        }
    });

});


//JS for Wizard

$(document).ready(function() {

    function scroll_to_class(element_class, removed_height) {
        var scroll_to = $(element_class).offset().top - removed_height;
        if ($(window).scrollTop() != scroll_to) {
            $('html, body').stop().animate({ scrollTop: scroll_to }, 0);
        }
    }

    function bar_progress(progress_line_object, direction) {
        var number_of_steps = progress_line_object.data('number-of-steps');
        var now_value = progress_line_object.data('now-value');
        var new_value = 0;
        if (direction == 'right') {
            new_value = now_value + (100 / number_of_steps);
        } else if (direction == 'left') {
            new_value = now_value - (100 / number_of_steps);
        }
        progress_line_object.attr('style', 'width: ' + new_value + '%;').data('now-value', new_value);
    }

    //Fullscreen background

    $('#top-navbar-1').on('shown.bs.collapse', function() {
        $.backstretch("resize");
    });

    // Form

    $('.f1 fieldset:first').fadeIn('slow');

    $('.f1 input[type="text"], .f1 input[type="password"], .f1 textarea').on('focus', function() {
        $(this).removeClass('input-error');
    });

    // next step

    $('.f1 .btn-next').on('click', function() {
        console.log("btn-next");
        var parent_fieldset = $(this).parents('fieldset');
        var next_step = true;

        // navigation steps / progress steps

        var current_active_step = $(this).parents('.f1').find('.f1-step.active');
        var progress_line = $(this).parents('.f1').find('.f1-progress-line');


        // fields validation

        if (next_step) {
            parent_fieldset.fadeOut(400, function() {
                // change icons
                current_active_step.removeClass('active').addClass('activated').next().addClass('active');
                // progress bar
                bar_progress(progress_line, 'right');
                // show next step
                $(this).next().fadeIn();
                // scroll window to beginning of the form
                scroll_to_class($('.f1'), 20);
            });
        }

    });


    // previous step
    $('.f1 .btn-previous').on('click', function() {
        console.log("btn-previous");
        // navigation steps / progress steps
        var current_active_step = $(this).parents('.f1').find('.f1-step.active');
        var progress_line = $(this).parents('.f1').find('.f1-progress-line');

        $(this).parents('fieldset').fadeOut(400, function() {
            // change icons
            current_active_step.removeClass('active').prev().removeClass('activated').addClass('active');
            // progress bar
            bar_progress(progress_line, 'left');
            // show previous step
            $(this).prev().fadeIn();
            // scroll window to beginning of the form
            scroll_to_class($('.f1'), 20);
        });
    });


    $('.f1 .f1-step').on('click', function() {
        if ($(this).hasClass('activated')) {
            //console.log($(this).index());
            var current_active_step = $(this).parents('.f1').find('.f1-step.active');
            var progress_line = $(this).parents('.f1').find('.f1-progress-line');


            var new_active_step = $(this);
            var new_active_index = new_active_step.index('.f1-step');
            var current_active_index = current_active_step.index('.f1-step');


            $(".f1 fieldset").eq(current_active_index).fadeOut(400);
            $(".f1 fieldset").eq(new_active_index).fadeIn(400);

            current_active_step.addClass('activated').removeClass('active');
            new_active_step.removeClass('activated').addClass('active');

            //bar_progress(progress_line, 'left');
        }
    });



    // submit
    $('.f1').on('submit', function(e) {
        console.log("btn-sbmit");
        // fields validation
        $(this).find('input[type="text"], input[type="password"], textarea').each(function() {
            if ($(this).val() == "") {
                e.preventDefault();
                $(this).addClass('input-error');
            } else {
                $(this).removeClass('input-error');
            }
        });
        // fields validation
    });



});





//Add class on button

$(".nav-tabs li:first-child").click(function() {
    $(".skip").addClass("deactive-btn");
    //$(".cancel-btn").removeClass("deactive-btn");
});

$(".nav-link").click(function() {
    $("button").removeClass("deactive-btn");
    //$(".cancel-btn").addClass("deactive-btn");
});



//JS function called for Data Table

$(document).ready(function() {
    $('#example').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'colvis'
        ]
    });
//JS function CHECK ALL and clear all exmaples
    function myFunction(mycheck, mycheck1) {
        var checkBox = document.getElementById("myCheck");
        var text = document.getElementById("showing");
        if (checkBox.checked == true) {
            showing.style.display = "block";
        } else {
            text.style.display = "none";
        }
        var checkBox = document.getElementById("myCheck1");
        var text = document.getElementById("showing1");
        if (checkBox.checked == true) {
            showing1.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    //JS function multipule model pop up issue fixed
    var modal_counter = 0;
    $(document).ready(function () {
        $('.modal').on('shown.bs.modal', function () {
            modal_counter++;
        });
        $('.modal').on('hidden.bs.modal', function () {
            modal_counter--;
            if (modal_counter) {
                $('body').addClass('modal-open');
            }
            else {
                $('body').removeClass('modal-open');
            }
        });
    })
    //JS function custom date picker
    
  

});


$(document).ready(function() {
    $('#example2').DataTable();
    $('#example3').DataTable();
    $('#example4').DataTable();
    $('#example5').DataTable();
    $('#example6').DataTable();
    $('#example7').DataTable();
    $('#example8').DataTable();
    $('#example9').DataTable();
    $('#example10').DataTable();
    $('#example11').DataTable();
    $('#example12').DataTable();
    $('#example13').DataTable();
    $('#example14').DataTable();
    $('#example15').DataTable();
    $('#example16').DataTable();
    $('#example17').DataTable();
    $('#example18').DataTable();
    $('#example19').DataTable();
    $('#example20').DataTable();
    $('#example21').DataTable();
    $('#example22').DataTable();
    $('#example23').DataTable();
    $('#example24').DataTable();
    $('#example25').DataTable();
});

$(document).ready(function(){
    $(".datepik").datepicker();
});
