<?php 
    class District{ 
    public $district_id,$district_name,$province_id;

public function __construct($district_id,$district_name,$province_id){ 
    $this->district_id=$district_id;
    $this->district_name=$district_name;
    $this->province_id=$province_id;


}
public static function getAll(){
    $productList=[]; 
    require("connection_connect.php"); 
    $sql = "SELECT * FROM District"; 
    $result = $conn->query($sql); 


    while($my_row=$result->fetch_assoc()){ 
        $district_id=$my_row['district_id']; 
        $district_name=$my_row['district_name']; 
        $province_id=$my_row['province_id']; 



        $districtList[]=new District($district_id,$district_name,$province_id);
    }
    require("connection_close.php"); 
    return $districtList;

}

}?>

