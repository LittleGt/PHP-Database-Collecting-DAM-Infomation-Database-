
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

<p>Dam Delete</p> 
<br>
<p style='font-size: 20px;'>Dam ID = <?php echo $dam->dam_id?> </p> 
<br><br>
<br>
<form method="get" action="">


<br>
<br>

<table border=1>


    
    <tr style="font-weight: bold; font-size: 25px;"> 
        <td>ชื่อเขื่อน</td>
        <td>ชื่อเดิม</td>
        <td>แม่น้ำ</td>
        <td>ตำบล</td>
        <td>จังหวัด</td>
        <td style="font-size: 20px;">ความจุ (ล้านลบ.ม.) </td>

    </tr>
<?php 

    foreach ($dam as $key => $value) {
        if ( is_null($value) ) {
            if($key!="original_name"){
                $dam->$key = "-";
            }
            
        }
    }
    echo "
    <tr>
    <td style='text-align: left;'>$dam->dam_name</td>
    <td>$dam->original_name</td>
    <td>$dam->river_name</td>
    <td>$dam->district_name</td>
    <td>$dam->province_name</td>
    <td style='text-align: left;'>$dam->dam_capacity</td>
    </tr>
    ";

echo "</table>";
?>
</br></br>
<input type="hidden" name="dam_id" value="<?php echo $dam->dam_id?>" />
<input type="hidden" name="controller" value="dam"/>
<button style="font-size: 15px;" type="submit" name="action" value="read">Cancel</button>
<br><br><br><br>
<button style="font-size: 15px; color:red;" type="submit" name="action" value="delete">Confirm</button>


<!-- </br></br>
<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->