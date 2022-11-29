<?php
class DamRecController
{

    public function home()
    {
        require_once('views/home/home.php');
    }

    public function read()
    {
        $damRecList = damRec::getAll();
        require_once('views/dam/damRecord.php');
    }

    public function readByDay()
    {
        $dateNull = null;
        $date = $_GET['date'];
        $damRecList = damRec::getByDate($date);
        if(is_null($damRecList)){
            $dateNull =date('m-d-Y',strtotime($date));
            $i=0;
            while(is_null($damRecList)){
                $i=$i+1;
                $date = date( 'Y-m-d',strtotime("-".$i." days") );
                $damRecList = damRec::getByDate($date);
            }
            require_once('views/dam/damRecord.php');
        }
        else{
            
            require_once('views/dam/damRecord.php');
        }
        
    }
    public function readByDam()
    {
        $dam_id = $_GET['dam_id'];
        $damRecList = damRec::getByDam($dam_id);
        require_once('views/dam/damRecordByDam.php');
        
    }


    public function readToday()
    {
        $dateNull = null;
        $date = date('Y-m-d');
        $damRecList = damRec::getByDate($date);
        $i=0;
        while(is_null($damRecList)){
            $i=$i+1;
            $date = date( 'Y-m-d',strtotime("-".$i." days") );
            $damRecList = damRec::getByDate($date);
        }

        require_once('views/dam/damRecord.php');
    }
    public function updateForm()
    {
        $damRec_id = $_GET['damRec_id'];
        $rec = damRec::get($damRec_id);
        $damRecList = damRec::getAll();
        $damList = Dam::getAll();
        require_once('views/dam/damRecordEdit.php');
    }
    public function update()
    {
        $damRec_id =  $_GET['dam_record_id'];
        $date = $_GET['date'];
        $dam_id= $_GET['dam_id'];
        $water_amount =  $_GET['water_amount'];
        $water_in =  $_GET['water_in'];
        $water_out =  $_GET['water_out'];

        damRec::update($damRec_id,$date,$dam_id,$water_amount,$water_in,$water_out);
        DamRecController::readToday();
    }
    public function deleteConfirm()
    {
        $date = $_GET['date'];
        $dam_record_id=  $_GET['dam_record_id'];
        $rec = damRec::get($dam_record_id);
        require_once('views/dam/damRecordDelete.php');

    }
    public function delete()
    {
        $dam_record_id=  $_GET['dam_record_id'];
        damRec::delete($dam_record_id);
        DamRecController::readToday();
    }
    public function add()
    {
        $date = $_GET['date'];
        $dam_id= $_GET['dam_id'];
        $water_amount =  $_GET['water_amount'];
        $water_in =  $_GET['water_in'];
        $water_out =  $_GET['water_out'];
        damRec::add($date,$dam_id,$water_amount,$water_in,$water_out);
        DamRecController::readToday();
    }
    public function create()
    {
        $date = date('Y-m-d');
        $damRecList = damRec::getAll();
        $damList = Dam::getAll();
        require_once('views/dam/damRecordCreate.php');
    }


}
?>