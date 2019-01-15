 <?php
 require "Config.php";
 
 class MySQLHelper{
	 private $HostName;
	 private $DBUser;
	 private $DBPass;
	 private $DBName;
	 private $PDO;
	 
	 public function __construct(){
		 $this->HostName = DB_HOST;
		 $this->DBUser = DB_USER;
		 $this->DBPass = DB_PASS;
		 $this->DBName = DB_NAME;
		 $this->PDO = $this->connect();
	 }
	 
	 public function connect(){
		 try{
			 $conn = new PDO("mysql:host=$this->HostName;dbname=$this->DBName",$this->DBUser,$this->DBPass);
			 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			 $conn->exec("SET character_set_results=utf8");
			 $conn->query("SET NAMES utf8");
			 return $conn;
		 }catch(PDOException $e){
			 die('Lỗi kết nối tới DB: '.$e->getMessage());
		 }
	 }
	 
	 public function callProcedure($pProc, $params = array()){
		$data=null;
			try{
				$sql ="CALL $pProc";
				$stmt = $this->PDO->prepare($sql);
				$stmt->execute($params);
				$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
			}catch(PDOException $e){
				$data['MA_LOI'] = 'ERR';
				$data['THONG_BAO'] = $e->getMessage();
				$data['KET_QUA'] = '';
			}
				return $data;
	 }
 }
 ?>