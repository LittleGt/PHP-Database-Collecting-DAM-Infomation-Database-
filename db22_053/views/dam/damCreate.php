
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

<p>Adding Dam</p> 
<br><br>
<br>
<form method="get" action="">


<br>
<br>
<label>ชื่อเขื่อน <input type="text" name="dam_name" /> </label><br><br>
<label>ชื่อเดิมเขื่อน <input type="text" name="original_name"/> </label><br><br>
<label>ความจุเขื่อน <input type="number" step="0.001" name="dam_capacity" /> </label><br><br><br>
<label>เช็ค None หากไม่ต้องการใส่</label><br><br>
<label>แม่น้ำ:<select name="river_id">
        <?php foreach($riverList as $d)
        {

            echo "<option value=$d->river_id";
            echo ">$d->river_name</option>";

        }?>
</select></label>
&nbsp;&nbsp;&nbsp;
<input type="checkbox" id="river_id_c" name="river_id_c" value="Criver" checked>
<label for="river_id_c"> None</label><br>

<br><br>
<label>ตำบล:<select name="district_id">
        <?php foreach($districtList as $d)
        {

            echo "<option value=$d->district_id";
            echo ">$d->district_name</option>";

        }?>
</select></label>
&nbsp;&nbsp;&nbsp;
<input type="checkbox" id="district_id_c" name="district_id_c" value="Cdistrict" checked>
<label for="district_id_c"> None</label><br>

<br><br><br><br>

<input type="hidden" name="controller" value="dam"/>
<button style="font-size: 15px;" type="submit" name="action" value="add">Add</button>
<br><br><br><br>
<button style="font-size: 15px;" type="submit" name="action" value="read">Back</button>




<!-- </br></br>
<a href="?controller=quotation&action=create">[ Create Quotation ]</a>
</br></br></br></br></br></br></br></br></br></br>
<a href="?controller=quotation&action=index">[ Quotation Menu ]</a>
</br></br>
<a href="?controller=quotation&action=read">[ Reset table ]</a> -->