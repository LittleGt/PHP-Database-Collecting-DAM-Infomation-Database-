<?php $controllers = array(
    'home'=>['home','error','homePages'],
    'dam'=>['home','read','updateForm','update','delete','deleteConfirm','create','add','search'],
    'damRec'=>['home','read','readByDay','readToday','updateForm','update','delete','deleteConfirm','create','add','readByDam'],
    'damVol'=>['home','read','readByDay','readToday','readByDam'],
    'damSum'=>['home','read','search'],

); 



function call($controller,$action){
    require_once("controllers/".$controller."_controller.php");
    switch($controller)
    {
        case "home": $controller = new HomeController();
        break;
        case "dam": 
            require_once("models/damModel.php");
            require_once("models/riverModel.php");
            require_once("models/districtModel.php");
            $controller = new DamController();
            break;
        case "damRec": 
            require_once("models/damRecordModel.php");
            require_once("models/damModel.php");
            $controller = new DamRecController();
            break;
        case "damVol": 
            require_once("models/damVolModel.php");
            $controller = new DamVolController();
            break;
        case "damSum": 
            require_once("models/damSumModel01.php");
            $controller = new DamSumController();
            break;
    }
    $controller->{$action}();

    }
    if(array_key_exists($controller,$controllers))
    {  if(in_array($action,$controllers[$controller]))
        {   call($controller,$action);  }
        else
        {   call('home','error');  }
    }
    else
    {   call('home','error');  }
    ?>