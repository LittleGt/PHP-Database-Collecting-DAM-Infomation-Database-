<?php
class DamSumController
{

    public function home()
    {
        require_once('views/home/home.php');
    }

    public function read()
    {
        $damSum01List = damSum01::countDamByProv();
        require_once('views/dam/damSum.php');
    }
    
    public function search()
    {
        $key = $_GET['province_id'];
        $damSum01List = damSum01::countDamByProvS($key);
        require_once('views/dam/damSum.php');
    }

}
?>