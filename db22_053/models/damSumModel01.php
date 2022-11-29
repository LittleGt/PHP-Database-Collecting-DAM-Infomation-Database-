<?php 
    class damSum01{ 
    public $count,$province_id,$province_name;

public function __construct($count,$province_id,$province_name){
    $this->count=$count;
    $this->province_id=$province_id;
    $this->province_name=$province_name;



}

public static function countDamByProv(){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT * FROM (SELECT COUNT(dam_id) as count,province_id FROM Dam Right JOIN District ON Dam.district_id = District.district_id NATURAL JOIN Province GROUP BY Province.province_id)as a NATURAL JOIN Province";
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $count=$my_row['count']; 
        $province_id=$my_row['province_id']; 
        $province_name=$my_row['province_name']; 

        $damSum01List[]=new damSum01($count,$province_id,$province_name);
    }
    require("connection_close.php"); 
    return $damSum01List;
}

public static function countDamByProvS($key){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT * FROM (SELECT COUNT(dam_id) as count,province_id FROM Dam Right JOIN District ON Dam.district_id = District.district_id NATURAL JOIN Province GROUP BY Province.province_id)as a NATURAL JOIN Province WHERE (province_name like'%$key%')";
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $count=$my_row['count']; 
        $province_id=$my_row['province_id']; 
        $province_name=$my_row['province_name']; 

        $damSum01List[]=new damSum01($count,$province_id,$province_name);
    }
    require("connection_close.php"); 
    return $damSum01List;
}

}?>

