<?php 
    class Province{ 
    public $province_id,$province_name;

public function __construct($province_id,$province_name){ 
    $this->province_id=$province_id;
    $this->province_name=$province_name;


}
public static function getAll(){
    $productList=[]; 
    require("connection_connect.php"); 
    $sql = "SELECT * FROM province"; 
    $result = $conn->query($sql); 


    while($my_row=$result->fetch_assoc()){ 
        $province_id=$my_row['province_id']; 
        $province_name=$my_row['province_name']; 

        $provinceList[]=new Province($province_id,$province_name);
    }
    require("connection_close.php"); 
    return $provinceList;

}

}?>

