<?php 
    class River{ 
    public $river_id,$river_name,$river_start,$river_finish;

public function __construct($river_id,$river_name,$river_start,$river_finish){ 
    $this->river_id=$river_id;
    $this->river_name=$river_name;
    $this->river_start=$river_start;
    $this->river_finish=$river_finish;


}
public static function getAll(){
    $productList=[]; 
    require("connection_connect.php"); 
    $sql = "SELECT * FROM River"; 
    $result = $conn->query($sql); 


    while($my_row=$result->fetch_assoc()){ 
        $river_id=$my_row['river_id']; 
        $river_name=$my_row['river_name']; 
        $river_start=$my_row['river_start']; 
        $river_finish=$my_row['river_finish']; 



        $riverList[]=new River($river_id,$river_name,$river_start,$river_finish);
    }
    require("connection_close.php"); 
    return $riverList;

}

}?>

