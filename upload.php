<?php 
    if (isset($_POST['upload'])) {
        // require_once 'DB/connnect.php';
        //  //สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ใหม่
        // $date1 = date("Ymd_His");
        // //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
        // $numrand = (mt_rand());
        $file_name = $_POST['file_name'];
        $img_file = (isset($_POST['img_file']) ? $_POST['img_file'] : '');
        $upload=$_FILES['img_file']['name'];
     
        //มีการอัพโหลดไฟล์
        if($upload !='') {
        //ตัดขื่อเอาเฉพาะนามสกุล
        $typefile = strrchr($_FILES['img_file']['name'],".");
     
        //สร้างเงื่อนไขตรวจสอบนามสกุลของไฟล์ที่อัพโหลดเข้ามา
        if($typefile =='.jpg' || $typefile  =='.jpeg' || $typefile  =='.png'){


    
        
     
        //โฟลเดอร์ที่เก็บไฟล์
        $path ="//xnas300/eDocument/Computer/Project-Upload/CAPTURE-PROGRAM/";
        $path_img_upload = "img_upload/";
        $path_img_upload_admin = "../p-cha-admin/img_upload/";
        
        $newname = $file_name.$typefile;

        $path_copy=$path.$newname;
        $path_upload = $path_img_upload.$newname;
        $path_upload_cha = $path_img_upload_admin.$newname;

        //คัดลอกไฟล์ไปยังโฟลเดอร์
        move_uploaded_file($_FILES['img_file']['tmp_name'],$path_copy);
        
        if (copy($path_copy, $path_upload)){
            copy($path_copy, $path_upload_cha);
             $_SESSION['true'] = 'Upload success';
             require_once "swithalert.php";
        }
    
     
        }
     } //isset
    }

    if (isset($_POST['upload2'])) {
        // require_once 'DB/connnect.php';
        //  //สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ใหม่
        // $date1 = date("Ymd_His");
        // //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
        // $numrand = (mt_rand());
        $file_name = $_POST['file_name']."-2";
        $img_file = (isset($_POST['img_file']) ? $_POST['img_file'] : '');
        $upload=$_FILES['img_file']['name'];
     
        //มีการอัพโหลดไฟล์
        if($upload !='') {
        //ตัดขื่อเอาเฉพาะนามสกุล
        $typefile = strrchr($_FILES['img_file']['name'],".");
     
        //สร้างเงื่อนไขตรวจสอบนามสกุลของไฟล์ที่อัพโหลดเข้ามา
        if($typefile =='.jpg' || $typefile  =='.jpeg' || $typefile  =='.png'){


    
        
     
        //โฟลเดอร์ที่เก็บไฟล์
        $path ="//xnas300/eDocument/Computer/Project-Upload/CAPTURE-PROGRAM/";
        $path_img_upload = "img_upload/";
        $path_img_upload_admin = "../p-cha-admin/img_upload/";
        
        $newname = $file_name.$typefile;

        $path_copy=$path.$newname;
        $path_upload = $path_img_upload.$newname;
        $path_upload_cha = $path_img_upload_admin.$newname;

        //คัดลอกไฟล์ไปยังโฟลเดอร์
        move_uploaded_file($_FILES['img_file']['tmp_name'],$path_copy);
        
        if (copy($path_copy, $path_upload)){
            copy($path_copy, $path_upload_cha);
             $_SESSION['true'] = 'Upload success';
             require_once "swithalert.php";
        }
    
     
        }
     } //isset
    }

    if (isset($_POST['upload_sub'])) {
        // require_once 'DB/connnect.php';
        //  //สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ใหม่
        // $date1 = date("Ymd_His");
        // //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
        // $numrand = (mt_rand());
        $file_name = $_POST['ID'];
        $img_file = (isset($_POST['img_file']) ? $_POST['img_file'] : '');
        $upload=$_FILES['img_file']['name'];
     
        //มีการอัพโหลดไฟล์
        if($upload !='') {
        //ตัดขื่อเอาเฉพาะนามสกุล
        $typefile = strrchr($_FILES['img_file']['name'],".");
     
        //สร้างเงื่อนไขตรวจสอบนามสกุลของไฟล์ที่อัพโหลดเข้ามา
        if($typefile =='.jpg' || $typefile  =='.jpeg' || $typefile  =='.png'){


    
        
     
        //โฟลเดอร์ที่เก็บไฟล์
        $path ="//xnas300/eDocument/Computer/Project-Upload/CAPTURE-PROGRAM-SUB/";
        $path_img_upload = "img_upload_sub/";
        $path_img_upload_admin = "../p-cha-admin/img_upload_sub/";
        
        $newname = $file_name.$typefile;

        $path_copy=$path.$newname;
        $path_upload = $path_img_upload.$newname;
        $path_upload_cha = $path_img_upload_admin.$newname;

        //คัดลอกไฟล์ไปยังโฟลเดอร์
        // move_uploaded_file($_FILES['img_file']['tmp_name'],$path_copy);
        if (move_uploaded_file($_FILES['img_file']['tmp_name'], $path_copy)) {
            echo "Upload successful!";
        } else {
            echo "Error uploading file. Please check your upload settings or try again.";
        }
        
        if (copy($path_copy, $path_upload)){
            copy($path_copy, $path_upload_cha);
             $_SESSION['true'] = 'Upload success';
             require_once "swithalert.php";
        }
    
     
         //ประกาศตัวแปรรับค่าจากฟอร์ม
        // $img_name = $_POST['img_name'];
        
        // //sql insert
        // $stmt = $conn->prepare("INSERT INTO tbl_uploads (img_name, img_file)
        // VALUES (:img_name, '$newname')");
        // $stmt->bindParam(':img_name', $img_name, PDO::PARAM_STR);
        // $result = $stmt->execute();
        }
     } //isset
    }



    if (isset($_POST['upload_sub2'])) {
        // require_once 'DB/connnect.php';
        //  //สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ใหม่
        // $date1 = date("Ymd_His");
        // //สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
        // $numrand = (mt_rand());
        $file_name = $_POST['ID']."-2";
        $img_file = (isset($_POST['img_file']) ? $_POST['img_file'] : '');
        $upload=$_FILES['img_file']['name'];
     
        //มีการอัพโหลดไฟล์
        if($upload !='') {
        //ตัดขื่อเอาเฉพาะนามสกุล
        $typefile = strrchr($_FILES['img_file']['name'],".");
     
        //สร้างเงื่อนไขตรวจสอบนามสกุลของไฟล์ที่อัพโหลดเข้ามา
        if($typefile =='.jpg' || $typefile  =='.jpeg' || $typefile  =='.png'){


    
        
     
        //โฟลเดอร์ที่เก็บไฟล์
        $path ="//xnas300/eDocument/Computer/Project-Upload/CAPTURE-PROGRAM-SUB/";
        $path_img_upload = "img_upload_sub/";
        $path_img_upload_admin = "../p-cha-admin/img_upload_sub/";
        
        $newname = $file_name.$typefile;

        $path_copy=$path.$newname;
        $path_upload = $path_img_upload.$newname;
        $path_upload_cha = $path_img_upload_admin.$newname;

        //คัดลอกไฟล์ไปยังโฟลเดอร์
        move_uploaded_file($_FILES['img_file']['tmp_name'],$path_copy);
        
        if (copy($path_copy, $path_upload)){
            copy($path_copy, $path_upload_cha);
             $_SESSION['true'] = 'Upload success';
             require_once "swithalert.php";
        }
    
     
         //ประกาศตัวแปรรับค่าจากฟอร์ม
        // $img_name = $_POST['img_name'];
        
        // //sql insert
        // $stmt = $conn->prepare("INSERT INTO tbl_uploads (img_name, img_file)
        // VALUES (:img_name, '$newname')");
        // $stmt->bindParam(':img_name', $img_name, PDO::PARAM_STR);
        // $result = $stmt->execute();
        }
     } //isset
    }
?>