<?php
require '../config/function.php';

$paraResult = checkParamId('id');
if(is_numeric($paraResult)){
    $enquiryId= validate($paraResult);
    $enquiry = getById('enquires',$enquiryId);
    if($enquiry['status'] ==200){
        $enquireDeleteRes = deleteQuery('enquires',$enquiryId);
        if($enquiryDeleteRes){
            redirect('enquiries.php','Enquire Deleted Successfully');

        }else{
            redirect('enquiries.php','Somthing Went Wrong');
        }
    }else{
        redirect('enquiries.php',$enquiry['message']);
    }

}else{
    redirect('enquiries.php',$paraResult);
}

?>