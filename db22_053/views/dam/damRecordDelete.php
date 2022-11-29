
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

<p>DamRecordEdit</p> 
<br>
<p style='font-size: 20px;'>Record ID = <?php echo $rec->dam_record_id?> </p> 
<br><br>
<br>
<form method="get" action="">

<label for="date">Date:</label>
<input type="date" id="date" name="date" value="<?php echo $date?>" style='font-size: 15px;' disabled>
<input type="hidden" name="date" value="<?php echo $date?>"/>
<br>
<br>

<table border=1>


    
    <tr style="font-weight: bold; font-size: 25px;"> 
        <td>เขื่อน</td>
        <td>ความจุ <br> <label style='font-size: 13px;'>(ล้าน ลบ.ม.)</label> </td>
        <td>ปริมาณน้ำปัจจุบัน <br> <label style='font-size: 13px;'>(ล้าน ลบ.ม.)</label> </td>
        <td>ปริมาณน้ำไหลเข้า <br> <label style='font-size: 13px;'>(ล้าน ลบ.ม.)</label> </td>
        <td>ปริมาณน้ำไหลออก <br> <label style='font-size: 13px;'>(ล้าน ลบ.ม.)</label> </td>

    </tr>
<?php 


    echo "
    <tr>
    <td style='text-align: left;'>$rec->dam_name</td>
    <td>$rec->dam_capacity</td>
    <td>$rec->water_amount</td>
    <td>$rec->water_in</td>
    <td>$rec->water_out</td>



    </tr>
    ";

echo "</table>";
?>
</br></br>
<input type="hidden" name="dam_record_id" value="<?php echo $rec->dam_record_id?>" />
<input type="hidden" name="controller" value="damRec"/>
<button style="font-size: 15px;" type="submit" name="action" value="readByDay">Cancel</button>
<br><br><br><br>
<button style="font-size: 15px; color:red;" type="submit" name="action" value="delete">Confirm</button>


<!-- </br></br>
<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->