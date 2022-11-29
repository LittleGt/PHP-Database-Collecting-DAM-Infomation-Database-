
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

<p>DamRecord Delete</p> 
<br>
<p style='font-size: 20px;'>Record ID = <?php echo $rec->dam_record_id?> </p> 
<br><br>
<br>
<form method="get" action="">

<label for="date">Date:</label>
<input type="date" id="date" name="date" value="<?php echo $rec->dam_record_date?>" style='font-size: 15px;'>

<br>
<br>
<label>เขื่อน:<select name="dam_id">
        <?php foreach($damList as $d)
        {

            echo "<option value=$d->dam_id";
            if($d->dam_id==$rec->dam_id)
            {echo " = selected";}
            echo ">$d->dam_name</option>";

        }?>
</select></label><br><br>
<label>ปริมาณน้ำปัจจุบัน <input type="number" step="0.01" name="water_amount" value="<?php echo $rec->water_amount ?>"/> </label><label>ล้านลบ.ม.</label><br><br>

<label>ปริมาณน้ำไหลเข้า <input type="number" step="0.01" name="water_in" value="<?php echo $rec->water_in ?>"/> </label> <label>ล้านลบ.ม.</label> <br><br>

<label>ปริมาณน้ำไหลออก <input type="number" step="0.01" name="water_out" value="<?php echo $rec->water_out ?>"/> </label><label>ล้านลบ.ม.</label><br><br>

<input type="hidden" name="dam_record_id" value="<?php echo $rec->dam_record_id?>" />
<input type="hidden" name="controller" value="damRec"/>
<button style="font-size: 15px;" type="submit" name="action" value="readByDay">Back</button>
<button style="font-size: 15px;" type="submit" name="action" value="update">Save</button>

<br><br><br><br><br><br><br><br><br><br>
<button style="font-size: 15px; color:red;" type="submit" name="action" value="deleteConfirm">Delete this Record [ ID:<?php echo $rec->dam_record_id?> ]</button>


<!-- </br></br>
<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->