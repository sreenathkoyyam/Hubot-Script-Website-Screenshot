<?php
/* 
 * Sreenath K
 * sreenath886@gmail.com
 * https://www.facebook.com/sreenath.koyyam
 */

    // $searchkey=$_REQUEST['SearchKey'];
$searchkey='runscope';

  
 $db_name="feedback_db"; 
//$tbl_name="piechart"; 
	$conn = mysql_connect("localhost", "root", "") or die (mysql_error ());
	$db = mysql_select_db ("$db_name") or die (mysql_error ());
  // ==========================================================
    // sreenath886@gmail.com:get screenshot urls
    // ============================================================
 function get_gostinspector_snipped_url_details($searchkey) {
        
        
            
        $query = mysql_query("select * from hubot_gostinspector_urls b where  b.hubot_searchkey='" . $searchkey . "' ");
        //print_r($query);
        $i = 0;
        $data=array();
        while ($row = mysql_fetch_array($query)) {
            $data[$i]['hubot_snipping_id'] = $row['hubot_snipping_id'];
            $data[$i]['hubot_searchkey'] = $row['hubot_searchkey'];
            $data[$i]['hubot_gostinspector_test_url'] = $row['hubot_gostinspector_test_url'];
            $data[$i]['site_description'] = $row['site_description'];
            $data[$i]['is_active'] = $row['is_active'];
            $data[$i]['created_on'] = $row['created_on'];
            $data[$i]['updated_on'] = $row['updated_on'];

            $i++;
        }
       // print_r($data[0]);
        return $data;
        
        
        
        
    }
    
        

$result = get_gostinspector_snipped_url_details($searchkey);

if(count($result)>0)
{
    

$ApiKey = $result[0]["hubot_gostinspector_test_url"];
$description = $result[0]["site_description"];
$json_string = file_get_contents($ApiKey);
$parsed_json = json_decode($json_string);

// print_r($parsed_json->data->screenshot->original->defaultUrl);
$img_url=$parsed_json->data->screenshot->original->defaultUrl;

    $retval = array( 'status_value' => 1,'status_text' => $description,'Screeshot_url'=>$img_url);
}
 else {
   // $c2='{"color":"red","message":"Screenshot Key Word is not Exist In Our Database","notify":false,"message_format":"text"}';
    $retval = array( 'status_value' => 0,'status_text' => 'Screenshot Key Word is not Exist In Our Database','Screeshot_url'=>'Unable To Show');
}

print(json_encode($retval));


/* 
 * Sreenath K
 * sreenath886@gmail.com
 * https://www.facebook.com/sreenath.koyyam
 */
    
  ?>