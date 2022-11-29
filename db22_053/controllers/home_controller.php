<?php
class HomeController
{

    public function homePages()
    {
        ob_start();
        $url = 'http://158.108.207.4/db22/db22_050/';  ## แก้ Link ตรงนี้
        while (ob_get_status()) 
        {
            ob_end_clean();
        }
        header( "Location: $url" );
        require_once('local/index.php');
    }


    public function home()
    {
        require_once('views/home/home.php');
    }

    public function error()
    {
        require_once('views/home/error.php');
    }

}
?>