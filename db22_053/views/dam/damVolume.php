
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

<p>DamVolume</p>
<br>
<!-- 
<label>search by Name</label>
<form method="get" action="">
    <input type="text" name='key'>
    <input type="hidden" name="controller" value="dam"/>

    <button type="submit" name="action" value="search">
Search</button>
</form>
<br> -->
<?php 
if(!is_null($dateNull)){
    echo"<label style='font-size: 20px;'>ไม่พบข้อมูลในวันที่ $dateNull</label>";
}
?>




<br>
<br>
<form method="get" action="" style='font-size: 20px;'>
    <label for="date">Date:</label>
    <input type="date" id="date" name="date" value="<?php echo $date?>" style='font-size: 15px;'>

    <input type="hidden" name="controller" value="damVol"/>
    <button type="submit" name="action" value="readByDay">Search</button>
</form>

<br>
<br>
<p font-size: 20px>บันทึกประจำวันที่ : <?php echo $date?></p><br>
<table border=1>


    
    <tr style="font-weight: bold; font-size: 25px;"> 
        <td>เขื่อน</td>
        <td>ความจุ <br> <label style='font-size: 13px;'>(ล้าน ลบ.ม.)</label> </td>
        <td>ปริมาณน้ำปัจจุบัน <br> <label style='font-size: 13px;'>(ล้าน ลบ.ม.)</label> </td>
        <td>ปริมาตรน้ำไหลเข้า <br> <label style='font-size: 13px;'>(ลบ.ม./วินาที)</label> </td>
        <td>ปริมาตรน้ำไหลออก <br> <label style='font-size: 13px;'>(ลบ.ม./วินาที)</label> </td>

        
    </tr>
<?php foreach($damVolList as $rec){


    foreach ($rec as $key => $value) {
        if ( is_null($value) ) {
            if($key!="original_name"){
                $rec->$key = "-";
            }
             
        }
    }
    echo "
    <tr>
    <td  >
    <a style='font-size: 16px; text-align: left;' href=?controller=damVol&action=readByDam&dam_id=$rec->dam_id >$rec->dam_name</a>
    </td>
    
    <td>$rec->dam_capacity</td>
    <td>$rec->water_amount</td>
    <td>$rec->water_Vin</td>
    <td>$rec->water_Vout</td>


    </tr>
    ";
}
echo "</table>";
?>

</br></br>
<a href="?controller=home&action=home">[ Back to home ]</a>

<!-- </br></br>
<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->