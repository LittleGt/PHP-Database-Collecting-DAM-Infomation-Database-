
<style>
td {text-align: center; 
    padding-left: 30px;
    padding-right: 30px;}
p {font-size: 30px; text-align: center; }
a {font-size: 20px;}
table {margin: auto;}
*
{
text-align: center ;
margin: auto ;
}
</style>

<head>
    <meta charset="UTF-8">
</head>

<p>รายชื่อเขื่อน</p>
<br>

<label>ค้นหาด้วยชื่อเขื่อน</label>
<br>
<table>
<form style="margin: auto; text-align: center;" method="get" action="">
    <input style="margin: auto;" type="text" name='dam_name'>
    <input style="margin: auto;" type="hidden" name="controller" value="dam"/>
    <button style="margin: auto;" type="submit" name="action" value="search">Search</button>
</form></table>

<br><br>

<table border=1>
    
    <tr style="font-weight: bold; font-size: 25px;"> 
        <td>ชื่อเขื่อน</td>
        <td>ชื่อเดิม</td>
        <td>แม่น้ำ</td>
        <td>ตำบล</td>
        <td>จังหวัด</td>
        <td style="font-size: 20px;">ความจุ (ล้านลบ.ม.) </td>
        <td style="font-size: 20px;">บันทึกปริมาณน้ำ</td>
        
        <td style="font-size: 20px;">แก้ไขข้อมูล</td>
    </tr>
<?php foreach($damList as $dam){
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

    <td>
    <a style='font-size: 18px;' href=?controller=damRec&action=readByDam&dam_id=$dam->dam_id >Check</a>
    </td>
    <td>
    <a style='font-size: 10px; text-align: right; padding-right: 10px;' href=?controller=dam&action=updateForm&dam_id=$dam->dam_id> Edit $dam->dam_name </a>
    </td>


    </tr>
    ";
}
echo "</table>";
?>
</br></br>
<p>
<a style="text-align: center; margin: auto;" href="?controller=dam&action=create">[ Add Dam ]</a>
</p>
</br></br>
<p>
<a style="text-align: center; margin: auto;" href="?controller=home&action=home">[ Back to home ]</a>
</p>

<!-- </br></br>

<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->