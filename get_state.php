<?php  ob_start(); session_start(); 
require('db/config.php'); //database Connection ?>
 <?php
if(isset($_POST['stateId'])){
    foreach($db->query("SELECT * FROM states WHERE country_id ='".$_POST['stateId']."' ")as $st){?>
        <option value="<?php  echo $st['name']; ?>" id="<?php echo $st['name']; ?>"><?php  echo $st['name']; ?></option>
<?php  } }?>


<?php if(isset($_POST['stateIdN'])){ echo "<option> Choose State </option>";
    foreach($db->query("SELECT * FROM state  ")as $st){?>
        <option value="<?php  echo $st['name']; ?>" id="<?php echo $st['id']; ?>"><?php  echo $st['name']; ?></option>
<?php  } }?>


<?php if(isset($_POST['stateIdLGA'])){ echo "<option> Choose LGA </option>";
    foreach($db->query("SELECT * FROM local_governments where state_id ='".$_POST['stateIdLGA']."'  ")as $st){?>
        <option value="<?php  echo $st['name']; ?>"><?php  echo $st['name']; ?></option>
<?php  } }?>

