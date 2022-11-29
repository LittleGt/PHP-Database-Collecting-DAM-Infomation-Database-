<?php 
    class damRec{ 
    public $dam_id,$dam_record_id,$dam_record_date,$water_amount,$water_out,$dam_name,$original_name,$river_id,$district_id,$dam_capacity,$water_in;

public function __construct($dam_id,$dam_record_id,$dam_record_date,$water_amount,$water_out,$dam_name,$original_name,$river_id,$district_id,$dam_capacity,$water_in){
    $this->dam_id=$dam_id;
    $this->dam_record_id=$dam_record_id;
    $this->dam_record_date=$dam_record_date;
    $this->water_amount=$water_amount;
    $this->water_out=$water_out;
    $this->dam_name=$dam_name;
    $this->original_name=$original_name;
    $this->river_id=$river_id;
    $this->district_id=$district_id;
    $this->dam_capacity=$dam_capacity;
    $this->water_in=$water_in;


}
public static function getAll(){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT * FROM DamRecord NATURAL JOIN Dam"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_id=$my_row['dam_record_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_out=$my_row['water_out']; 
        $water_in=$my_row['water_in']; 

        $damRecList[]=new damRec($dam_id,$dam_record_id,$dam_record_date,$water_amount,$water_out,$dam_name,$original_name,$river_id,$district_id,$dam_capacity,$water_in);
    }
    require("connection_close.php"); 
    return $damRecList;
}

public static function getByDate($key){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT * FROM Dam NATURAL JOIN DamRecord WHERE (DamRecord.dam_record_date like'%$key%')";
    // $sql = "SELECT * FROM DamRecord NATURAL JOIN Dam WHERE (DamRecord.dam_record_date like'%$key%')"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_id=$my_row['dam_record_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_out=$my_row['water_out']; 
        $water_in=$my_row['water_in'];
        
        $water_in = number_format((float)$water_in, 2, '.', '');

        if(is_null($dam_id)){
            return null;
        }

        $damRecList[]=new damRec($dam_id,$dam_record_id,$dam_record_date,$water_amount,$water_out,$dam_name,$original_name,$river_id,$district_id,$dam_capacity,$water_in);
    }
    require("connection_close.php"); 
    return $damRecList;
}

public static function getByDam($key){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT * FROM Dam NATURAL JOIN DamRecord WHERE Dam.dam_id = $key ORDER BY DamRecord.dam_record_date DESC";
    // $sql = "SELECT * FROM DamRecord NATURAL JOIN Dam WHERE (DamRecord.dam_record_date like'%$key%')"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_id=$my_row['dam_record_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_out=$my_row['water_out']; 
        $water_in=$my_row['water_in'];
        
        $water_in = number_format((float)$water_in, 2, '.', '');

        if(is_null($dam_id)){
            return null;
        }

        $damRecList[]=new damRec($dam_id,$dam_record_id,$dam_record_date,$water_amount,$water_out,$dam_name,$original_name,$river_id,$district_id,$dam_capacity,$water_in);
    }
    require("connection_close.php"); 
    return $damRecList;
}

public static function get($key){
    $productList=[]; 
    $damRecList = null;
    require("connection_connect.php"); 
    $sql = "SELECT * FROM Dam NATURAL JOIN DamRecord WHERE (DamRecord.dam_record_id = $key)"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_id=$my_row['dam_record_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $original_name=$my_row['original_name']; 
        $river_id=$my_row['river_id']; 
        $district_id=$my_row['district_id']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_out=$my_row['water_out']; 
        $water_in=$my_row['water_in'];
        
        $water_in = number_format((float)$water_in, 2, '.', '');
        if(is_null($dam_id)){
            print("Something wrong!!, Can't find [".$key."] Data");
            return null;
        }

        $damRecList=new damRec($dam_id,$dam_record_id,$dam_record_date,$water_amount,$water_out,$dam_name,$original_name,$river_id,$district_id,$dam_capacity,$water_in);
    }
    require("connection_close.php"); 
    return $damRecList;
}

public static function update($damRec_id,$date,$dam_id,$water_amount,$water_in,$water_out)
{
    $damRec_id = (int)$damRec_id;
    require("connection_connect.php");
    $sql = "UPDATE DamRecord SET dam_record_date = '$date', dam_id = '$dam_id', water_amount = '$water_amount', water_in = '$water_in', water_out = '$water_out' WHERE dam_record_id = '$damRec_id'";
    $result = $conn->query($sql);
    require("connection_close.php");
    return "update success $result rows";
}
public static function delete($dam_record_id)
{
    $dam_record_id = (int)$dam_record_id;
    require("connection_connect.php");
    $sql = "DELETE FROM DamRecord WHERE dam_record_id = '$dam_record_id'";
    $result = $conn->query($sql);
    require("connection_close.php");
    return "delete success $result rows";
}
public static function add($date,$dam_id,$water_amount,$water_in,$water_out){

    require("connection_connect.php");
    $sql = "INSERT INTO DamRecord (dam_record_date,dam_id,water_amount,water_in,water_out) VALUES ('$date','$dam_id','$water_amount','$water_in','$water_out')";
    $result = $conn->query($sql);
    require("connection_close.php");
    return "add success $result rows";
}


}?>

