<?php
class MySQLHelper{
	private $HostName;
	private $DBUser;
	private $DBPass;
	private $DBName;
	private $PDO;
	
	public function __contruct($pHost, $pUser, $pPass, $PDBName){
		$this->HostName = $pHost;
		$this->DBUser = $pUser;
		$this->DBPass = $pPass;
		$this->DBName = $pDBName;
		$this->PDO = $this->connect();
}
	public function connect(){
		try{
			$conn = new PDO("mysql:host=$this->HostName;dbname=$this->DBName",$thisDBUser,$this->DBPass);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$conn->exect("SET charater_set_sesult=utf8");
			$conn->query("SET NAME utf8");
			return $conn;
		}catch (PDOException $e){
			die('Lỗi kết nối tới Database: ' . $e->getMessage());
        }
    }
	public function callProcedure($pProc, $params = array()){
		$data=null;
		try {
			$sql=" CALL $pProc";
            $stmt = $this->PDO->prepare($sql);
            $stmt->execute($params);
            $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        } catch (PDOException $e) {
            $data['MA_LOI'] = 'ERR';
			$data['THONG_BAO'] = $e->getMessage();
			$data['KET_QUA'] = '';
        }
		return $data;
    }
}
?>