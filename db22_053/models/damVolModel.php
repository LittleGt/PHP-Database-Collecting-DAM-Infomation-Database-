<?php 
    class damVol{ 
    public $dam_id,$dam_record_date,$water_amount,$dam_name,$dam_capacity,$water_Vin,$water_Vout;

public function __construct($dam_id,$dam_record_date,$water_amount,$dam_name,$dam_capacity,$water_Vin,$water_Vout){
    $this->dam_id=$dam_id;
    $this->dam_record_date=$dam_record_date;
    $this->water_amount=$water_amount;
    $this->dam_name=$dam_name;
    $this->dam_capacity=$dam_capacity;
    $this->water_Vin=$water_Vin;
    $this->water_Vout=$water_Vout;

}
public static function getAll(){
    $productList=[]; 
    $damVolList = null;
    require("connection_connect.php"); 
    $sql = "SELECT *,( (((water_in)*1000000)/86400) )as water_Vin,( (((water_out)*1000000)/86400) )as water_Vout FROM DamRecord NATURAL JOIN Dam"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_Vin=$my_row['water_Vin']; 
        $water_Vout=$my_row['water_Vout']; 


        $damVolList[]=new damVol($dam_id,$dam_record_date,$water_amount,$dam_name,$dam_capacity,$water_Vin,$water_Vout);
    }
    require("connection_close.php"); 
    return $damVolList;
}

public static function getByDate($key){
    $productList=[]; 
    $damVolList = null;
    require("connection_connect.php"); 
    $sql = "SELECT *,( (((water_in)*1000000)/86400) )as water_Vin,( (((water_out)*1000000)/86400) )as water_Vout FROM DamRecord NATURAL JOIN Dam WHERE (DamRecord.dam_record_date like'%$key%')";
    // $sql = "SELECT * FROM DamRecord NATURAL JOIN Dam WHERE (DamRecord.dam_record_date like'%$key%')"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_Vin=$my_row['water_Vin']; 
        $water_Vout=$my_row['water_Vout'];
        
        $water_Vin = number_format((float)$water_Vin, 2, '.', '');
        $water_Vout = number_format((float)$water_Vout, 2, '.', '');

        if(is_null($dam_id)){
            return null;
        }

        $damVolList[]=new damVol($dam_id,$dam_record_date,$water_amount,$dam_name,$dam_capacity,$water_Vin,$water_Vout);
    }
    require("connection_close.php"); 
    return $damVolList;
}
public static function getByDam($key){
    $productList=[]; 
    $damVolList = null;
    require("connection_connect.php"); 
    $sql = "SELECT *,( (((water_in)*1000000)/86400) )as water_Vin,( (((water_out)*1000000)/86400) )as water_Vout FROM DamRecord NATURAL JOIN Dam WHERE Dam.dam_id = $key ORDER BY DamRecord.dam_record_date DESC";
    // $sql = "SELECT * FROM DamRecord NATURAL JOIN Dam WHERE (DamRecord.dam_record_date like'%$key%')"; 
    $result = $conn->query($sql); 
    while($my_row=$result->fetch_assoc()){ 
        $dam_id=$my_row['dam_id']; 
        $dam_record_date=$my_row['dam_record_date']; 
        $water_amount=$my_row['water_amount']; 
        $dam_name=$my_row['dam_name']; 
        $dam_capacity=$my_row['dam_capacity']; 
        $water_Vin=$my_row['water_Vin']; 
        $water_Vout=$my_row['water_Vout'];
        
        $water_Vin = number_format((float)$water_Vin, 2, '.', '');
        $water_Vout = number_format((float)$water_Vout, 2, '.', '');

        if(is_null($dam_id)){
            return null;
        }

        $damVolList[]=new damVol($dam_id,$dam_record_date,$water_amount,$dam_name,$dam_capacity,$water_Vin,$water_Vout);
    }
    require("connection_close.php"); 
    return $damVolList;
}


}?>

