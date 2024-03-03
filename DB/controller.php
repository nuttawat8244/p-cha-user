<?php 

class Controller{
    private $db;

    function __construct($pdo){
        $this->db = $pdo;
        
    }

    function showdata($section){
        try{ 
            $sql = "SELECT * FROM job WHERE section = '$section' ORDER BY ID DESC ";
            $result = $this->db->query($sql);
            return $result;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }

    function showdata_sub($Subject){
        try{ 
            $sql = "SELECT * FROM job_sub WHERE Subject = '$Subject' ORDER BY ID DESC ";
            $result = $this->db->query($sql);
            return $result;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }

    function finish_sub($all,$count,$Subject){
        try{ 
            $sql = "UPDATE job_sub SET Finish = 'Y' WHERE ID in ($all)";
            $result = $this->db->query($sql);

            $sql_sub = "SELECT Sub FROM job WHERE Subject = '$Subject';";
            $stmt = $this->db->query($sql_sub);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            $Sub = $result['Sub'];

            $update = "UPDATE job SET Sub = $Sub-$count WHERE Subject = '$Subject'";
            $finish = $this->db->query($update);
            return true;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }

    function selectjobname($section){
        try{
            $sql = "SELECT DISTINCT `Subject` FROM job where Section = '$section'; ";
            $result = $this->db->query($sql);
            return $result;  

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }

    function Addjob($Date, $Subject, $Problem, $Requirement, $Request_by, $Receive, $Finish, $Sub, $Department, $Section){
        try{
                       date_default_timezone_set('Asia/Bangkok');
            $year = date('y');
            $month = date('m');

            $run = "SELECT * FROM job order by ID DESC";
            $result_run = $this->db->query($run);
            $row = $result_run->fetch(PDO::FETCH_ASSOC);
            $N = $row['ID'];
            //echo $N ;
            $test0 = substr($N,7,7);
            $test = substr($N,6,7);
            $test1 = substr($N,5,7);
            //echo $test1;
        
            
            $numrow = "SELECT COUNT(*) as num FROM job; ";
            
            $result = $this->db->query($numrow);
            $row = $result->fetch(PDO::FETCH_ASSOC);
            $row_no =  intval($row["num"])+1;
            $length = strlen($row_no);
            // echo $length;
            $req = $row_no;
            if($length == 1){
                $no = intval($test0)+1;
                $req = "00".$row_no;
            }
            else if($length == 2){
    
                $no = intval($test)+1;
                $req = "0".$no;
                //echo $req ;
            }else{
                $no = intval($test1)+1;
                $req = $no;
            }

    $run_no = "A$year$month".$req;

            
            // $sql = "INSERT INTO job (ID, Date, Subject, Problem, Requirement, Request_by, Receive, Finish, Sub, Department, Section )
            //                 VALUES (:ID, :Date, :Subject, :Problem, :Requirement, :Request_by, :Receive,:Finish, :Sub, :Department ,:Section )";
            // $stmt = $this->db->prepare($sql);
            // $stmt->bindParam(":ID",$run_no);
            // $stmt->bindParam(":Date",$Date);
            // $stmt->bindParam(":Subject",$Subject);
            // $stmt->bindParam(":Problem",$Problem);
            // $stmt->bindParam(":Requirement",$Requirement);
            // $stmt->bindParam(":Request_by",$Request_by);
            // $stmt->bindParam(":Sub",$Sub);
            // $stmt->bindParam(":Receive",$Receive);
            // $stmt->bindParam(":Finish",$Finish);
            // $stmt->bindParam(":Department",$Department);
            // $stmt->bindParam(":Section",$Section);
            // $stmt->execute();

            $sql = "INSERT INTO `job` (`ID`, `Date`, `Subject`, `Problem`, `Requirement`, `Request_by`, `Receive`, `Finish`, `Sub`, `Department`, `Section` )
                            VALUES ('$run_no', '$Date', '$Subject', '$Problem', '$Requirement', '$Request_by', '$Receive','$Finish', '$Sub', '$Department' ,'$Section' )";
            $result = $this->db->query($sql);            
            return true;

        }catch(PDOException $e){
            $e->getMessage();
            return false;
        }
    }

    function countJob($section){
        try{
            $sql = "SELECT COUNT(*) AS NUM FROM job WHERE Section = '$section' AND Finish = 'N' group by section;";
            $stmt = $this->db->query($sql);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            $row = $result['NUM'];
            return $row;

        }catch(PDOException $e){
            $e->getMessage();
            return false;
        }

    }


    function Addsub($Date, $Subject, $Problem, $Requirement, $Request_by, $Receive, $Finish, $Department, $Section){
        try{
            $sql = "INSERT INTO `job_sub` (`Date`, `Subject`, `Problem`, `Requirement`, `Request_by`, `Receive`, `Finish`, `Department`, `Section`)
                            VALUES (:Date, :Subject, :Problem, :Requirement, :Request_by, :Receive,:Finish, :Department ,:Section )";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(":Date",$Date);
            $stmt->bindParam(":Subject",$Subject);
            $stmt->bindParam(":Problem",$Problem);
            $stmt->bindParam(":Requirement",$Requirement);
            $stmt->bindParam(":Request_by",$Request_by);
            $stmt->bindParam(":Receive",$Receive);
            $stmt->bindParam(":Finish",$Finish);
            $stmt->bindParam(":Department",$Department);
            $stmt->bindParam(":Section",$Section);
            $stmt->execute();

            $sql_sub = "SELECT `Sub` FROM `job` WHERE Subject = '$Subject';";
            $stmt = $this->db->query($sql_sub);
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            $Sub = $result['Sub'];

            $update = "UPDATE `job` SET `Sub` = $Sub+1 WHERE Subject = '$Subject'";
            $update_sub = $this->db->query($update);
            return true;

        }catch(PDOException $e){
            $e->getMessage();
            return false;
        }
    }


    function countjob_sub($Section){
        try{
            $sql = "SELECT COUNT(*) AS num FROM job_sub WHERE Finish = 'N' AND Section = '$Section' GROUP BY Finish;";
            $result = $this->db->query($sql);
            $row = $result->fetch(PDO::FETCH_ASSOC);
            $count = $row['num'];
            return $count;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }


    function showdata_receive($Subject, $Section){
        try{
            $sql = "SELECT * FROM job WHERE Subject = :Subject AND Section = :Section";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(":Subject",$Subject);
            $stmt->bindParam(":Section",$Section);
            $stmt->execute();
            return $stmt;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }

    }

    function showdata_receive_sub($Subject, $Section){
        try{
            $sql = "SELECT * FROM job_sub WHERE Subject = :Subject AND Section = :Section";
            $stmt = $this->db->prepare($sql);
            $stmt->bindParam(":Subject",$Subject);
            $stmt->bindParam(":Section",$Section);
            $stmt->execute();
            return $stmt;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }

    }

    function recieve_job($all){
        try{ 
            $sql = "UPDATE `job` SET `Receive` = 'Y' WHERE ID in ($all)";
            $result = $this->db->query($sql);
            return true;

        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }

    function receive_jobsub($all,$count,$Subject){
        try{ 
            $sql = "UPDATE job_sub SET Receive = 'Y' WHERE ID in ($all)";
            $result = $this->db->query($sql);

            // $sql_sub = "SELECT Sub FROM job WHERE Subject = '$Subject';";
            // $stmt = $this->db->query($sql_sub);
            // $result = $stmt->fetch(PDO::FETCH_ASSOC);
            // $Sub = $result['Sub'];

            // $update = "UPDATE job SET Sub = $Sub-$count WHERE Subject = '$Subject'";
            // $finish = $this->db->query($update);
            return true;



        }catch(PDOException $e){
            $e->getMessage();
            return false;

        }
    }
    
    function showdata_id($ID){
        try{
            $sql = "SELECT * FROM job WHERE ID = '$ID'";
            $result = $this->db->query($sql);
            return $result;

        }catch(PDOException $e){
          $e->getMessage();
          return false;

        }

  }
   


}
?>
