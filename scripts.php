<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <script type="text/javascript" src="jquery.min.js"></script>
  </head>
  <body>

    <!-- the html script for selection -->

    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
        <label for="country">Country</label>
        <select class="form-control " name="country" id="country" required="">
            <option value="">[Choose Country]</option> <?php foreach (QueryDB("SELECT * FROM countries WHERE status = 0  ") as $ct) { ?>
                <option value="<?php echo $ct['name']; ?>" id="<?php echo $ct['id']; ?>"><?php echo $ct['name']; ?></option> <?php  } ?>
        </select>
    </div>
    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2">
        <label class="control-label" for="lastname">State:</label><span class="required"> *</span>

        <select class="form-control " name="state" id="state" required="">
            <option value="">[Choose State]</option>
        </select>
    </div>
    <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 mb-2" id="lga2">
        <label class="control-label" id="" for="lastname">LGA: <span class="required"> *</span></label>
        <select class="form-control " name="lga" id="lga" required="">
            <option value="">[Choose LGA]</option>
        </select>
    </div>




    <script>
        $('#state').on('change', function() {
            //alert('Changed');
            var get_id = $(this).find('option:selected').attr('id');
            //alert(get_id);
            get_country = $("#country").val();
            // alert(get_id + get_country);
            if (get_country == 'Nigeria') {
                $('#lga').add();
                $('#lga2').add();
                $.ajax({
                    url: 'get_state',
                    type: 'POST',
                    data: {
                        stateIdLGA: get_id
                    },
                    success: function(result) {
                        $('#lga').html(result);
                    }
                });
            }
        })

        $("#country").on('change', function() {
            var getId = $(this).find('option:selected').attr('id');
            getValue = $(this).val();
            if (getValue == 'Nigeria') { //$('#postal').hide();
                // $('.stretch').removeClass('col-md-6');    $('.stretch').addClass('col-md-12');

                $.ajax({
                    url: 'get_state',
                    type: 'POST',
                    data: {
                        stateIdN: getId
                    },
                    success: function(result) {
                        $('#state').html(result);
                        // alert(result);
                    }
                });

            } else {
                $('#lga').remove();
                $('#lga2').remove();
                $.ajax({
                    url: 'get_state',
                    type: 'POST',
                    data: {
                        stateId: getId
                    },
                    success: function(result) {
                        $('#state').html(result);
                        // alert(result);
                    }

                });
            }


        });
    </script>
  </body>
  </html>
