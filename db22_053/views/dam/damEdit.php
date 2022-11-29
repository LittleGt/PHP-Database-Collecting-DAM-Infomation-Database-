
<style>
td {text-align: center; 
    padding-left: 30px;
    padding-right: 30px;}
p {font-size: 30px; text-align: center; }
a {font-size: 20px;}
table {margin: auto;}
*
{
text-align: center !important;
margin: auto !important;
}
</style>

<head>
    <meta charset="UTF-8">
</head>

<p>Dam Edit</p> 
<br>
<p style='font-size: 20px;'>Dam ID = <?php echo $dam->dam_id?> </p> 
<br><br>
<br>
<form method="get" action="">


<br>
<br>
<label>ชื่อเขื่อน <input type="text" name="dam_name" value="<?php echo $dam->dam_name ?>"/> </label><br><br>
<label>ชื่อเดิมเขื่อน <input type="text" name="original_name" value="<?php echo $dam->original_name ?>"/> </label><br><br>
<label>ความจุเขื่อน <input type="number" step="0.001" name="dam_capacity" value="<?php echo $dam->dam_capacity ?>"/> </label><br><br><br>
<label>เช็ค None หากไม่ต้องการใส่</label><br><br>
<label>แม่น้ำ:<select name="river_id">
        <?php foreach($riverList as $d)
        {

            echo "<option value=$d->river_id";
            if($d->river_id==$dam->river_id)
            {echo " = selected";}
            echo ">$d->river_name</option>";

        }?>
</select></label>
&nbsp;&nbsp;&nbsp;
<?php if( !is_null($dam->river_id))
{   echo "
    <input type='checkbox' id='river_id_c' name='river_id_c' value='Criver'  >
    <label for='river_id_c'> None</label><br>";
}else{
    echo "
    <input type='checkbox' id='river_id_c' name='river_id_c' value='Criver' checked  >
    <label for='river_id_c'> None</label><br>";
}?>


<br><br>
<label>ตำบล:<select name="district_id">
        <?php foreach($districtList as $d)
        {

            echo "<option value=$d->district_id";
            if($d->district_id==$dam->district_id)
            {echo " = selected";}
            echo ">$d->district_name</option>";

        }?>
</select></label>
&nbsp;&nbsp;&nbsp;

<?php if( !is_null($dam->district_id))
{   echo "
    <input type='checkbox' id='district_id_c' name='district_id_c' value='Cdistrict'  >
    <label for='district_id_c'> None</label><br>";
}else{
    echo "
    <input type='checkbox' id='district_id_c' name='district_id_c' value='Cdistrict' checked >
    <label for='district_id_c'> None</label><br>";
}

?>


<br><br><br><br>



<input type="hidden" name="dam_id" value="<?php echo $dam->dam_id?>" />
<input type="hidden" name="controller" value="dam"/>
<button style="font-size: 15px;" type="submit" name="action" value="read">Back</button>
<button style="font-size: 15px;" type="submit" name="action" value="update">Save</button>

<br><br><br><br><br><br><br><br><br><br>
<button style="font-size: 15px; color:red;" type="submit" name="action" value="deleteConfirm">Delete this Dam [ ID:<?php echo $dam->dam_id?> ]</button>


<!-- </br></br>
<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->