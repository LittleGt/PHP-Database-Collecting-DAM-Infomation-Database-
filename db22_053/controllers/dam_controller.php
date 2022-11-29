<?php
class DamController
{

    public function home()
    {
        require_once('views/home/home.php');
    }

    public function read()
    {
        $damList = Dam::getAll();
        require_once('views/dam/dam_view.php');
    }


    public function search()
    {
        $key = $_GET['dam_name'];
        $damList = Dam::search($key);
        require_once('views/dam/dam_view.php');
    }

    public function updateForm()
    {
        $dam_id = $_GET['dam_id'];
        $dam = Dam::get($dam_id);
        $damList = Dam::getAll();
        $districtList = District::getAll();
        $riverList = River::getAll();
        require_once('views/dam/damEdit.php');
    }
    public function update()
    {
        $dam_id =  $_GET['dam_id'];
        $dam_name =  $_GET['dam_name'];
        $original_name =  $_GET['original_name'];
        $river_id =  $_GET['river_id'];
        $district_id =  $_GET['district_id'];
        $dam_capacity =  $_GET['dam_capacity'];
        
        if( $original_name == ''){
            $original_name = NULL;
        }
        if(isset($_GET['river_id_c'])){
            $river_id = NULL;
        }
        if(isset($_GET['district_id_c'])){
            $district_id = NULL;
        }
        Dam::update($dam_id,$dam_name,$original_name,$river_id,$district_id,$dam_capacity);
        DamController::read();
    }
    public function deleteConfirm()
    {
        $dam_id=  $_GET['dam_id'];
        $dam = Dam::get($dam_id);
        
        require_once('views/dam/damDelete.php');

    }
    public function delete()
    {
        $dam_id=  $_GET['dam_id'];
        Dam::delete($dam_id);
        DamController::read();
    }

    public function add()
    {
        $dam_name =  $_GET['dam_name'];
        $original_name =  $_GET['original_name'];
        $river_id =  $_GET['river_id'];
        $district_id =  $_GET['district_id'];
        $dam_capacity =  $_GET['dam_capacity'];
        
        if( $original_name == ''){
            $original_name = NULL;
        }
        if(isset($_GET['river_id_c'])){
            $river_id = NULL;
        }
        if(isset($_GET['district_id_c'])){
            $district_id = NULL;
        }

        Dam::add($dam_name,$original_name,$river_id,$district_id,$dam_capacity);
        DamController::read();
    }
    public function create()
    {
        $damList = Dam::getAll();
        $districtList = District::getAll();
        $riverList = River::getAll();
        
        require_once('views/dam/damCreate.php');
    }
    

}
?>