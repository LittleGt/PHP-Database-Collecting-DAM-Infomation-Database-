
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

<p>จำนวนเขื่อนตามแต่ละจังหวัด</p>
<br>

<label>ค้นหาจังหวัด</label>
<br>
<form method="get" action="">
    <input type="text" name='province_id'>
    <input type="hidden" name="controller" value="damSum"/>
    <button type="submit" name="action" value="search">
Search</button>
</form><br><br>

<table border=1>
    
    <tr style="font-weight: bold; font-size: 25px;"> 
        <td>จังหวัด</td>
        <td>จำนวนเขื่อน</td>

    </tr>
<?php 

foreach($damSum01List as $l){

    echo "<tr>
    <td>$l->province_name</td>
    <td>$l->count</td>
    </tr>
    ";
}
echo "</table>";
?>
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