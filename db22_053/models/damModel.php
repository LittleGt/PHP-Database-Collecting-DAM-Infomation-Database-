<?php 
    class Dam{ 
    public $dam_id,$dam_name,$original_name,$river_id,$river_name,$district_id,$district_name,$province_id,$province_name,$dam_capacity,$river_start,$river_finish;

public function __construct($dam_id,$dam_name,$original_name,$river_id,$river_name,$district_id,$district_name,$province_id,$province_name,$dam_capacity,$river_start,$river_finish){ 
    $this->dam_id=$dam_id;
    $this->dam_name=$dam_name;
    $this->original_name=$original_name;
    $this->river_id=$river_id;
    $this->district_id=$district_id;
    $this->dam_capacity=$dam_capacity;

    $this->river_name=$river_name;
    $this->river_start=$river_start;
    $this->river_finish=$river_finish;

    $this->district_name=$district_name;
    $this->province_id=$province_id;

    $this->province_name=$province_name;

}
public static function getAll(){
    $productList=[]; 
    require("connection_connect.php"); 
    $sql = "SELECT dam_id,dam_name,original_name,river_id,river_name,district_id,district_name,A.province_id,province_name,dam_capacity,river_start,river_finish FROM
    ( SELECT dam_id,dam_name,original_name,river_id,river_name,A.district_id,district_name,province_id,dam_capacity,river_start,river_finish
    FROM ( SELECT dam_id,dam_name,original_name,Dam.river_id,river_name,district_id,dam_capacity,river_start,river_finish FROM Dam LEFT JOIN River ON Dam.river_id = River.river_id ) as A LEFT JOIN District ON A.district_id = District.district_id ) as A LEFT JOIN Province ON Province.province_id = A.province_id ORDER BY dam_name"; 
    $result = $conn->query($sql); 


    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 

        $river_name=$my_row['river_name']; 
        $river_start=$my_row['river_start']; 
        $river_finish=$my_row['river_finish']; 

        $district_name=$my_row['district_name']; 
        $province_id=$my_row['province_id']; 

        $province_name=$my_row['province_name']; 


        $damList[]=new Dam($dam_id,$dam_name,$original_name,$river_id,$river_name,$district_id,$district_name,$province_id,$province_name,$dam_capacity,$river_start,$river_finish);
    }
    require("connection_close.php"); 
    return $damList;

}
public static function search($key){
    $productList=[]; 
    require("connection_connect.php"); 
    $sql = "SELECT dam_id,dam_name,original_name,river_id,river_name,district_id,district_name,A.province_id,province_name,dam_capacity,river_start,river_finish FROM
    ( SELECT dam_id,dam_name,original_name,river_id,river_name,A.district_id,district_name,province_id,dam_capacity,river_start,river_finish
    FROM ( SELECT dam_id,dam_name,original_name,Dam.river_id,river_name,district_id,dam_capacity,river_start,river_finish FROM Dam LEFT JOIN River ON Dam.river_id = River.river_id ) as A LEFT JOIN District ON A.district_id = District.district_id ) as A LEFT JOIN Province ON Province.province_id = A.province_id WHERE (dam_name like'%$key%') ORDER BY dam_name"; 
    $result = $conn->query($sql); 


    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 

        $river_name=$my_row['river_name']; 
        $river_start=$my_row['river_start']; 
        $river_finish=$my_row['river_finish']; 

        $district_name=$my_row['district_name']; 
        $province_id=$my_row['province_id']; 

        $province_name=$my_row['province_name']; 


        $damList[]=new Dam($dam_id,$dam_name,$original_name,$river_id,$river_name,$district_id,$district_name,$province_id,$province_name,$dam_capacity,$river_start,$river_finish);
    }
    require("connection_close.php"); 
    return $damList;

}
public static function get($key){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT dam_id,dam_name,original_name,river_id,river_name,district_id,district_name,A.province_id,province_name,dam_capacity,river_start,river_finish FROM ( SELECT dam_id,dam_name,original_name,river_id,river_name,A.district_id,district_name,province_id,dam_capacity,river_start,river_finish FROM ( SELECT dam_id,dam_name,original_name,Dam.river_id,river_name,district_id,dam_capacity,river_start,river_finish FROM Dam LEFT JOIN River ON Dam.river_id = River.river_id ) as A LEFT JOIN District ON A.district_id = District.district_id ) as A LEFT JOIN Province ON Province.province_id = A.province_id WHERE dam_id = $key"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 

        $river_name=$my_row['river_name']; 
        $river_start=$my_row['river_start']; 
        $river_finish=$my_row['river_finish']; 

        $district_name=$my_row['district_name']; 
        $province_id=$my_row['province_id']; 

        $province_name=$my_row['province_name']; 


        $damList=new Dam($dam_id,$dam_name,$original_name,$river_id,$river_name,$district_id,$district_name,$province_id,$province_name,$dam_capacity,$river_start,$river_finish);
    }
    require("connection_close.php"); 
    return $damList;
}
public static function update($dam_id,$dam_name,$original_name,$river_id,$district_id,$dam_capacity)
{  
    $dam_id = (int)$dam_id;
    require("connection_connect.php");
    
    
    if( !(is_null($original_name) or is_null($district_id) or is_null($river_id)) ){
        $sql = "UPDATE Dam SET dam_name = '$dam_name', original_name = '$original_name', river_id = '$river_id', district_id = '$district_id', dam_capacity = '$dam_capacity' WHERE dam_id = '$dam_id'";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "update success $result rows";
    }else
    {
        if(is_null($original_name)){
            $sql = "UPDATE Dam SET original_name = NULL WHERE dam_id = '$dam_id'";
            $result = $conn->query($sql);
        }else{
            $sql = "UPDATE Dam SET original_name = '$original_name' WHERE dam_id = '$dam_id'";
            $result = $conn->query($sql);
        }
        if(is_null($river_id)){
            $sql = "UPDATE Dam SET river_id = NULL WHERE dam_id = '$dam_id'";
            $result = $conn->query($sql);
        }else{
            $sql = "UPDATE Dam SET river_id = '$river_id' WHERE dam_id = '$dam_id'";
            $result = $conn->query($sql);
        }
        if(is_null($district_id)){
            $sql = "UPDATE Dam SET district_id = NULL WHERE dam_id = '$dam_id'";
            $result = $conn->query($sql);
        }else{
            $sql = "UPDATE Dam SET district_id = '$district_id' WHERE dam_id = '$dam_id'";
            $result = $conn->query($sql);
        }

        $sql = "UPDATE Dam SET dam_name = '$dam_name', dam_capacity = '$dam_capacity' WHERE dam_id = '$dam_id'";
        $result = $conn->query($sql);
    }
    require("connection_close.php");
    return "update success $result rows";
    
}
public static function delete($dam_id)
{
    $dam_id = (int)$dam_id;
    require("connection_connect.php");
    $sql = "DELETE FROM Dam WHERE dam_id = '$dam_id'";
    $result = $conn->query($sql);
    require("connection_close.php");
    return "delete success $result rows";
}
public static function add($dam_name,$original_name,$river_id,$district_id,$dam_capacity){

    require("connection_connect.php");
    
    if( !(is_null($original_name) or is_null($district_id) or is_null($river_id)) ){
        $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name','$original_name','$river_id','$district_id','$dam_capacity')";

    }else
    {
        if( is_null($original_name) and is_null($district_id) and is_null($river_id) ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name',NULL,NULL,NULL,'$dam_capacity')";
        }
        elseif( is_null($original_name) and is_null($district_id)  ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name',NULL,'$river_id',NULL,'$dam_capacity')";
        }
        elseif( is_null($original_name) and is_null($river_id)  ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name',NULL,NULL,'$district_id','$dam_capacity')";
        }
        elseif( is_null($river_id) and is_null($district_id)  ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name','$original_name',NULL,NULL,'$dam_capacity')";
        }
        elseif( is_null($district_id)  ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name','$original_name','$river_id',NULL,'$dam_capacity')";
        }
        elseif( is_null($river_id)  ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name','$original_name',NULL,'$district_id','$dam_capacity')";
        }
        elseif( is_null($original_name)  ){
            $sql = "INSERT INTO Dam (dam_name,original_name,river_id,district_id,dam_capacity) VALUES ('$dam_name',NULL,'$river_id','$district_id','$dam_capacity')";
        }
        
        
    }

    $result = $conn->query($sql);
    require("connection_close.php");
    return "add success $result rows";
}

}?>

