<?php
class DamVolController
{

    public function home()
    {
        require_once('views/home/home.php');
    }

    public function read()
    {
        $damVolList = damRec::getAll();
        require_once('views/dam/damVolume.php');
    }

    public function readByDay()
    {
        $dateNull = null;
        $date = $_GET['date'];
        $damVolList = damVol::getByDate($date);
        if(is_null($damVolList)){
            $dateNull =date('m-d-Y',strtotime($date));
            $i=0;
            while(is_null($damVolList)){
                $i=$i+1;
                $date = date( 'Y-m-d',strtotime("-".$i." days") );
                $damVolList = damVol::getByDate($date);
            }
            require_once('views/dam/damVolume.php');
        }
        else{
            
            require_once('views/dam/damVolume.php');
        }
        
    }
    public function readToday()
    {
        $dateNull = null;
        $date = date('Y-m-d');
        $damVolList = damVol::getByDate($date);
        $i=0;
        while(is_null($damVolList)){
            $i=$i+1;
            $date = date( 'Y-m-d',strtotime("-".$i." days") );
            $damVolList = damVol::getByDate($date);
        }

        require_once('views/dam/damVolume.php');
    }
    public function readByDam()
    {
        $dam_id = $_GET['dam_id'];
        $damVolList = damVol::getByDam($dam_id);
        require_once('views/dam/damVolumeByDam.php');
        
    }



    


}
?>